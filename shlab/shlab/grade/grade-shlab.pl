#!/usr/bin/perl 
#!/usr/local/bin/perl 
use Getopt::Std;

######################################################################
# Configuration file for the Shell Lab autograders
#
# Copyright (c) 2002, R. Bryant and D. O'Hallaron, All rights reserved.
# May not be used, modified, or copied without permission.
######################################################################

# What is the name of this Lab?
$LABNAME = "shlab";

# What are the tracefiles in SRCDIR that we should use for testing
@TRACEFILES = ("trace01.txt", "trace02.txt", "trace03.txt",
	       "trace04.txt", "trace05.txt", "trace06.txt",
	       "trace07.txt", "trace08.txt", "trace09.txt",
	       "trace10.txt", "trace11.txt", "trace12.txt",
	       "trace13.txt", "trace14.txt", "trace15.txt",
	       "trace16.txt");

# How many correctness points per trace file?
$POINTS = 5;

# What is the max number of style points?
$MAXSTYLE = 10;

# Where are the source files and tracefiles for the driver?
# Override with -s (grade-shlab.pl and grade-handins.pl)
$SRCDIR = "../src";

# Where is the handin directory?
# Override with -d (grade-handins.pl)
$HANDINDIR = "./handin";




#########################################################################
# grade-shlab.pl - Shell lab autograder 
#
# Copyright (c) 2002, R. Bryant and D. O'Hallaron, All rights reserved.
# May not be used, modified, or copied without permission.
#
# This program develops an initial grade for a shell lab solution by 
# comparing its output to the output from a reference shell. The 
# comparison is not perfect, so the output needs to be checked by hand.
#
########################################################################

# autoflush output on every print statement
$| = 1; 

# Any tmp files created by this script are readable only by the user
umask(0077); 

#
# usage - print help message and terminate
#
sub usage {
    printf STDERR "$_[0]\n";
    printf STDERR "Usage: $0 [-he] -f <pathname> [-s <srcdir>]\n";
    printf STDERR "Options:\n";
    printf STDERR "  -h          Print this message\n";
    printf STDERR "  -e          Don't include original handin file on the grade sheet\n";
    printf STDERR "  -f <file>   Input tsh.c file to test\n";
    printf STDERR "  -s <srcdir> Directory where driver source code is located\n";
    die "\n";
}

##############
# Main routine
##############

# 
# Parse the command line arguments
#
getopts('hef:s:');
if ($opt_h) {
    usage();
}
if (!$opt_f) {
    usage("Missing required argument (-f)");
}

# 
# These optional flags override defaults in config.pm
#
if ($opt_s) {         # driver src directory
    $SRCDIR = $opt_s;
}

# 
# Initialize various file and path names
#
$infile = $opt_f;                            # src file to test
($infile_basename = $infile) =~ s#.*/##s;    # basename of input file
$tmpdir = "/tmp/$infile_basename.$$";        # scratch directory
$0 =~ s#.*/##s;                              # $0 is this program's basename

# 
# This is a message we use in several places when the program dies
#
$diemsg = "The files are in $tmpdir.";

# 
# Make sure the src directory exists
#
(-d $SRCDIR and -e $SRCDIR) 
    or die "$0: ERROR: Can't access source directory $SRCDIR.\n";

# 
# Make sure the input file exists and is readable
#
open(INFILE, $infile) 
    or die "$0: ERROR: couldn't open file $infile\n";
close(INFILE);

# 
# Set up the contents of the scratch directory
#
system("mkdir $tmpdir") == 0
    or die "$0: ERROR: mkdir $tmpdir failed. $diemsg\n";
system("cp $infile $tmpdir/tsh.c") == 0
    or die "$0: ERROR: cp failed. $diemsg\n";
system("cp checktsh.pl $tmpdir") == 0
    or die "$0: ERROR: cp failed. $diemsg\n";
system("cp $SRCDIR/Makefile-handout $tmpdir/Makefile") == 0
    or die "$0: ERROR: cp failed. $diemsg\n";
system("cp $SRCDIR/trace*.txt $tmpdir") == 0
    or die "$0: ERROR: cp failed. $diemsg\n";
system("cp $SRCDIR/tsh $tmpdir/tshref") == 0
    or die "$0: ERROR: cp failed. $diemsg\n";
system("cp $SRCDIR/sdriver.pl $tmpdir") == 0
    or die "$0: ERROR: cp failed. $diemsg\n";
system("cp $SRCDIR/myspin.c $tmpdir") == 0
    or die "$0: ERROR: cp failed. $diemsg\n";
system("cp $SRCDIR/mysplit.c $tmpdir") == 0
    or die "$0: ERROR: cp failed. $diemsg\n";
system("cp $SRCDIR/mystop.c $tmpdir") == 0
    or die "$0: ERROR: cp failed. $diemsg\n";
system("cp $SRCDIR/myint.c $tmpdir") == 0
    or die "$0: ERROR: cp failed. $diemsg\n";

# Print header
print "\nCS:APP Shell Lab: Grading Sheet for $infile_basename\n\n";

#
# Compile the student's tsh.c file
#
print "\nPart 0: Compiling your shell\n\n";
system("(cd $tmpdir; make clean > /dev/null 2>&1)");
system("(cd $tmpdir; make)") == 0
    or die "$0: ERROR: $infile_basename did not compile. $diemsg\n";

#
# Run the autograder
#
print "\nPart 1: Correctness Tests\n\n";
$score = 0;
foreach $tracefile (@TRACEFILES) {

    # If perfect match, than add in the points
    if (system("cd $tmpdir; ./checktsh.pl -e -t $tracefile") == 0) {
	$score += $POINTS;
    }
}
print "\nPreliminary correctness score: $score\n"; 

#
# Print the grade summary template that the instructor fills in
#

print "\nPart 2: Score\n\n";

# Max correctness points is number of traces times points per trace
$maxcorrect = ($#TRACEFILES + 1) * $POINTS; 

print "Correctness:\t\t     / $maxcorrect\n\n";
print "Style:      \t\t     / $MAXSTYLE\n\n";
print "            \t\t__________\n\n";
print "Total:      \t\t     / ", $maxcorrect+$MAXSTYLE, "\n";   

# 
# Print the original handin file 
#
if (!$opt_e) {
  print "\f\nPart 3: Original $infile_basename file\n\n";
  system("cat $infile");
}

# Clean up and exit
system("rm -rf $tmpdir");
exit;


