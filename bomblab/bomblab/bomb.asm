
./bomb:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000318 <.interp>:
 318:	2f                   	(bad)
 319:	6c                   	insb   (%dx),%es:(%rdi)
 31a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 321:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 326:	78 2d                	js     355 <__abi_tag-0x47>
 328:	78 38                	js     362 <__abi_tag-0x3a>
 32a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 330:	6f                   	outsl  %ds:(%rsi),(%dx)
 331:	2e 32 00             	cs xor (%rax),%al

Disassembly of section .note.gnu.property:

0000000000000338 <.note.gnu.property>:
 338:	04 00                	add    $0x0,%al
 33a:	00 00                	add    %al,(%rax)
 33c:	30 00                	xor    %al,(%rax)
 33e:	00 00                	add    %al,(%rax)
 340:	05 00 00 00 47       	add    $0x47000000,%eax
 345:	4e 55                	rex.WRX push %rbp
 347:	00 02                	add    %al,(%rdx)
 349:	80 00 c0             	addb   $0xc0,(%rax)
 34c:	04 00                	add    $0x0,%al
 34e:	00 00                	add    %al,(%rax)
 350:	01 00                	add    %eax,(%rax)
 352:	00 00                	add    %al,(%rax)
 354:	00 00                	add    %al,(%rax)
 356:	00 00                	add    %al,(%rax)
 358:	01 00                	add    %eax,(%rax)
 35a:	01 c0                	add    %eax,%eax
 35c:	04 00                	add    $0x0,%al
 35e:	00 00                	add    %al,(%rax)
 360:	01 00                	add    %eax,(%rax)
 362:	00 00                	add    %al,(%rax)
 364:	00 00                	add    %al,(%rax)
 366:	00 00                	add    %al,(%rax)
 368:	02 00                	add    (%rax),%al
 36a:	01 c0                	add    %eax,%eax
 36c:	04 00                	add    $0x0,%al
 36e:	00 00                	add    %al,(%rax)
 370:	01 00                	add    %eax,(%rax)
 372:	00 00                	add    %al,(%rax)
 374:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000000378 <.note.gnu.build-id>:
 378:	04 00                	add    $0x0,%al
 37a:	00 00                	add    %al,(%rax)
 37c:	14 00                	adc    $0x0,%al
 37e:	00 00                	add    %al,(%rax)
 380:	03 00                	add    (%rax),%eax
 382:	00 00                	add    %al,(%rax)
 384:	47                   	rex.RXB
 385:	4e 55                	rex.WRX push %rbp
 387:	00 a3 33 d4 cb 34    	add    %ah,0x34cbd433(%rbx)
 38d:	09 31                	or     %esi,(%rcx)
 38f:	bc 75 ad 2a 60       	mov    $0x602aad75,%esp
 394:	c6                   	(bad)
 395:	eb 15                	jmp    3ac <__abi_tag+0x10>
 397:	c2 3c 2f             	ret    $0x2f3c
 39a:	c9                   	leave
 39b:	61                   	(bad)

Disassembly of section .note.ABI-tag:

000000000000039c <__abi_tag>:
 39c:	04 00                	add    $0x0,%al
 39e:	00 00                	add    %al,(%rax)
 3a0:	10 00                	adc    %al,(%rax)
 3a2:	00 00                	add    %al,(%rax)
 3a4:	01 00                	add    %eax,(%rax)
 3a6:	00 00                	add    %al,(%rax)
 3a8:	47                   	rex.RXB
 3a9:	4e 55                	rex.WRX push %rbp
 3ab:	00 00                	add    %al,(%rax)
 3ad:	00 00                	add    %al,(%rax)
 3af:	00 04 00             	add    %al,(%rax,%rax,1)
 3b2:	00 00                	add    %al,(%rax)
 3b4:	04 00                	add    $0x0,%al
 3b6:	00 00                	add    %al,(%rax)
 3b8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gnu.hash:

00000000000003c0 <.gnu.hash>:
 3c0:	03 00                	add    (%rax),%eax
 3c2:	00 00                	add    %al,(%rax)
 3c4:	22 00                	and    (%rax),%al
 3c6:	00 00                	add    %al,(%rax)
 3c8:	01 00                	add    %eax,(%rax)
 3ca:	00 00                	add    %al,(%rax)
 3cc:	06                   	(bad)
 3cd:	00 00                	add    %al,(%rax)
 3cf:	00 00                	add    %al,(%rax)
 3d1:	01 20                	add    %esp,(%rax)
 3d3:	00 80 01 10 02 22    	add    %al,0x22021001(%rax)
 3d9:	00 00                	add    %al,(%rax)
 3db:	00 23                	add    %ah,(%rbx)
 3dd:	00 00                	add    %al,(%rax)
 3df:	00 00                	add    %al,(%rax)
 3e1:	00 00                	add    %al,(%rax)
 3e3:	00 29                	add    %ch,(%rcx)
 3e5:	1d 8c 1c 66 55       	sbb    $0x55661c8c,%eax
 3ea:	61                   	(bad)
 3eb:	10 39                	adc    %bh,(%rcx)
 3ed:	f2                   	repnz
 3ee:	8b                   	.byte 0x8b
 3ef:	1c                   	.byte 0x1c

Disassembly of section .dynsym:

00000000000003f0 <.dynsym>:
	...
 408:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 409:	00 00                	add    %al,(%rax)
 40b:	00 12                	add    %dl,(%rdx)
	...
 41d:	00 00                	add    %al,(%rax)
 41f:	00 8e 00 00 00 12    	add    %cl,0x12000000(%rsi)
	...
 435:	00 00                	add    %al,(%rax)
 437:	00 71 00             	add    %dh,0x0(%rcx)
 43a:	00 00                	add    %al,(%rax)
 43c:	12 00                	adc    (%rax),%al
	...
 44e:	00 00                	add    %al,(%rax)
 450:	53                   	push   %rbx
 451:	01 00                	add    %eax,(%rax)
 453:	00 20                	add    %ah,(%rax)
	...
 465:	00 00                	add    %al,(%rax)
 467:	00 0f                	add    %cl,(%rdi)
 469:	00 00                	add    %al,(%rax)
 46b:	00 12                	add    %dl,(%rdx)
	...
 47d:	00 00                	add    %al,(%rax)
 47f:	00 48 00             	add    %cl,0x0(%rax)
 482:	00 00                	add    %al,(%rax)
 484:	12 00                	adc    (%rax),%al
	...
 496:	00 00                	add    %al,(%rax)
 498:	19 01                	sbb    %eax,(%rcx)
 49a:	00 00                	add    %al,(%rax)
 49c:	12 00                	adc    (%rax),%al
	...
 4ae:	00 00                	add    %al,(%rax)
 4b0:	6a 00                	push   $0x0
 4b2:	00 00                	add    %al,(%rax)
 4b4:	12 00                	adc    (%rax),%al
	...
 4c6:	00 00                	add    %al,(%rax)
 4c8:	4d 00 00             	rex.WRB add %r8b,(%r8)
 4cb:	00 12                	add    %dl,(%rdx)
	...
 4dd:	00 00                	add    %al,(%rax)
 4df:	00 dc                	add    %bl,%ah
 4e1:	00 00                	add    %al,(%rax)
 4e3:	00 12                	add    %dl,(%rdx)
	...
 4f5:	00 00                	add    %al,(%rax)
 4f7:	00 b5 00 00 00 12    	add    %dh,0x12000000(%rbp)
	...
 50d:	00 00                	add    %al,(%rax)
 50f:	00 d5                	add    %dl,%ch
 511:	00 00                	add    %al,(%rax)
 513:	00 12                	add    %dl,(%rdx)
	...
 525:	00 00                	add    %al,(%rax)
 527:	00 82 00 00 00 12    	add    %al,0x12000000(%rdx)
	...
 53d:	00 00                	add    %al,(%rax)
 53f:	00 07                	add    %al,(%rdi)
 541:	01 00                	add    %eax,(%rax)
 543:	00 12                	add    %dl,(%rdx)
	...
 555:	00 00                	add    %al,(%rax)
 557:	00 64 00 00          	add    %ah,0x0(%rax,%rax,1)
 55b:	00 12                	add    %dl,(%rdx)
	...
 571:	01 00                	add    %eax,(%rax)
 573:	00 12                	add    %dl,(%rdx)
	...
 585:	00 00                	add    %al,(%rax)
 587:	00 41 00             	add    %al,0x0(%rcx)
 58a:	00 00                	add    %al,(%rax)
 58c:	12 00                	adc    (%rax),%al
	...
 59e:	00 00                	add    %al,(%rax)
 5a0:	bb 00 00 00 12       	mov    $0x12000000,%ebx
	...
 5b5:	00 00                	add    %al,(%rax)
 5b7:	00 db                	add    %bl,%bl
 5b9:	00 00                	add    %al,(%rax)
 5bb:	00 12                	add    %dl,(%rdx)
	...
 5cd:	00 00                	add    %al,(%rax)
 5cf:	00 6f 01             	add    %ch,0x1(%rdi)
 5d2:	00 00                	add    %al,(%rax)
 5d4:	20 00                	and    %al,(%rax)
	...
 5e6:	00 00                	add    %al,(%rax)
 5e8:	08 00                	or     %al,(%rax)
 5ea:	00 00                	add    %al,(%rax)
 5ec:	12 00                	adc    (%rax),%al
	...
 5fe:	00 00                	add    %al,(%rax)
 600:	29 00                	sub    %eax,(%rax)
 602:	00 00                	add    %al,(%rax)
 604:	12 00                	adc    (%rax),%al
	...
 616:	00 00                	add    %al,(%rax)
 618:	f8                   	clc
 619:	00 00                	add    %al,(%rax)
 61b:	00 12                	add    %dl,(%rdx)
	...
 62d:	00 00                	add    %al,(%rax)
 62f:	00 23                	add    %ah,(%rbx)
 631:	00 00                	add    %al,(%rax)
 633:	00 12                	add    %dl,(%rdx)
	...
 645:	00 00                	add    %al,(%rax)
 647:	00 c9                	add    %cl,%cl
 649:	00 00                	add    %al,(%rax)
 64b:	00 12                	add    %dl,(%rdx)
	...
 65d:	00 00                	add    %al,(%rax)
 65f:	00 1b                	add    %bl,(%rbx)
 661:	00 00                	add    %al,(%rax)
 663:	00 12                	add    %dl,(%rdx)
	...
 675:	00 00                	add    %al,(%rax)
 677:	00 16                	add    %dl,(%rsi)
 679:	00 00                	add    %al,(%rax)
 67b:	00 12                	add    %dl,(%rdx)
	...
 68d:	00 00                	add    %al,(%rax)
 68f:	00 39                	add    %bh,(%rcx)
 691:	00 00                	add    %al,(%rax)
 693:	00 12                	add    %dl,(%rdx)
	...
 6a5:	00 00                	add    %al,(%rax)
 6a7:	00 7e 01             	add    %bh,0x1(%rsi)
 6aa:	00 00                	add    %al,(%rax)
 6ac:	20 00                	and    %al,(%rax)
	...
 6be:	00 00                	add    %al,(%rax)
 6c0:	e3 00                	jrcxz  6c2 <__abi_tag+0x326>
 6c2:	00 00                	add    %al,(%rax)
 6c4:	12 00                	adc    (%rax),%al
	...
 6d6:	00 00                	add    %al,(%rax)
 6d8:	e9 00 00 00 22       	jmp    220006dd <_end+0x21fee4fd>
	...
 6ed:	00 00                	add    %al,(%rax)
 6ef:	00 99 00 00 00 12    	add    %bl,0x12000000(%rcx)
	...
 705:	00 00                	add    %al,(%rax)
 707:	00 01                	add    %al,(%rcx)
 709:	00 00                	add    %al,(%rax)
 70b:	00 12                	add    %dl,(%rdx)
	...
 71d:	00 00                	add    %al,(%rax)
 71f:	00 87 00 00 00 11    	add    %al,0x11000000(%rdi)
 725:	00 19                	add    %bl,(%rcx)
 727:	00 c0                	add    %al,%al
 729:	17                   	(bad)
 72a:	01 00                	add    %eax,(%rax)
 72c:	00 00                	add    %al,(%rax)
 72e:	00 00                	add    %al,(%rax)
 730:	08 00                	or     %al,(%rax)
 732:	00 00                	add    %al,(%rax)
 734:	00 00                	add    %al,(%rax)
 736:	00 00                	add    %al,(%rax)
 738:	5e                   	pop    %rsi
 739:	00 00                	add    %al,(%rax)
 73b:	00 11                	add    %dl,(%rcx)
 73d:	00 19                	add    %bl,(%rcx)
 73f:	00 d0                	add    %dl,%al
 741:	17                   	(bad)
 742:	01 00                	add    %eax,(%rax)
 744:	00 00                	add    %al,(%rax)
 746:	00 00                	add    %al,(%rax)
 748:	08 00                	or     %al,(%rax)
 74a:	00 00                	add    %al,(%rax)
 74c:	00 00                	add    %al,(%rax)
 74e:	00 00                	add    %al,(%rax)
 750:	ae                   	scas   %es:(%rdi),%al
 751:	00 00                	add    %al,(%rax)
 753:	00 11                	add    %dl,(%rcx)
 755:	00 19                	add    %bl,(%rcx)
 757:	00 e0                	add    %ah,%al
 759:	17                   	(bad)
 75a:	01 00                	add    %eax,(%rax)
 75c:	00 00                	add    %al,(%rax)
 75e:	00 00                	add    %al,(%rax)
 760:	08 00                	or     %al,(%rax)
 762:	00 00                	add    %al,(%rax)
 764:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

0000000000000768 <.dynstr>:
 768:	00 73 6f             	add    %dh,0x6f(%rbx)
 76b:	63 6b 65             	movsxd 0x65(%rbx),%ebp
 76e:	74 00                	je     770 <__abi_tag+0x3d4>
 770:	66 66 6c             	data16 data16 insb (%dx),%es:(%rdi)
 773:	75 73                	jne    7e8 <__abi_tag+0x44c>
 775:	68 00 73 74 72       	push   $0x72747300
 77a:	63 70 79             	movsxd 0x79(%rax),%esi
 77d:	00 65 78             	add    %ah,0x78(%rbp)
 780:	69 74 00 73 70 72 69 	imul   $0x6e697270,0x73(%rax,%rax,1),%esi
 787:	6e 
 788:	74 66                	je     7f0 <__abi_tag+0x454>
 78a:	00 66 6f             	add    %ah,0x6f(%rsi)
 78d:	70 65                	jo     7f4 <__abi_tag+0x458>
 78f:	6e                   	outsb  %ds:(%rsi),(%dx)
 790:	00 5f 5f             	add    %bl,0x5f(%rdi)
 793:	69 73 6f 63 39 39 5f 	imul   $0x5f393963,0x6f(%rbx),%esi
 79a:	73 73                	jae    80f <__abi_tag+0x473>
 79c:	63 61 6e             	movsxd 0x6e(%rcx),%esp
 79f:	66 00 63 6f          	data16 add %ah,0x6f(%rbx)
 7a3:	6e                   	outsb  %ds:(%rsi),(%dx)
 7a4:	6e                   	outsb  %ds:(%rsi),(%dx)
 7a5:	65 63 74 00 73       	movsxd %gs:0x73(%rax,%rax,1),%esi
 7aa:	69 67 6e 61 6c 00 70 	imul   $0x70006c61,0x6e(%rdi),%esp
 7b1:	75 74                	jne    827 <__abi_tag+0x48b>
 7b3:	73 00                	jae    7b5 <__abi_tag+0x419>
 7b5:	5f                   	pop    %rdi
 7b6:	5f                   	pop    %rdi
 7b7:	73 74                	jae    82d <__abi_tag+0x491>
 7b9:	61                   	(bad)
 7ba:	63 6b 5f             	movsxd 0x5f(%rbx),%ebp
 7bd:	63 68 6b             	movsxd 0x6b(%rax),%ebp
 7c0:	5f                   	pop    %rdi
 7c1:	66 61                	data16 (bad)
 7c3:	69 6c 00 73 74 64 69 	imul   $0x6e696474,0x73(%rax,%rax,1),%ebp
 7ca:	6e 
 7cb:	00 66 67             	add    %ah,0x67(%rsi)
 7ce:	65 74 73             	gs je  844 <__abi_tag+0x4a8>
 7d1:	00 73 74             	add    %dh,0x74(%rbx)
 7d4:	72 6c                	jb     842 <__abi_tag+0x4a6>
 7d6:	65 6e                	outsb  %gs:(%rsi),(%dx)
 7d8:	00 5f 5f             	add    %bl,0x5f(%rdi)
 7db:	65 72 72             	gs jb  850 <__abi_tag+0x4b4>
 7de:	6e                   	outsb  %ds:(%rsi),(%dx)
 7df:	6f                   	outsl  %ds:(%rsi),(%dx)
 7e0:	5f                   	pop    %rdi
 7e1:	6c                   	insb   (%dx),%es:(%rdi)
 7e2:	6f                   	outsl  %ds:(%rsi),(%dx)
 7e3:	63 61 74             	movsxd 0x74(%rcx),%esp
 7e6:	69 6f 6e 00 72 65 61 	imul   $0x61657200,0x6e(%rdi),%ebp
 7ed:	64 00 73 74          	add    %dh,%fs:0x74(%rbx)
 7f1:	64 6f                	outsl  %fs:(%rsi),(%dx)
 7f3:	75 74                	jne    869 <__abi_tag+0x4cd>
 7f5:	00 73 74             	add    %dh,0x74(%rbx)
 7f8:	72 63                	jb     85d <__abi_tag+0x4c1>
 7fa:	61                   	(bad)
 7fb:	73 65                	jae    862 <__abi_tag+0x4c6>
 7fd:	63 6d 70             	movsxd 0x70(%rbp),%ebp
 800:	00 5f 5f             	add    %bl,0x5f(%rdi)
 803:	63 74 79 70          	movsxd 0x70(%rcx,%rdi,2),%esi
 807:	65 5f                	gs pop %rdi
 809:	62                   	(bad)
 80a:	5f                   	pop    %rdi
 80b:	6c                   	insb   (%dx),%es:(%rdi)
 80c:	6f                   	outsl  %ds:(%rsi),(%dx)
 80d:	63 00                	movsxd (%rax),%eax
 80f:	67 65 74 65          	addr32 gs je 878 <__abi_tag+0x4dc>
 813:	6e                   	outsb  %ds:(%rsi),(%dx)
 814:	76 00                	jbe    816 <__abi_tag+0x47a>
 816:	73 74                	jae    88c <__abi_tag+0x4f0>
 818:	64 65 72 72          	fs gs jb 88e <__abi_tag+0x4f2>
 81c:	00 61 6c             	add    %ah,0x6c(%rcx)
 81f:	61                   	(bad)
 820:	72 6d                	jb     88f <__abi_tag+0x4f3>
 822:	00 67 65             	add    %ah,0x65(%rdi)
 825:	74 68                	je     88f <__abi_tag+0x4f3>
 827:	6f                   	outsl  %ds:(%rsi),(%dx)
 828:	73 74                	jae    89e <__abi_tag+0x502>
 82a:	62                   	(bad)
 82b:	79 6e                	jns    89b <__abi_tag+0x4ff>
 82d:	61                   	(bad)
 82e:	6d                   	insl   (%dx),%es:(%rdi)
 82f:	65 00 67 65          	add    %ah,%gs:0x65(%rdi)
 833:	74 68                	je     89d <__abi_tag+0x501>
 835:	6f                   	outsl  %ds:(%rsi),(%dx)
 836:	73 74                	jae    8ac <__abi_tag+0x510>
 838:	6e                   	outsb  %ds:(%rsi),(%dx)
 839:	61                   	(bad)
 83a:	6d                   	insl   (%dx),%es:(%rdi)
 83b:	65 00 63 6c          	add    %ah,%gs:0x6c(%rbx)
 83f:	6f                   	outsl  %ds:(%rsi),(%dx)
 840:	73 65                	jae    8a7 <__abi_tag+0x50b>
 842:	00 66 70             	add    %ah,0x70(%rsi)
 845:	72 69                	jb     8b0 <__abi_tag+0x514>
 847:	6e                   	outsb  %ds:(%rsi),(%dx)
 848:	74 66                	je     8b0 <__abi_tag+0x514>
 84a:	00 73 6c             	add    %dh,0x6c(%rbx)
 84d:	65 65 70 00          	gs gs jo 851 <__abi_tag+0x4b5>
 851:	5f                   	pop    %rdi
 852:	5f                   	pop    %rdi
 853:	63 78 61             	movsxd 0x61(%rax),%edi
 856:	5f                   	pop    %rdi
 857:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 85d:	7a 65                	jp     8c4 <__abi_tag+0x528>
 85f:	00 6d 65             	add    %ch,0x65(%rbp)
 862:	6d                   	insl   (%dx),%es:(%rdi)
 863:	6d                   	insl   (%dx),%es:(%rdi)
 864:	6f                   	outsl  %ds:(%rsi),(%dx)
 865:	76 65                	jbe    8cc <__abi_tag+0x530>
 867:	00 73 74             	add    %dh,0x74(%rbx)
 86a:	72 63                	jb     8cf <__abi_tag+0x533>
 86c:	6d                   	insl   (%dx),%es:(%rdi)
 86d:	70 00                	jo     86f <__abi_tag+0x4d3>
 86f:	5f                   	pop    %rdi
 870:	5f                   	pop    %rdi
 871:	6c                   	insb   (%dx),%es:(%rdi)
 872:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 879:	72 74                	jb     8ef <__abi_tag+0x553>
 87b:	5f                   	pop    %rdi
 87c:	6d                   	insl   (%dx),%es:(%rdi)
 87d:	61                   	(bad)
 87e:	69 6e 00 77 72 69 74 	imul   $0x74697277,0x0(%rsi),%ebp
 885:	65 00 6c 69 62       	add    %ch,%gs:0x62(%rcx,%rbp,2)
 88a:	63 2e                	movsxd (%rsi),%ebp
 88c:	73 6f                	jae    8fd <__abi_tag+0x561>
 88e:	2e 36 00 47 4c       	cs ss add %al,0x4c(%rdi)
 893:	49                   	rex.WB
 894:	42                   	rex.X
 895:	43 5f                	rex.XB pop %r15
 897:	32 2e                	xor    (%rsi),%ch
 899:	33 00                	xor    (%rax),%eax
 89b:	47                   	rex.RXB
 89c:	4c                   	rex.WR
 89d:	49                   	rex.WB
 89e:	42                   	rex.X
 89f:	43 5f                	rex.XB pop %r15
 8a1:	32 2e                	xor    (%rsi),%ch
 8a3:	37                   	(bad)
 8a4:	00 47 4c             	add    %al,0x4c(%rdi)
 8a7:	49                   	rex.WB
 8a8:	42                   	rex.X
 8a9:	43 5f                	rex.XB pop %r15
 8ab:	32 2e                	xor    (%rsi),%ch
 8ad:	34 00                	xor    $0x0,%al
 8af:	47                   	rex.RXB
 8b0:	4c                   	rex.WR
 8b1:	49                   	rex.WB
 8b2:	42                   	rex.X
 8b3:	43 5f                	rex.XB pop %r15
 8b5:	32 2e                	xor    (%rsi),%ch
 8b7:	32 2e                	xor    (%rsi),%ch
 8b9:	35 00 5f 49 54       	xor    $0x54495f00,%eax
 8be:	4d 5f                	rex.WRB pop %r15
 8c0:	64 65 72 65          	fs gs jb 929 <__abi_tag+0x58d>
 8c4:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 8cb:	4d 
 8cc:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 8ce:	6f                   	outsl  %ds:(%rsi),(%dx)
 8cf:	6e                   	outsb  %ds:(%rsi),(%dx)
 8d0:	65 54                	gs push %rsp
 8d2:	61                   	(bad)
 8d3:	62                   	(bad)
 8d4:	6c                   	insb   (%dx),%es:(%rdi)
 8d5:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 8d9:	67 6d                	insl   (%dx),%es:(%edi)
 8db:	6f                   	outsl  %ds:(%rsi),(%dx)
 8dc:	6e                   	outsb  %ds:(%rsi),(%dx)
 8dd:	5f                   	pop    %rdi
 8de:	73 74                	jae    954 <__abi_tag+0x5b8>
 8e0:	61                   	(bad)
 8e1:	72 74                	jb     957 <__abi_tag+0x5bb>
 8e3:	5f                   	pop    %rdi
 8e4:	5f                   	pop    %rdi
 8e5:	00 5f 49             	add    %bl,0x49(%rdi)
 8e8:	54                   	push   %rsp
 8e9:	4d 5f                	rex.WRB pop %r15
 8eb:	72 65                	jb     952 <__abi_tag+0x5b6>
 8ed:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 8f4:	4d 
 8f5:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 8f7:	6f                   	outsl  %ds:(%rsi),(%dx)
 8f8:	6e                   	outsb  %ds:(%rsi),(%dx)
 8f9:	65 54                	gs push %rsp
 8fb:	61                   	(bad)
 8fc:	62                   	.byte 0x62
 8fd:	6c                   	insb   (%dx),%es:(%rdi)
 8fe:	65                   	gs
	...

Disassembly of section .gnu.version:

0000000000000900 <.gnu.version>:
 900:	00 00                	add    %al,(%rax)
 902:	02 00                	add    (%rax),%al
 904:	02 00                	add    (%rax),%al
 906:	02 00                	add    (%rax),%al
 908:	00 00                	add    %al,(%rax)
 90a:	02 00                	add    (%rax),%al
 90c:	02 00                	add    (%rax),%al
 90e:	02 00                	add    (%rax),%al
 910:	02 00                	add    (%rax),%al
 912:	03 00                	add    (%rax),%eax
 914:	02 00                	add    (%rax),%al
 916:	02 00                	add    (%rax),%al
 918:	02 00                	add    (%rax),%al
 91a:	02 00                	add    (%rax),%al
 91c:	02 00                	add    (%rax),%al
 91e:	02 00                	add    (%rax),%al
 920:	02 00                	add    (%rax),%al
 922:	02 00                	add    (%rax),%al
 924:	02 00                	add    (%rax),%al
 926:	02 00                	add    (%rax),%al
 928:	00 00                	add    %al,(%rax)
 92a:	02 00                	add    (%rax),%al
 92c:	04 00                	add    $0x0,%al
 92e:	02 00                	add    (%rax),%al
 930:	02 00                	add    (%rax),%al
 932:	02 00                	add    (%rax),%al
 934:	02 00                	add    (%rax),%al
 936:	02 00                	add    (%rax),%al
 938:	02 00                	add    (%rax),%al
 93a:	00 00                	add    %al,(%rax)
 93c:	02 00                	add    (%rax),%al
 93e:	02 00                	add    (%rax),%al
 940:	05 00 02 00 02       	add    $0x2000200,%eax
 945:	00 02                	add    %al,(%rdx)
 947:	00 02                	add    %al,(%rdx)
	...

Disassembly of section .gnu.version_r:

0000000000000950 <.gnu.version_r>:
 950:	01 00                	add    %eax,(%rax)
 952:	04 00                	add    $0x0,%al
 954:	1f                   	(bad)
 955:	01 00                	add    %eax,(%rax)
 957:	00 10                	add    %dl,(%rax)
 959:	00 00                	add    %al,(%rax)
 95b:	00 00                	add    %al,(%rax)
 95d:	00 00                	add    %al,(%rax)
 95f:	00 13                	add    %dl,(%rbx)
 961:	69 69 0d 00 00 05 00 	imul   $0x50000,0xd(%rcx),%ebp
 968:	29 01                	sub    %eax,(%rcx)
 96a:	00 00                	add    %al,(%rax)
 96c:	10 00                	adc    %al,(%rax)
 96e:	00 00                	add    %al,(%rax)
 970:	17                   	(bad)
 971:	69 69 0d 00 00 04 00 	imul   $0x40000,0xd(%rcx),%ebp
 978:	33 01                	xor    (%rcx),%eax
 97a:	00 00                	add    %al,(%rax)
 97c:	10 00                	adc    %al,(%rax)
 97e:	00 00                	add    %al,(%rax)
 980:	14 69                	adc    $0x69,%al
 982:	69 0d 00 00 03 00 3d 	imul   $0x13d,0x30000(%rip),%ecx        # 3098c <_end+0x1e7ac>
 989:	01 00 00 
 98c:	10 00                	adc    %al,(%rax)
 98e:	00 00                	add    %al,(%rax)
 990:	75 1a                	jne    9ac <__abi_tag+0x610>
 992:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
 998:	47 01 00             	rex.RXB add %r8d,(%r8)
 99b:	00 00                	add    %al,(%rax)
 99d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000000009a0 <.rela.dyn>:
     9a0:	e8 6d 00 00 00       	call   a12 <__abi_tag+0x676>
     9a5:	00 00                	add    %al,(%rax)
     9a7:	00 08                	add    %cl,(%rax)
     9a9:	00 00                	add    %al,(%rax)
     9ab:	00 00                	add    %al,(%rax)
     9ad:	00 00                	add    %al,(%rax)
     9af:	00 e0                	add    %ah,%al
     9b1:	22 00                	and    (%rax),%al
     9b3:	00 00                	add    %al,(%rax)
     9b5:	00 00                	add    %al,(%rax)
     9b7:	00 f0                	add    %dh,%al
     9b9:	6d                   	insl   (%dx),%es:(%rdi)
     9ba:	00 00                	add    %al,(%rax)
     9bc:	00 00                	add    %al,(%rax)
     9be:	00 00                	add    %al,(%rax)
     9c0:	08 00                	or     %al,(%rax)
     9c2:	00 00                	add    %al,(%rax)
     9c4:	00 00                	add    %al,(%rax)
     9c6:	00 00                	add    %al,(%rax)
     9c8:	90                   	nop
     9c9:	22 00                	and    (%rax),%al
     9cb:	00 00                	add    %al,(%rax)
     9cd:	00 00                	add    %al,(%rax)
     9cf:	00 08                	add    %cl,(%rax)
     9d1:	71 00                	jno    9d3 <__abi_tag+0x637>
     9d3:	00 00                	add    %al,(%rax)
     9d5:	00 00                	add    %al,(%rax)
     9d7:	00 08                	add    %cl,(%rax)
     9d9:	00 00                	add    %al,(%rax)
     9db:	00 00                	add    %al,(%rax)
     9dd:	00 00                	add    %al,(%rax)
     9df:	00 08                	add    %cl,(%rax)
     9e1:	71 00                	jno    9e3 <__abi_tag+0x647>
     9e3:	00 00                	add    %al,(%rax)
     9e5:	00 00                	add    %al,(%rax)
     9e7:	00 e8                	add    %ch,%al
     9e9:	8a 00                	mov    (%rax),%al
     9eb:	00 00                	add    %al,(%rax)
     9ed:	00 00                	add    %al,(%rax)
     9ef:	00 08                	add    %cl,(%rax)
     9f1:	00 00                	add    %al,(%rax)
     9f3:	00 00                	add    %al,(%rax)
     9f5:	00 00                	add    %al,(%rax)
     9f7:	00 a0 fc 00 00 00    	add    %ah,0xfc(%rax)
     9fd:	00 00                	add    %al,(%rax)
     9ff:	00 00                	add    %al,(%rax)
     a01:	8b 00                	mov    (%rax),%eax
     a03:	00 00                	add    %al,(%rax)
     a05:	00 00                	add    %al,(%rax)
     a07:	00 08                	add    %cl,(%rax)
     a09:	00 00                	add    %al,(%rax)
     a0b:	00 00                	add    %al,(%rax)
     a0d:	00 00                	add    %al,(%rax)
     a0f:	00 40 ea             	add    %al,-0x16(%rax)
     a12:	00 00                	add    %al,(%rax)
     a14:	00 00                	add    %al,(%rax)
     a16:	00 00                	add    %al,(%rax)
     a18:	10 8b 00 00 00 00    	adc    %cl,0x0(%rbx)
     a1e:	00 00                	add    %al,(%rax)
     a20:	08 00                	or     %al,(%rax)
     a22:	00 00                	add    %al,(%rax)
     a24:	00 00                	add    %al,(%rax)
     a26:	00 00                	add    %al,(%rax)
     a28:	80 e1 00             	and    $0x0,%cl
     a2b:	00 00                	add    %al,(%rax)
     a2d:	00 00                	add    %al,(%rax)
     a2f:	00 18                	add    %bl,(%rax)
     a31:	8b 00                	mov    (%rax),%eax
     a33:	00 00                	add    %al,(%rax)
     a35:	00 00                	add    %al,(%rax)
     a37:	00 08                	add    %cl,(%rax)
	...
     a41:	d7                   	xlat   %ds:(%rbx)
     a42:	00 00                	add    %al,(%rax)
     a44:	00 00                	add    %al,(%rax)
     a46:	00 00                	add    %al,(%rax)
     a48:	20 8b 00 00 00 00    	and    %cl,0x0(%rbx)
     a4e:	00 00                	add    %al,(%rax)
     a50:	08 00                	or     %al,(%rax)
     a52:	00 00                	add    %al,(%rax)
     a54:	00 00                	add    %al,(%rax)
     a56:	00 00                	add    %al,(%rax)
     a58:	a0 cb 00 00 00 00 00 	movabs 0x40000000000000cb,%al
     a5f:	00 40 
     a61:	8b 00                	mov    (%rax),%eax
     a63:	00 00                	add    %al,(%rax)
     a65:	00 00                	add    %al,(%rax)
     a67:	00 08                	add    %cl,(%rax)
     a69:	00 00                	add    %al,(%rax)
     a6b:	00 00                	add    %al,(%rax)
     a6d:	00 00                	add    %al,(%rax)
     a6f:	00 20                	add    %ah,(%rax)
     a71:	c1 00 00             	roll   $0x0,(%rax)
     a74:	00 00                	add    %al,(%rax)
     a76:	00 00                	add    %al,(%rax)
     a78:	60                   	(bad)
     a79:	8b 00                	mov    (%rax),%eax
     a7b:	00 00                	add    %al,(%rax)
     a7d:	00 00                	add    %al,(%rax)
     a7f:	00 08                	add    %cl,(%rax)
     a81:	00 00                	add    %al,(%rax)
     a83:	00 00                	add    %al,(%rax)
     a85:	00 00                	add    %al,(%rax)
     a87:	00 20                	add    %ah,(%rax)
     a89:	b3 00                	mov    $0x0,%bl
     a8b:	00 00                	add    %al,(%rax)
     a8d:	00 00                	add    %al,(%rax)
     a8f:	00 70 8b             	add    %dh,-0x75(%rax)
     a92:	00 00                	add    %al,(%rax)
     a94:	00 00                	add    %al,(%rax)
     a96:	00 00                	add    %al,(%rax)
     a98:	08 00                	or     %al,(%rax)
     a9a:	00 00                	add    %al,(%rax)
     a9c:	00 00                	add    %al,(%rax)
     a9e:	00 00                	add    %al,(%rax)
     aa0:	20 ac 00 00 00 00 00 	and    %ch,0x0(%rax,%rax,1)
     aa7:	00 78 8b             	add    %bh,-0x75(%rax)
     aaa:	00 00                	add    %al,(%rax)
     aac:	00 00                	add    %al,(%rax)
     aae:	00 00                	add    %al,(%rax)
     ab0:	08 00                	or     %al,(%rax)
     ab2:	00 00                	add    %al,(%rax)
     ab4:	00 00                	add    %al,(%rax)
     ab6:	00 00                	add    %al,(%rax)
     ab8:	40 9d                	rex popf
     aba:	00 00                	add    %al,(%rax)
     abc:	00 00                	add    %al,(%rax)
     abe:	00 00                	add    %al,(%rax)
     ac0:	80 8b 00 00 00 00 00 	orb    $0x0,0x0(%rbx)
     ac7:	00 08                	add    %cl,(%rax)
     ac9:	00 00                	add    %al,(%rax)
     acb:	00 00                	add    %al,(%rax)
     acd:	00 00                	add    %al,(%rax)
     acf:	00 c0                	add    %al,%al
     ad1:	8b 00                	mov    (%rax),%eax
     ad3:	00 00                	add    %al,(%rax)
     ad5:	00 00                	add    %al,(%rax)
     ad7:	00 c8                	add    %cl,%al
     ad9:	8b 00                	mov    (%rax),%eax
     adb:	00 00                	add    %al,(%rax)
     add:	00 00                	add    %al,(%rax)
     adf:	00 08                	add    %cl,(%rax)
     ae1:	00 00                	add    %al,(%rax)
     ae3:	00 00                	add    %al,(%rax)
     ae5:	00 00                	add    %al,(%rax)
     ae7:	00 80 94 00 00 00    	add    %al,0x94(%rax)
     aed:	00 00                	add    %al,(%rax)
     aef:	00 e8                	add    %ch,%al
     af1:	8b 00                	mov    (%rax),%eax
     af3:	00 00                	add    %al,(%rax)
     af5:	00 00                	add    %al,(%rax)
     af7:	00 08                	add    %cl,(%rax)
     af9:	00 00                	add    %al,(%rax)
     afb:	00 00                	add    %al,(%rax)
     afd:	00 00                	add    %al,(%rax)
     aff:	00 a0 8c 00 00 00    	add    %ah,0x8c(%rax)
     b05:	00 00                	add    %al,(%rax)
     b07:	00 08                	add    %cl,(%rax)
     b09:	8d 00                	lea    (%rax),%eax
     b0b:	00 00                	add    %al,(%rax)
     b0d:	00 00                	add    %al,(%rax)
     b0f:	00 08                	add    %cl,(%rax)
     b11:	00 00                	add    %al,(%rax)
     b13:	00 00                	add    %al,(%rax)
     b15:	00 00                	add    %al,(%rax)
     b17:	00 80 8d 00 00 00    	add    %al,0x8d(%rax)
     b1d:	00 00                	add    %al,(%rax)
     b1f:	00 00                	add    %al,(%rax)
     b21:	8e 00                	mov    (%rax),%es
     b23:	00 00                	add    %al,(%rax)
     b25:	00 00                	add    %al,(%rax)
     b27:	00 08                	add    %cl,(%rax)
     b29:	00 00                	add    %al,(%rax)
     b2b:	00 00                	add    %al,(%rax)
     b2d:	00 00                	add    %al,(%rax)
     b2f:	00 60 8e             	add    %ah,-0x72(%rax)
     b32:	00 00                	add    %al,(%rax)
     b34:	00 00                	add    %al,(%rax)
     b36:	00 00                	add    %al,(%rax)
     b38:	88 8e 00 00 00 00    	mov    %cl,0x0(%rsi)
     b3e:	00 00                	add    %al,(%rax)
     b40:	08 00                	or     %al,(%rax)
     b42:	00 00                	add    %al,(%rax)
     b44:	00 00                	add    %al,(%rax)
     b46:	00 00                	add    %al,(%rax)
     b48:	c0 92 00 00 00 00 00 	rclb   $0x0,0x0(%rdx)
     b4f:	00 d8                	add    %bl,%al
     b51:	8e 00                	mov    (%rax),%es
     b53:	00 00                	add    %al,(%rax)
     b55:	00 00                	add    %al,(%rax)
     b57:	00 08                	add    %cl,(%rax)
     b59:	00 00                	add    %al,(%rax)
     b5b:	00 00                	add    %al,(%rax)
     b5d:	00 00                	add    %al,(%rax)
     b5f:	00 40 8f             	add    %al,-0x71(%rax)
     b62:	00 00                	add    %al,(%rax)
     b64:	00 00                	add    %al,(%rax)
     b66:	00 00                	add    %al,(%rax)
     b68:	d0 8f 00 00 00 00    	rorb   0x0(%rdi)
     b6e:	00 00                	add    %al,(%rax)
     b70:	08 00                	or     %al,(%rax)
     b72:	00 00                	add    %al,(%rax)
     b74:	00 00                	add    %al,(%rax)
     b76:	00 00                	add    %al,(%rax)
     b78:	20 90 00 00 00 00    	and    %dl,0x0(%rax)
     b7e:	00 00                	add    %al,(%rax)
     b80:	28 90 00 00 00 00    	sub    %dl,0x0(%rax)
     b86:	00 00                	add    %al,(%rax)
     b88:	08 00                	or     %al,(%rax)
     b8a:	00 00                	add    %al,(%rax)
     b8c:	00 00                	add    %al,(%rax)
     b8e:	00 00                	add    %al,(%rax)
     b90:	00 91 00 00 00 00    	add    %dl,0x0(%rcx)
     b96:	00 00                	add    %al,(%rax)
     b98:	90                   	nop
     b99:	91                   	xchg   %eax,%ecx
     b9a:	00 00                	add    %al,(%rax)
     b9c:	00 00                	add    %al,(%rax)
     b9e:	00 00                	add    %al,(%rax)
     ba0:	08 00                	or     %al,(%rax)
     ba2:	00 00                	add    %al,(%rax)
     ba4:	00 00                	add    %al,(%rax)
     ba6:	00 00                	add    %al,(%rax)
     ba8:	e0 91                	loopne b3b <__abi_tag+0x79f>
     baa:	00 00                	add    %al,(%rax)
     bac:	00 00                	add    %al,(%rax)
     bae:	00 00                	add    %al,(%rax)
     bb0:	a8 92                	test   $0x92,%al
     bb2:	00 00                	add    %al,(%rax)
     bb4:	00 00                	add    %al,(%rax)
     bb6:	00 00                	add    %al,(%rax)
     bb8:	08 00                	or     %al,(%rax)
     bba:	00 00                	add    %al,(%rax)
     bbc:	00 00                	add    %al,(%rax)
     bbe:	00 00                	add    %al,(%rax)
     bc0:	40 71 00             	rex jno bc3 <__abi_tag+0x827>
     bc3:	00 00                	add    %al,(%rax)
     bc5:	00 00                	add    %al,(%rax)
     bc7:	00 58 93             	add    %bl,-0x6d(%rax)
     bca:	00 00                	add    %al,(%rax)
     bcc:	00 00                	add    %al,(%rax)
     bce:	00 00                	add    %al,(%rax)
     bd0:	08 00                	or     %al,(%rax)
     bd2:	00 00                	add    %al,(%rax)
     bd4:	00 00                	add    %al,(%rax)
     bd6:	00 00                	add    %al,(%rax)
     bd8:	a0 93 00 00 00 00 00 	movabs 0x4000000000000093,%al
     bdf:	00 40 
     be1:	94                   	xchg   %eax,%esp
     be2:	00 00                	add    %al,(%rax)
     be4:	00 00                	add    %al,(%rax)
     be6:	00 00                	add    %al,(%rax)
     be8:	08 00                	or     %al,(%rax)
     bea:	00 00                	add    %al,(%rax)
     bec:	00 00                	add    %al,(%rax)
     bee:	00 00                	add    %al,(%rax)
     bf0:	20 72 00             	and    %dh,0x0(%rdx)
     bf3:	00 00                	add    %al,(%rax)
     bf5:	00 00                	add    %al,(%rax)
     bf7:	00 c8                	add    %cl,%al
     bf9:	94                   	xchg   %eax,%esp
     bfa:	00 00                	add    %al,(%rax)
     bfc:	00 00                	add    %al,(%rax)
     bfe:	00 00                	add    %al,(%rax)
     c00:	08 00                	or     %al,(%rax)
     c02:	00 00                	add    %al,(%rax)
     c04:	00 00                	add    %al,(%rax)
     c06:	00 00                	add    %al,(%rax)
     c08:	e0 98                	loopne ba2 <__abi_tag+0x806>
     c0a:	00 00                	add    %al,(%rax)
     c0c:	00 00                	add    %al,(%rax)
     c0e:	00 00                	add    %al,(%rax)
     c10:	10 95 00 00 00 00    	adc    %dl,0x0(%rbp)
     c16:	00 00                	add    %al,(%rax)
     c18:	08 00                	or     %al,(%rax)
     c1a:	00 00                	add    %al,(%rax)
     c1c:	00 00                	add    %al,(%rax)
     c1e:	00 00                	add    %al,(%rax)
     c20:	60                   	(bad)
     c21:	95                   	xchg   %eax,%ebp
     c22:	00 00                	add    %al,(%rax)
     c24:	00 00                	add    %al,(%rax)
     c26:	00 00                	add    %al,(%rax)
     c28:	70 95                	jo     bbf <__abi_tag+0x823>
     c2a:	00 00                	add    %al,(%rax)
     c2c:	00 00                	add    %al,(%rax)
     c2e:	00 00                	add    %al,(%rax)
     c30:	08 00                	or     %al,(%rax)
     c32:	00 00                	add    %al,(%rax)
     c34:	00 00                	add    %al,(%rax)
     c36:	00 00                	add    %al,(%rax)
     c38:	40 96                	rex xchg %eax,%esi
     c3a:	00 00                	add    %al,(%rax)
     c3c:	00 00                	add    %al,(%rax)
     c3e:	00 00                	add    %al,(%rax)
     c40:	48 96                	xchg   %rax,%rsi
     c42:	00 00                	add    %al,(%rax)
     c44:	00 00                	add    %al,(%rax)
     c46:	00 00                	add    %al,(%rax)
     c48:	08 00                	or     %al,(%rax)
     c4a:	00 00                	add    %al,(%rax)
     c4c:	00 00                	add    %al,(%rax)
     c4e:	00 00                	add    %al,(%rax)
     c50:	20 97 00 00 00 00    	and    %dl,0x0(%rdi)
     c56:	00 00                	add    %al,(%rax)
     c58:	80 97 00 00 00 00 00 	adcb   $0x0,0x0(%rdi)
     c5f:	00 08                	add    %cl,(%rax)
	...
     c69:	98                   	cwtl
     c6a:	00 00                	add    %al,(%rax)
     c6c:	00 00                	add    %al,(%rax)
     c6e:	00 00                	add    %al,(%rax)
     c70:	60                   	(bad)
     c71:	98                   	cwtl
     c72:	00 00                	add    %al,(%rax)
     c74:	00 00                	add    %al,(%rax)
     c76:	00 00                	add    %al,(%rax)
     c78:	08 00                	or     %al,(%rax)
     c7a:	00 00                	add    %al,(%rax)
     c7c:	00 00                	add    %al,(%rax)
     c7e:	00 00                	add    %al,(%rax)
     c80:	00 73 00             	add    %dh,0x0(%rbx)
     c83:	00 00                	add    %al,(%rax)
     c85:	00 00                	add    %al,(%rax)
     c87:	00 70 99             	add    %dh,-0x67(%rax)
     c8a:	00 00                	add    %al,(%rax)
     c8c:	00 00                	add    %al,(%rax)
     c8e:	00 00                	add    %al,(%rax)
     c90:	08 00                	or     %al,(%rax)
     c92:	00 00                	add    %al,(%rax)
     c94:	00 00                	add    %al,(%rax)
     c96:	00 00                	add    %al,(%rax)
     c98:	c0 99 00 00 00 00 00 	rcrb   $0x0,0x0(%rcx)
     c9f:	00 08                	add    %cl,(%rax)
     ca1:	9a                   	(bad)
     ca2:	00 00                	add    %al,(%rax)
     ca4:	00 00                	add    %al,(%rax)
     ca6:	00 00                	add    %al,(%rax)
     ca8:	08 00                	or     %al,(%rax)
     caa:	00 00                	add    %al,(%rax)
     cac:	00 00                	add    %al,(%rax)
     cae:	00 00                	add    %al,(%rax)
     cb0:	a0 9a 00 00 00 00 00 	movabs 0x400000000000009a,%al
     cb7:	00 40 
     cb9:	9b                   	fwait
     cba:	00 00                	add    %al,(%rax)
     cbc:	00 00                	add    %al,(%rax)
     cbe:	00 00                	add    %al,(%rax)
     cc0:	08 00                	or     %al,(%rax)
     cc2:	00 00                	add    %al,(%rax)
     cc4:	00 00                	add    %al,(%rax)
     cc6:	00 00                	add    %al,(%rax)
     cc8:	80 9b 00 00 00 00 00 	sbbb   $0x0,0x0(%rbx)
     ccf:	00 18                	add    %bl,(%rax)
     cd1:	9c                   	pushf
     cd2:	00 00                	add    %al,(%rax)
     cd4:	00 00                	add    %al,(%rax)
     cd6:	00 00                	add    %al,(%rax)
     cd8:	08 00                	or     %al,(%rax)
     cda:	00 00                	add    %al,(%rax)
     cdc:	00 00                	add    %al,(%rax)
     cde:	00 00                	add    %al,(%rax)
     ce0:	60                   	(bad)
     ce1:	9c                   	pushf
     ce2:	00 00                	add    %al,(%rax)
     ce4:	00 00                	add    %al,(%rax)
     ce6:	00 00                	add    %al,(%rax)
     ce8:	08 9d 00 00 00 00    	or     %bl,0x0(%rbp)
     cee:	00 00                	add    %al,(%rax)
     cf0:	08 00                	or     %al,(%rax)
     cf2:	00 00                	add    %al,(%rax)
     cf4:	00 00                	add    %al,(%rax)
     cf6:	00 00                	add    %al,(%rax)
     cf8:	e0 73                	loopne d6d <__abi_tag+0x9d1>
     cfa:	00 00                	add    %al,(%rax)
     cfc:	00 00                	add    %al,(%rax)
     cfe:	00 00                	add    %al,(%rax)
     d00:	80 9d 00 00 00 00 00 	sbbb   $0x0,0x0(%rbp)
     d07:	00 08                	add    %cl,(%rax)
     d09:	00 00                	add    %al,(%rax)
     d0b:	00 00                	add    %al,(%rax)
     d0d:	00 00                	add    %al,(%rax)
     d0f:	00 60 a3             	add    %ah,-0x5d(%rax)
     d12:	00 00                	add    %al,(%rax)
     d14:	00 00                	add    %al,(%rax)
     d16:	00 00                	add    %al,(%rax)
     d18:	b8 9d 00 00 00       	mov    $0x9d,%eax
     d1d:	00 00                	add    %al,(%rax)
     d1f:	00 08                	add    %cl,(%rax)
     d21:	00 00                	add    %al,(%rax)
     d23:	00 00                	add    %al,(%rax)
     d25:	00 00                	add    %al,(%rax)
     d27:	00 20                	add    %ah,(%rax)
     d29:	9e                   	sahf
     d2a:	00 00                	add    %al,(%rax)
     d2c:	00 00                	add    %al,(%rax)
     d2e:	00 00                	add    %al,(%rax)
     d30:	80 9e 00 00 00 00 00 	sbbb   $0x0,0x0(%rsi)
     d37:	00 08                	add    %cl,(%rax)
	...
     d41:	9f                   	lahf
     d42:	00 00                	add    %al,(%rax)
     d44:	00 00                	add    %al,(%rax)
     d46:	00 00                	add    %al,(%rax)
     d48:	48 9f                	rex.W lahf
     d4a:	00 00                	add    %al,(%rax)
     d4c:	00 00                	add    %al,(%rax)
     d4e:	00 00                	add    %al,(%rax)
     d50:	08 00                	or     %al,(%rax)
     d52:	00 00                	add    %al,(%rax)
     d54:	00 00                	add    %al,(%rax)
     d56:	00 00                	add    %al,(%rax)
     d58:	e0 9f                	loopne cf9 <__abi_tag+0x95d>
     d5a:	00 00                	add    %al,(%rax)
     d5c:	00 00                	add    %al,(%rax)
     d5e:	00 00                	add    %al,(%rax)
     d60:	80 a0 00 00 00 00 00 	andb   $0x0,0x0(%rax)
     d67:	00 08                	add    %cl,(%rax)
     d69:	00 00                	add    %al,(%rax)
     d6b:	00 00                	add    %al,(%rax)
     d6d:	00 00                	add    %al,(%rax)
     d6f:	00 c0                	add    %al,%al
     d71:	a0 00 00 00 00 00 00 	movabs 0xa0c8000000000000,%al
     d78:	c8 a0 
     d7a:	00 00                	add    %al,(%rax)
     d7c:	00 00                	add    %al,(%rax)
     d7e:	00 00                	add    %al,(%rax)
     d80:	08 00                	or     %al,(%rax)
     d82:	00 00                	add    %al,(%rax)
     d84:	00 00                	add    %al,(%rax)
     d86:	00 00                	add    %al,(%rax)
     d88:	a0 a1 00 00 00 00 00 	movabs 0x30000000000000a1,%al
     d8f:	00 30 
     d91:	a2 00 00 00 00 00 00 	movabs %al,0x8000000000000
     d98:	08 00 
     d9a:	00 00                	add    %al,(%rax)
     d9c:	00 00                	add    %al,(%rax)
     d9e:	00 00                	add    %al,(%rax)
     da0:	80 a2 00 00 00 00 00 	andb   $0x0,0x0(%rdx)
     da7:	00 48 a3             	add    %cl,-0x5d(%rax)
     daa:	00 00                	add    %al,(%rax)
     dac:	00 00                	add    %al,(%rax)
     dae:	00 00                	add    %al,(%rax)
     db0:	08 00                	or     %al,(%rax)
     db2:	00 00                	add    %al,(%rax)
     db4:	00 00                	add    %al,(%rax)
     db6:	00 00                	add    %al,(%rax)
     db8:	c0 74 00 00 00       	shlb   $0x0,0x0(%rax,%rax,1)
     dbd:	00 00                	add    %al,(%rax)
     dbf:	00 88 a3 00 00 00    	add    %cl,0xa3(%rax)
     dc5:	00 00                	add    %al,(%rax)
     dc7:	00 08                	add    %cl,(%rax)
     dc9:	00 00                	add    %al,(%rax)
     dcb:	00 00                	add    %al,(%rax)
     dcd:	00 00                	add    %al,(%rax)
     dcf:	00 40 a4             	add    %al,-0x5c(%rax)
     dd2:	00 00                	add    %al,(%rax)
     dd4:	00 00                	add    %al,(%rax)
     dd6:	00 00                	add    %al,(%rax)
     dd8:	a0 a4 00 00 00 00 00 	movabs 0x8000000000000a4,%al
     ddf:	00 08 
     de1:	00 00                	add    %al,(%rax)
     de3:	00 00                	add    %al,(%rax)
     de5:	00 00                	add    %al,(%rax)
     de7:	00 80 a9 00 00 00    	add    %al,0xa9(%rax)
     ded:	00 00                	add    %al,(%rax)
     def:	00 d0                	add    %dl,%al
     df1:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
     df2:	00 00                	add    %al,(%rax)
     df4:	00 00                	add    %al,(%rax)
     df6:	00 00                	add    %al,(%rax)
     df8:	08 00                	or     %al,(%rax)
     dfa:	00 00                	add    %al,(%rax)
     dfc:	00 00                	add    %al,(%rax)
     dfe:	00 00                	add    %al,(%rax)
     e00:	20 a5 00 00 00 00    	and    %ah,0x0(%rbp)
     e06:	00 00                	add    %al,(%rax)
     e08:	68 a5 00 00 00       	push   $0xa5
     e0d:	00 00                	add    %al,(%rax)
     e0f:	00 08                	add    %cl,(%rax)
	...
     e19:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
     e1a:	00 00                	add    %al,(%rax)
     e1c:	00 00                	add    %al,(%rax)
     e1e:	00 00                	add    %al,(%rax)
     e20:	90                   	nop
     e21:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
     e22:	00 00                	add    %al,(%rax)
     e24:	00 00                	add    %al,(%rax)
     e26:	00 00                	add    %al,(%rax)
     e28:	08 00                	or     %al,(%rax)
     e2a:	00 00                	add    %al,(%rax)
     e2c:	00 00                	add    %al,(%rax)
     e2e:	00 00                	add    %al,(%rax)
     e30:	e0 a6                	loopne dd8 <__abi_tag+0xa3c>
     e32:	00 00                	add    %al,(%rax)
     e34:	00 00                	add    %al,(%rax)
     e36:	00 00                	add    %al,(%rax)
     e38:	88 a7 00 00 00 00    	mov    %ah,0x0(%rdi)
     e3e:	00 00                	add    %al,(%rax)
     e40:	08 00                	or     %al,(%rax)
     e42:	00 00                	add    %al,(%rax)
     e44:	00 00                	add    %al,(%rax)
     e46:	00 00                	add    %al,(%rax)
     e48:	c0 a7 00 00 00 00 00 	shlb   $0x0,0x0(%rdi)
     e4f:	00 60 a8             	add    %ah,-0x58(%rax)
     e52:	00 00                	add    %al,(%rax)
     e54:	00 00                	add    %al,(%rax)
     e56:	00 00                	add    %al,(%rax)
     e58:	08 00                	or     %al,(%rax)
     e5a:	00 00                	add    %al,(%rax)
     e5c:	00 00                	add    %al,(%rax)
     e5e:	00 00                	add    %al,(%rax)
     e60:	a0 a8 00 00 00 00 00 	movabs 0xe0000000000000a8,%al
     e67:	00 e0 
     e69:	a8 00                	test   $0x0,%al
     e6b:	00 00                	add    %al,(%rax)
     e6d:	00 00                	add    %al,(%rax)
     e6f:	00 08                	add    %cl,(%rax)
     e71:	00 00                	add    %al,(%rax)
     e73:	00 00                	add    %al,(%rax)
     e75:	00 00                	add    %al,(%rax)
     e77:	00 a0 75 00 00 00    	add    %ah,0x75(%rax)
     e7d:	00 00                	add    %al,(%rax)
     e7f:	00 20                	add    %ah,(%rax)
     e81:	aa                   	stos   %al,%es:(%rdi)
     e82:	00 00                	add    %al,(%rax)
     e84:	00 00                	add    %al,(%rax)
     e86:	00 00                	add    %al,(%rax)
     e88:	08 00                	or     %al,(%rax)
     e8a:	00 00                	add    %al,(%rax)
     e8c:	00 00                	add    %al,(%rax)
     e8e:	00 00                	add    %al,(%rax)
     e90:	60                   	(bad)
     e91:	aa                   	stos   %al,%es:(%rdi)
     e92:	00 00                	add    %al,(%rax)
     e94:	00 00                	add    %al,(%rax)
     e96:	00 00                	add    %al,(%rax)
     e98:	88 aa 00 00 00 00    	mov    %ch,0x0(%rdx)
     e9e:	00 00                	add    %al,(%rax)
     ea0:	08 00                	or     %al,(%rax)
     ea2:	00 00                	add    %al,(%rax)
     ea4:	00 00                	add    %al,(%rax)
     ea6:	00 00                	add    %al,(%rax)
     ea8:	40 ab                	rex stos %eax,%es:(%rdi)
     eaa:	00 00                	add    %al,(%rax)
     eac:	00 00                	add    %al,(%rax)
     eae:	00 00                	add    %al,(%rax)
     eb0:	d0 ab 00 00 00 00    	shrb   0x0(%rbx)
     eb6:	00 00                	add    %al,(%rax)
     eb8:	08 00                	or     %al,(%rax)
     eba:	00 00                	add    %al,(%rax)
     ebc:	00 00                	add    %al,(%rax)
     ebe:	00 00                	add    %al,(%rax)
     ec0:	80 76 00 00          	xorb   $0x0,0x0(%rsi)
     ec4:	00 00                	add    %al,(%rax)
     ec6:	00 00                	add    %al,(%rax)
     ec8:	48 ac                	rex.W lods %ds:(%rsi),%al
     eca:	00 00                	add    %al,(%rax)
     ecc:	00 00                	add    %al,(%rax)
     ece:	00 00                	add    %al,(%rax)
     ed0:	08 00                	or     %al,(%rax)
     ed2:	00 00                	add    %al,(%rax)
     ed4:	00 00                	add    %al,(%rax)
     ed6:	00 00                	add    %al,(%rax)
     ed8:	00 ad 00 00 00 00    	add    %ch,0x0(%rbp)
     ede:	00 00                	add    %al,(%rax)
     ee0:	48 ad                	lods   %ds:(%rsi),%rax
     ee2:	00 00                	add    %al,(%rax)
     ee4:	00 00                	add    %al,(%rax)
     ee6:	00 00                	add    %al,(%rax)
     ee8:	08 00                	or     %al,(%rax)
     eea:	00 00                	add    %al,(%rax)
     eec:	00 00                	add    %al,(%rax)
     eee:	00 00                	add    %al,(%rax)
     ef0:	60                   	(bad)
     ef1:	b1 00                	mov    $0x0,%cl
     ef3:	00 00                	add    %al,(%rax)
     ef5:	00 00                	add    %al,(%rax)
     ef7:	00 98 ad 00 00 00    	add    %bl,0xad(%rax)
     efd:	00 00                	add    %al,(%rax)
     eff:	00 08                	add    %cl,(%rax)
     f01:	00 00                	add    %al,(%rax)
     f03:	00 00                	add    %al,(%rax)
     f05:	00 00                	add    %al,(%rax)
     f07:	00 e0                	add    %ah,%al
     f09:	ad                   	lods   %ds:(%rsi),%eax
     f0a:	00 00                	add    %al,(%rax)
     f0c:	00 00                	add    %al,(%rax)
     f0e:	00 00                	add    %al,(%rax)
     f10:	80 ae 00 00 00 00 00 	subb   $0x0,0x0(%rsi)
     f17:	00 08                	add    %cl,(%rax)
     f19:	00 00                	add    %al,(%rax)
     f1b:	00 00                	add    %al,(%rax)
     f1d:	00 00                	add    %al,(%rax)
     f1f:	00 c0                	add    %al,%al
     f21:	ae                   	scas   %es:(%rdi),%al
     f22:	00 00                	add    %al,(%rax)
     f24:	00 00                	add    %al,(%rax)
     f26:	00 00                	add    %al,(%rax)
     f28:	c8 ae 00 00          	enter  $0xae,$0x0
     f2c:	00 00                	add    %al,(%rax)
     f2e:	00 00                	add    %al,(%rax)
     f30:	08 00                	or     %al,(%rax)
     f32:	00 00                	add    %al,(%rax)
     f34:	00 00                	add    %al,(%rax)
     f36:	00 00                	add    %al,(%rax)
     f38:	a0 af 00 00 00 00 00 	movabs 0x30000000000000af,%al
     f3f:	00 30 
     f41:	b0 00                	mov    $0x0,%al
     f43:	00 00                	add    %al,(%rax)
     f45:	00 00                	add    %al,(%rax)
     f47:	00 08                	add    %cl,(%rax)
     f49:	00 00                	add    %al,(%rax)
     f4b:	00 00                	add    %al,(%rax)
     f4d:	00 00                	add    %al,(%rax)
     f4f:	00 80 b0 00 00 00    	add    %al,0xb0(%rax)
     f55:	00 00                	add    %al,(%rax)
     f57:	00 20                	add    %ah,(%rax)
     f59:	b1 00                	mov    $0x0,%cl
     f5b:	00 00                	add    %al,(%rax)
     f5d:	00 00                	add    %al,(%rax)
     f5f:	00 08                	add    %cl,(%rax)
     f61:	00 00                	add    %al,(%rax)
     f63:	00 00                	add    %al,(%rax)
     f65:	00 00                	add    %al,(%rax)
     f67:	00 60 77             	add    %ah,0x77(%rax)
     f6a:	00 00                	add    %al,(%rax)
     f6c:	00 00                	add    %al,(%rax)
     f6e:	00 00                	add    %al,(%rax)
     f70:	c8 b1 00 00          	enter  $0xb1,$0x0
     f74:	00 00                	add    %al,(%rax)
     f76:	00 00                	add    %al,(%rax)
     f78:	08 00                	or     %al,(%rax)
     f7a:	00 00                	add    %al,(%rax)
     f7c:	00 00                	add    %al,(%rax)
     f7e:	00 00                	add    %al,(%rax)
     f80:	40 b2 00             	rex mov $0x0,%dl
     f83:	00 00                	add    %al,(%rax)
     f85:	00 00                	add    %al,(%rax)
     f87:	00 e8                	add    %ch,%al
     f89:	b2 00                	mov    $0x0,%dl
     f8b:	00 00                	add    %al,(%rax)
     f8d:	00 00                	add    %al,(%rax)
     f8f:	00 08                	add    %cl,(%rax)
     f91:	00 00                	add    %al,(%rax)
     f93:	00 00                	add    %al,(%rax)
     f95:	00 00                	add    %al,(%rax)
     f97:	00 40 78             	add    %al,0x78(%rax)
     f9a:	00 00                	add    %al,(%rax)
     f9c:	00 00                	add    %al,(%rax)
     f9e:	00 00                	add    %al,(%rax)
     fa0:	b0 b3                	mov    $0xb3,%al
     fa2:	00 00                	add    %al,(%rax)
     fa4:	00 00                	add    %al,(%rax)
     fa6:	00 00                	add    %al,(%rax)
     fa8:	08 00                	or     %al,(%rax)
     faa:	00 00                	add    %al,(%rax)
     fac:	00 00                	add    %al,(%rax)
     fae:	00 00                	add    %al,(%rax)
     fb0:	00 b4 00 00 00 00 00 	add    %dh,0x0(%rax,%rax,1)
     fb7:	00 08                	add    %cl,(%rax)
     fb9:	b4 00                	mov    $0x0,%ah
     fbb:	00 00                	add    %al,(%rax)
     fbd:	00 00                	add    %al,(%rax)
     fbf:	00 08                	add    %cl,(%rax)
	...
     fc9:	bb 00 00 00 00       	mov    $0x0,%ebx
     fce:	00 00                	add    %al,(%rax)
     fd0:	78 b4                	js     f86 <__abi_tag+0xbea>
     fd2:	00 00                	add    %al,(%rax)
     fd4:	00 00                	add    %al,(%rax)
     fd6:	00 00                	add    %al,(%rax)
     fd8:	08 00                	or     %al,(%rax)
     fda:	00 00                	add    %al,(%rax)
     fdc:	00 00                	add    %al,(%rax)
     fde:	00 00                	add    %al,(%rax)
     fe0:	e0 b4                	loopne f96 <__abi_tag+0xbfa>
     fe2:	00 00                	add    %al,(%rax)
     fe4:	00 00                	add    %al,(%rax)
     fe6:	00 00                	add    %al,(%rax)
     fe8:	18 b5 00 00 00 00    	sbb    %dh,0x0(%rbp)
     fee:	00 00                	add    %al,(%rax)
     ff0:	08 00                	or     %al,(%rax)
     ff2:	00 00                	add    %al,(%rax)
     ff4:	00 00                	add    %al,(%rax)
     ff6:	00 00                	add    %al,(%rax)
     ff8:	c0 b5 00 00 00 00 00 	shlb   $0x0,0x0(%rbp)
     fff:	00 50 b6             	add    %dl,-0x4a(%rax)
    1002:	00 00                	add    %al,(%rax)
    1004:	00 00                	add    %al,(%rax)
    1006:	00 00                	add    %al,(%rax)
    1008:	08 00                	or     %al,(%rax)
    100a:	00 00                	add    %al,(%rax)
    100c:	00 00                	add    %al,(%rax)
    100e:	00 00                	add    %al,(%rax)
    1010:	a0 b6 00 00 00 00 00 	movabs 0xa8000000000000b6,%al
    1017:	00 a8 
    1019:	b6 00                	mov    $0x0,%dh
    101b:	00 00                	add    %al,(%rax)
    101d:	00 00                	add    %al,(%rax)
    101f:	00 08                	add    %cl,(%rax)
    1021:	00 00                	add    %al,(%rax)
    1023:	00 00                	add    %al,(%rax)
    1025:	00 00                	add    %al,(%rax)
    1027:	00 80 b7 00 00 00    	add    %al,0xb7(%rax)
    102d:	00 00                	add    %al,(%rax)
    102f:	00 e8                	add    %ch,%al
    1031:	b7 00                	mov    $0x0,%bh
    1033:	00 00                	add    %al,(%rax)
    1035:	00 00                	add    %al,(%rax)
    1037:	00 08                	add    %cl,(%rax)
    1039:	00 00                	add    %al,(%rax)
    103b:	00 00                	add    %al,(%rax)
    103d:	00 00                	add    %al,(%rax)
    103f:	00 60 b8             	add    %ah,-0x48(%rax)
    1042:	00 00                	add    %al,(%rax)
    1044:	00 00                	add    %al,(%rax)
    1046:	00 00                	add    %al,(%rax)
    1048:	c8 b8 00 00          	enter  $0xb8,$0x0
    104c:	00 00                	add    %al,(%rax)
    104e:	00 00                	add    %al,(%rax)
    1050:	08 00                	or     %al,(%rax)
    1052:	00 00                	add    %al,(%rax)
    1054:	00 00                	add    %al,(%rax)
    1056:	00 00                	add    %al,(%rax)
    1058:	40 b9 00 00 00 00    	rex mov $0x0,%ecx
    105e:	00 00                	add    %al,(%rax)
    1060:	68 b9 00 00 00       	push   $0xb9
    1065:	00 00                	add    %al,(%rax)
    1067:	00 08                	add    %cl,(%rax)
    1069:	00 00                	add    %al,(%rax)
    106b:	00 00                	add    %al,(%rax)
    106d:	00 00                	add    %al,(%rax)
    106f:	00 20                	add    %ah,(%rax)
    1071:	ba 00 00 00 00       	mov    $0x0,%edx
    1076:	00 00                	add    %al,(%rax)
    1078:	b0 ba                	mov    $0xba,%al
    107a:	00 00                	add    %al,(%rax)
    107c:	00 00                	add    %al,(%rax)
    107e:	00 00                	add    %al,(%rax)
    1080:	08 00                	or     %al,(%rax)
    1082:	00 00                	add    %al,(%rax)
    1084:	00 00                	add    %al,(%rax)
    1086:	00 00                	add    %al,(%rax)
    1088:	20 79 00             	and    %bh,0x0(%rcx)
    108b:	00 00                	add    %al,(%rax)
    108d:	00 00                	add    %al,(%rax)
    108f:	00 38                	add    %bh,(%rax)
    1091:	bb 00 00 00 00       	mov    $0x0,%ebx
    1096:	00 00                	add    %al,(%rax)
    1098:	08 00                	or     %al,(%rax)
    109a:	00 00                	add    %al,(%rax)
    109c:	00 00                	add    %al,(%rax)
    109e:	00 00                	add    %al,(%rax)
    10a0:	e0 bb                	loopne 105d <__abi_tag+0xcc1>
    10a2:	00 00                	add    %al,(%rax)
    10a4:	00 00                	add    %al,(%rax)
    10a6:	00 00                	add    %al,(%rax)
    10a8:	48 bc 00 00 00 00 00 	movabs $0x8000000000000,%rsp
    10af:	00 08 00 
    10b2:	00 00                	add    %al,(%rax)
    10b4:	00 00                	add    %al,(%rax)
    10b6:	00 00                	add    %al,(%rax)
    10b8:	c0 bc 00 00 00 00 00 	sarb   $0x0,0x0(%rax,%rax,1)
    10bf:	00 
    10c0:	c8 bc 00 00          	enter  $0xbc,$0x0
    10c4:	00 00                	add    %al,(%rax)
    10c6:	00 00                	add    %al,(%rax)
    10c8:	08 00                	or     %al,(%rax)
    10ca:	00 00                	add    %al,(%rax)
    10cc:	00 00                	add    %al,(%rax)
    10ce:	00 00                	add    %al,(%rax)
    10d0:	a0 bd 00 00 00 00 00 	movabs 0x40000000000000bd,%al
    10d7:	00 40 
    10d9:	be 00 00 00 00       	mov    $0x0,%esi
    10de:	00 00                	add    %al,(%rax)
    10e0:	08 00                	or     %al,(%rax)
    10e2:	00 00                	add    %al,(%rax)
    10e4:	00 00                	add    %al,(%rax)
    10e6:	00 00                	add    %al,(%rax)
    10e8:	80 be 00 00 00 00 00 	cmpb   $0x0,0x0(%rsi)
    10ef:	00 c8                	add    %cl,%al
    10f1:	be 00 00 00 00       	mov    $0x0,%esi
    10f6:	00 00                	add    %al,(%rax)
    10f8:	08 00                	or     %al,(%rax)
    10fa:	00 00                	add    %al,(%rax)
    10fc:	00 00                	add    %al,(%rax)
    10fe:	00 00                	add    %al,(%rax)
    1100:	60                   	(bad)
    1101:	bf 00 00 00 00       	mov    $0x0,%edi
    1106:	00 00                	add    %al,(%rax)
    1108:	f8                   	clc
    1109:	bf 00 00 00 00       	mov    $0x0,%edi
    110e:	00 00                	add    %al,(%rax)
    1110:	08 00                	or     %al,(%rax)
    1112:	00 00                	add    %al,(%rax)
    1114:	00 00                	add    %al,(%rax)
    1116:	00 00                	add    %al,(%rax)
    1118:	40 c0 00 00          	rex rolb $0x0,(%rax)
    111c:	00 00                	add    %al,(%rax)
    111e:	00 00                	add    %al,(%rax)
    1120:	a8 c0                	test   $0xc0,%al
    1122:	00 00                	add    %al,(%rax)
    1124:	00 00                	add    %al,(%rax)
    1126:	00 00                	add    %al,(%rax)
    1128:	08 00                	or     %al,(%rax)
    112a:	00 00                	add    %al,(%rax)
    112c:	00 00                	add    %al,(%rax)
    112e:	00 00                	add    %al,(%rax)
    1130:	00 7a 00             	add    %bh,0x0(%rdx)
    1133:	00 00                	add    %al,(%rax)
    1135:	00 00                	add    %al,(%rax)
    1137:	00 28                	add    %ch,(%rax)
    1139:	c1 00 00             	roll   $0x0,(%rax)
    113c:	00 00                	add    %al,(%rax)
    113e:	00 00                	add    %al,(%rax)
    1140:	08 00                	or     %al,(%rax)
    1142:	00 00                	add    %al,(%rax)
    1144:	00 00                	add    %al,(%rax)
    1146:	00 00                	add    %al,(%rax)
    1148:	00 c2                	add    %al,%dl
    114a:	00 00                	add    %al,(%rax)
    114c:	00 00                	add    %al,(%rax)
    114e:	00 00                	add    %al,(%rax)
    1150:	10 c2                	adc    %al,%dl
    1152:	00 00                	add    %al,(%rax)
    1154:	00 00                	add    %al,(%rax)
    1156:	00 00                	add    %al,(%rax)
    1158:	08 00                	or     %al,(%rax)
    115a:	00 00                	add    %al,(%rax)
    115c:	00 00                	add    %al,(%rax)
    115e:	00 00                	add    %al,(%rax)
    1160:	60                   	(bad)
    1161:	c6 00 00             	movb   $0x0,(%rax)
    1164:	00 00                	add    %al,(%rax)
    1166:	00 00                	add    %al,(%rax)
    1168:	20 c2                	and    %al,%dl
    116a:	00 00                	add    %al,(%rax)
    116c:	00 00                	add    %al,(%rax)
    116e:	00 00                	add    %al,(%rax)
    1170:	08 00                	or     %al,(%rax)
    1172:	00 00                	add    %al,(%rax)
    1174:	00 00                	add    %al,(%rax)
    1176:	00 00                	add    %al,(%rax)
    1178:	e0 c2                	loopne 113c <__abi_tag+0xda0>
    117a:	00 00                	add    %al,(%rax)
    117c:	00 00                	add    %al,(%rax)
    117e:	00 00                	add    %al,(%rax)
    1180:	a8 c3                	test   $0xc3,%al
    1182:	00 00                	add    %al,(%rax)
    1184:	00 00                	add    %al,(%rax)
    1186:	00 00                	add    %al,(%rax)
    1188:	08 00                	or     %al,(%rax)
    118a:	00 00                	add    %al,(%rax)
    118c:	00 00                	add    %al,(%rax)
    118e:	00 00                	add    %al,(%rax)
    1190:	c0 c3 00             	rol    $0x0,%bl
    1193:	00 00                	add    %al,(%rax)
    1195:	00 00                	add    %al,(%rax)
    1197:	00 d0                	add    %dl,%al
    1199:	c3                   	ret
    119a:	00 00                	add    %al,(%rax)
    119c:	00 00                	add    %al,(%rax)
    119e:	00 00                	add    %al,(%rax)
    11a0:	08 00                	or     %al,(%rax)
    11a2:	00 00                	add    %al,(%rax)
    11a4:	00 00                	add    %al,(%rax)
    11a6:	00 00                	add    %al,(%rax)
    11a8:	a0 c4 00 00 00 00 00 	movabs 0x48000000000000c4,%al
    11af:	00 48 
    11b1:	c5 00 00             	(bad)
    11b4:	00 00                	add    %al,(%rax)
    11b6:	00 00                	add    %al,(%rax)
    11b8:	08 00                	or     %al,(%rax)
    11ba:	00 00                	add    %al,(%rax)
    11bc:	00 00                	add    %al,(%rax)
    11be:	00 00                	add    %al,(%rax)
    11c0:	80 c5 00             	add    $0x0,%ch
    11c3:	00 00                	add    %al,(%rax)
    11c5:	00 00                	add    %al,(%rax)
    11c7:	00 b8 c5 00 00 00    	add    %bh,0xc5(%rax)
    11cd:	00 00                	add    %al,(%rax)
    11cf:	00 08                	add    %cl,(%rax)
    11d1:	00 00                	add    %al,(%rax)
    11d3:	00 00                	add    %al,(%rax)
    11d5:	00 00                	add    %al,(%rax)
    11d7:	00 e0                	add    %ah,%al
    11d9:	7a 00                	jp     11db <__abi_tag+0xe3f>
    11db:	00 00                	add    %al,(%rax)
    11dd:	00 00                	add    %al,(%rax)
    11df:	00 28                	add    %ch,(%rax)
    11e1:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    11e7:	00 08                	add    %cl,(%rax)
    11e9:	00 00                	add    %al,(%rax)
    11eb:	00 00                	add    %al,(%rax)
    11ed:	00 00                	add    %al,(%rax)
    11ef:	00 40 c7             	add    %al,-0x39(%rax)
    11f2:	00 00                	add    %al,(%rax)
    11f4:	00 00                	add    %al,(%rax)
    11f6:	00 00                	add    %al,(%rax)
    11f8:	d0 c7                	rol    %bh
    11fa:	00 00                	add    %al,(%rax)
    11fc:	00 00                	add    %al,(%rax)
    11fe:	00 00                	add    %al,(%rax)
    1200:	08 00                	or     %al,(%rax)
    1202:	00 00                	add    %al,(%rax)
    1204:	00 00                	add    %al,(%rax)
    1206:	00 00                	add    %al,(%rax)
    1208:	20 c8                	and    %cl,%al
    120a:	00 00                	add    %al,(%rax)
    120c:	00 00                	add    %al,(%rax)
    120e:	00 00                	add    %al,(%rax)
    1210:	68 c8 00 00 00       	push   $0xc8
    1215:	00 00                	add    %al,(%rax)
    1217:	00 08                	add    %cl,(%rax)
	...
    1221:	c9                   	leave
    1222:	00 00                	add    %al,(%rax)
    1224:	00 00                	add    %al,(%rax)
    1226:	00 00                	add    %al,(%rax)
    1228:	70 c9                	jo     11f3 <__abi_tag+0xe57>
    122a:	00 00                	add    %al,(%rax)
    122c:	00 00                	add    %al,(%rax)
    122e:	00 00                	add    %al,(%rax)
    1230:	08 00                	or     %al,(%rax)
    1232:	00 00                	add    %al,(%rax)
    1234:	00 00                	add    %al,(%rax)
    1236:	00 00                	add    %al,(%rax)
    1238:	e0 c9                	loopne 1203 <__abi_tag+0xe67>
    123a:	00 00                	add    %al,(%rax)
    123c:	00 00                	add    %al,(%rax)
    123e:	00 00                	add    %al,(%rax)
    1240:	80 ca 00             	or     $0x0,%dl
    1243:	00 00                	add    %al,(%rax)
    1245:	00 00                	add    %al,(%rax)
    1247:	00 08                	add    %cl,(%rax)
    1249:	00 00                	add    %al,(%rax)
    124b:	00 00                	add    %al,(%rax)
    124d:	00 00                	add    %al,(%rax)
    124f:	00 c0                	add    %al,%al
    1251:	ca 00 00             	lret   $0x0
    1254:	00 00                	add    %al,(%rax)
    1256:	00 00                	add    %al,(%rax)
    1258:	00 cb                	add    %cl,%bl
    125a:	00 00                	add    %al,(%rax)
    125c:	00 00                	add    %al,(%rax)
    125e:	00 00                	add    %al,(%rax)
    1260:	08 00                	or     %al,(%rax)
    1262:	00 00                	add    %al,(%rax)
    1264:	00 00                	add    %al,(%rax)
    1266:	00 00                	add    %al,(%rax)
    1268:	c0 7b 00 00          	sarb   $0x0,0x0(%rbx)
    126c:	00 00                	add    %al,(%rax)
    126e:	00 00                	add    %al,(%rax)
    1270:	a8 cb                	test   $0xcb,%al
    1272:	00 00                	add    %al,(%rax)
    1274:	00 00                	add    %al,(%rax)
    1276:	00 00                	add    %al,(%rax)
    1278:	08 00                	or     %al,(%rax)
    127a:	00 00                	add    %al,(%rax)
    127c:	00 00                	add    %al,(%rax)
    127e:	00 00                	add    %al,(%rax)
    1280:	a0 d2 00 00 00 00 00 	movabs 0xe8000000000000d2,%al
    1287:	00 e8 
    1289:	cb                   	lret
    128a:	00 00                	add    %al,(%rax)
    128c:	00 00                	add    %al,(%rax)
    128e:	00 00                	add    %al,(%rax)
    1290:	08 00                	or     %al,(%rax)
    1292:	00 00                	add    %al,(%rax)
    1294:	00 00                	add    %al,(%rax)
    1296:	00 00                	add    %al,(%rax)
    1298:	80 cc 00             	or     $0x0,%ah
    129b:	00 00                	add    %al,(%rax)
    129d:	00 00                	add    %al,(%rax)
    129f:	00 d8                	add    %bl,%al
    12a1:	cc                   	int3
    12a2:	00 00                	add    %al,(%rax)
    12a4:	00 00                	add    %al,(%rax)
    12a6:	00 00                	add    %al,(%rax)
    12a8:	08 00                	or     %al,(%rax)
    12aa:	00 00                	add    %al,(%rax)
    12ac:	00 00                	add    %al,(%rax)
    12ae:	00 00                	add    %al,(%rax)
    12b0:	00 d0                	add    %dl,%al
    12b2:	00 00                	add    %al,(%rax)
    12b4:	00 00                	add    %al,(%rax)
    12b6:	00 00                	add    %al,(%rax)
    12b8:	20 cd                	and    %cl,%ch
    12ba:	00 00                	add    %al,(%rax)
    12bc:	00 00                	add    %al,(%rax)
    12be:	00 00                	add    %al,(%rax)
    12c0:	08 00                	or     %al,(%rax)
    12c2:	00 00                	add    %al,(%rax)
    12c4:	00 00                	add    %al,(%rax)
    12c6:	00 00                	add    %al,(%rax)
    12c8:	60                   	(bad)
    12c9:	cd 00                	int    $0x0
    12cb:	00 00                	add    %al,(%rax)
    12cd:	00 00                	add    %al,(%rax)
    12cf:	00 d8                	add    %bl,%al
    12d1:	cd 00                	int    $0x0
    12d3:	00 00                	add    %al,(%rax)
    12d5:	00 00                	add    %al,(%rax)
    12d7:	00 08                	add    %cl,(%rax)
    12d9:	00 00                	add    %al,(%rax)
    12db:	00 00                	add    %al,(%rax)
    12dd:	00 00                	add    %al,(%rax)
    12df:	00 40 ce             	add    %al,-0x32(%rax)
    12e2:	00 00                	add    %al,(%rax)
    12e4:	00 00                	add    %al,(%rax)
    12e6:	00 00                	add    %al,(%rax)
    12e8:	d0 ce                	ror    %dh
    12ea:	00 00                	add    %al,(%rax)
    12ec:	00 00                	add    %al,(%rax)
    12ee:	00 00                	add    %al,(%rax)
    12f0:	08 00                	or     %al,(%rax)
    12f2:	00 00                	add    %al,(%rax)
    12f4:	00 00                	add    %al,(%rax)
    12f6:	00 00                	add    %al,(%rax)
    12f8:	20 cf                	and    %cl,%bh
    12fa:	00 00                	add    %al,(%rax)
    12fc:	00 00                	add    %al,(%rax)
    12fe:	00 00                	add    %al,(%rax)
    1300:	68 cf 00 00 00       	push   $0xcf
    1305:	00 00                	add    %al,(%rax)
    1307:	00 08                	add    %cl,(%rax)
    1309:	00 00                	add    %al,(%rax)
    130b:	00 00                	add    %al,(%rax)
    130d:	00 00                	add    %al,(%rax)
    130f:	00 a0 7c 00 00 00    	add    %ah,0x7c(%rax)
    1315:	00 00                	add    %al,(%rax)
    1317:	00 08                	add    %cl,(%rax)
    1319:	d0 00                	rolb   (%rax)
    131b:	00 00                	add    %al,(%rax)
    131d:	00 00                	add    %al,(%rax)
    131f:	00 08                	add    %cl,(%rax)
    1321:	00 00                	add    %al,(%rax)
    1323:	00 00                	add    %al,(%rax)
    1325:	00 00                	add    %al,(%rax)
    1327:	00 e0                	add    %ah,%al
    1329:	d0 00                	rolb   (%rax)
    132b:	00 00                	add    %al,(%rax)
    132d:	00 00                	add    %al,(%rax)
    132f:	00 70 d1             	add    %dh,-0x2f(%rax)
    1332:	00 00                	add    %al,(%rax)
    1334:	00 00                	add    %al,(%rax)
    1336:	00 00                	add    %al,(%rax)
    1338:	08 00                	or     %al,(%rax)
    133a:	00 00                	add    %al,(%rax)
    133c:	00 00                	add    %al,(%rax)
    133e:	00 00                	add    %al,(%rax)
    1340:	c0 d1 00             	rcl    $0x0,%cl
    1343:	00 00                	add    %al,(%rax)
    1345:	00 00                	add    %al,(%rax)
    1347:	00 08                	add    %cl,(%rax)
    1349:	d2 00                	rolb   %cl,(%rax)
    134b:	00 00                	add    %al,(%rax)
    134d:	00 00                	add    %al,(%rax)
    134f:	00 08                	add    %cl,(%rax)
    1351:	00 00                	add    %al,(%rax)
    1353:	00 00                	add    %al,(%rax)
    1355:	00 00                	add    %al,(%rax)
    1357:	00 80 7d 00 00 00    	add    %al,0x7d(%rax)
    135d:	00 00                	add    %al,(%rax)
    135f:	00 f8                	add    %bh,%al
    1361:	d2 00                	rolb   %cl,(%rax)
    1363:	00 00                	add    %al,(%rax)
    1365:	00 00                	add    %al,(%rax)
    1367:	00 08                	add    %cl,(%rax)
    1369:	00 00                	add    %al,(%rax)
    136b:	00 00                	add    %al,(%rax)
    136d:	00 00                	add    %al,(%rax)
    136f:	00 80 d3 00 00 00    	add    %al,0xd3(%rax)
    1375:	00 00                	add    %al,(%rax)
    1377:	00 28                	add    %ch,(%rax)
    1379:	d4                   	(bad)
    137a:	00 00                	add    %al,(%rax)
    137c:	00 00                	add    %al,(%rax)
    137e:	00 00                	add    %al,(%rax)
    1380:	08 00                	or     %al,(%rax)
    1382:	00 00                	add    %al,(%rax)
    1384:	00 00                	add    %al,(%rax)
    1386:	00 00                	add    %al,(%rax)
    1388:	60                   	(bad)
    1389:	d4                   	(bad)
    138a:	00 00                	add    %al,(%rax)
    138c:	00 00                	add    %al,(%rax)
    138e:	00 00                	add    %al,(%rax)
    1390:	f0 d4                	lock (bad)
    1392:	00 00                	add    %al,(%rax)
    1394:	00 00                	add    %al,(%rax)
    1396:	00 00                	add    %al,(%rax)
    1398:	08 00                	or     %al,(%rax)
    139a:	00 00                	add    %al,(%rax)
    139c:	00 00                	add    %al,(%rax)
    139e:	00 00                	add    %al,(%rax)
    13a0:	40 d5                	rex (bad)
    13a2:	00 00                	add    %al,(%rax)
    13a4:	00 00                	add    %al,(%rax)
    13a6:	00 00                	add    %al,(%rax)
    13a8:	68 d5 00 00 00       	push   $0xd5
    13ad:	00 00                	add    %al,(%rax)
    13af:	00 08                	add    %cl,(%rax)
    13b1:	00 00                	add    %al,(%rax)
    13b3:	00 00                	add    %al,(%rax)
    13b5:	00 00                	add    %al,(%rax)
    13b7:	00 20                	add    %ah,(%rax)
    13b9:	d6                   	(bad)
    13ba:	00 00                	add    %al,(%rax)
    13bc:	00 00                	add    %al,(%rax)
    13be:	00 00                	add    %al,(%rax)
    13c0:	68 d6 00 00 00       	push   $0xd6
    13c5:	00 00                	add    %al,(%rax)
    13c7:	00 08                	add    %cl,(%rax)
    13c9:	00 00                	add    %al,(%rax)
    13cb:	00 00                	add    %al,(%rax)
    13cd:	00 00                	add    %al,(%rax)
    13cf:	00 60 7e             	add    %ah,0x7e(%rax)
    13d2:	00 00                	add    %al,(%rax)
    13d4:	00 00                	add    %al,(%rax)
    13d6:	00 00                	add    %al,(%rax)
    13d8:	90                   	nop
    13d9:	d7                   	xlat   %ds:(%rbx)
    13da:	00 00                	add    %al,(%rax)
    13dc:	00 00                	add    %al,(%rax)
    13de:	00 00                	add    %al,(%rax)
    13e0:	08 00                	or     %al,(%rax)
    13e2:	00 00                	add    %al,(%rax)
    13e4:	00 00                	add    %al,(%rax)
    13e6:	00 00                	add    %al,(%rax)
    13e8:	e0 d7                	loopne 13c1 <__abi_tag+0x1025>
    13ea:	00 00                	add    %al,(%rax)
    13ec:	00 00                	add    %al,(%rax)
    13ee:	00 00                	add    %al,(%rax)
    13f0:	08 d8                	or     %bl,%al
    13f2:	00 00                	add    %al,(%rax)
    13f4:	00 00                	add    %al,(%rax)
    13f6:	00 00                	add    %al,(%rax)
    13f8:	08 00                	or     %al,(%rax)
    13fa:	00 00                	add    %al,(%rax)
    13fc:	00 00                	add    %al,(%rax)
    13fe:	00 00                	add    %al,(%rax)
    1400:	20 dd                	and    %bl,%ch
    1402:	00 00                	add    %al,(%rax)
    1404:	00 00                	add    %al,(%rax)
    1406:	00 00                	add    %al,(%rax)
    1408:	28 d8                	sub    %bl,%al
    140a:	00 00                	add    %al,(%rax)
    140c:	00 00                	add    %al,(%rax)
    140e:	00 00                	add    %al,(%rax)
    1410:	08 00                	or     %al,(%rax)
    1412:	00 00                	add    %al,(%rax)
    1414:	00 00                	add    %al,(%rax)
    1416:	00 00                	add    %al,(%rax)
    1418:	c0 d8 00             	rcr    $0x0,%al
    141b:	00 00                	add    %al,(%rax)
    141d:	00 00                	add    %al,(%rax)
    141f:	00 e8                	add    %ch,%al
    1421:	d8 00                	fadds  (%rax)
    1423:	00 00                	add    %al,(%rax)
    1425:	00 00                	add    %al,(%rax)
    1427:	00 08                	add    %cl,(%rax)
    1429:	00 00                	add    %al,(%rax)
    142b:	00 00                	add    %al,(%rax)
    142d:	00 00                	add    %al,(%rax)
    142f:	00 a0 d9 00 00 00    	add    %ah,0xd9(%rax)
    1435:	00 00                	add    %al,(%rax)
    1437:	00 50 da             	add    %dl,-0x26(%rax)
    143a:	00 00                	add    %al,(%rax)
    143c:	00 00                	add    %al,(%rax)
    143e:	00 00                	add    %al,(%rax)
    1440:	08 00                	or     %al,(%rax)
    1442:	00 00                	add    %al,(%rax)
    1444:	00 00                	add    %al,(%rax)
    1446:	00 00                	add    %al,(%rax)
    1448:	80 da 00             	sbb    $0x0,%dl
    144b:	00 00                	add    %al,(%rax)
    144d:	00 00                	add    %al,(%rax)
    144f:	00 f8                	add    %bh,%al
    1451:	da 00                	fiaddl (%rax)
    1453:	00 00                	add    %al,(%rax)
    1455:	00 00                	add    %al,(%rax)
    1457:	00 08                	add    %cl,(%rax)
    1459:	00 00                	add    %al,(%rax)
    145b:	00 00                	add    %al,(%rax)
    145d:	00 00                	add    %al,(%rax)
    145f:	00 60 db             	add    %ah,-0x25(%rax)
    1462:	00 00                	add    %al,(%rax)
    1464:	00 00                	add    %al,(%rax)
    1466:	00 00                	add    %al,(%rax)
    1468:	08 dc                	or     %bl,%ah
    146a:	00 00                	add    %al,(%rax)
    146c:	00 00                	add    %al,(%rax)
    146e:	00 00                	add    %al,(%rax)
    1470:	08 00                	or     %al,(%rax)
    1472:	00 00                	add    %al,(%rax)
    1474:	00 00                	add    %al,(%rax)
    1476:	00 00                	add    %al,(%rax)
    1478:	40 dc 00             	rex faddl (%rax)
    147b:	00 00                	add    %al,(%rax)
    147d:	00 00                	add    %al,(%rax)
    147f:	00 d8                	add    %bl,%al
    1481:	dc 00                	faddl  (%rax)
    1483:	00 00                	add    %al,(%rax)
    1485:	00 00                	add    %al,(%rax)
    1487:	00 08                	add    %cl,(%rax)
    1489:	00 00                	add    %al,(%rax)
    148b:	00 00                	add    %al,(%rax)
    148d:	00 00                	add    %al,(%rax)
    148f:	00 40 7f             	add    %al,0x7f(%rax)
    1492:	00 00                	add    %al,(%rax)
    1494:	00 00                	add    %al,(%rax)
    1496:	00 00                	add    %al,(%rax)
    1498:	48 dd 00             	rex.W fldl (%rax)
    149b:	00 00                	add    %al,(%rax)
    149d:	00 00                	add    %al,(%rax)
    149f:	00 08                	add    %cl,(%rax)
	...
    14a9:	de 00                	fiadds (%rax)
    14ab:	00 00                	add    %al,(%rax)
    14ad:	00 00                	add    %al,(%rax)
    14af:	00 a0 de 00 00 00    	add    %ah,0xde(%rax)
    14b5:	00 00                	add    %al,(%rax)
    14b7:	00 08                	add    %cl,(%rax)
    14b9:	00 00                	add    %al,(%rax)
    14bb:	00 00                	add    %al,(%rax)
    14bd:	00 00                	add    %al,(%rax)
    14bf:	00 e0                	add    %ah,%al
    14c1:	de 00                	fiadds (%rax)
    14c3:	00 00                	add    %al,(%rax)
    14c5:	00 00                	add    %al,(%rax)
    14c7:	00 28                	add    %ch,(%rax)
    14c9:	df 00                	filds  (%rax)
    14cb:	00 00                	add    %al,(%rax)
    14cd:	00 00                	add    %al,(%rax)
    14cf:	00 08                	add    %cl,(%rax)
    14d1:	00 00                	add    %al,(%rax)
    14d3:	00 00                	add    %al,(%rax)
    14d5:	00 00                	add    %al,(%rax)
    14d7:	00 c0                	add    %al,%al
    14d9:	df 00                	filds  (%rax)
    14db:	00 00                	add    %al,(%rax)
    14dd:	00 00                	add    %al,(%rax)
    14df:	00 30                	add    %dh,(%rax)
    14e1:	e0 00                	loopne 14e3 <__abi_tag+0x1147>
    14e3:	00 00                	add    %al,(%rax)
    14e5:	00 00                	add    %al,(%rax)
    14e7:	00 08                	add    %cl,(%rax)
    14e9:	00 00                	add    %al,(%rax)
    14eb:	00 00                	add    %al,(%rax)
    14ed:	00 00                	add    %al,(%rax)
    14ef:	00 a0 e0 00 00 00    	add    %ah,0xe0(%rax)
    14f5:	00 00                	add    %al,(%rax)
    14f7:	00 d8                	add    %bl,%al
    14f9:	e0 00                	loopne 14fb <__abi_tag+0x115f>
    14fb:	00 00                	add    %al,(%rax)
    14fd:	00 00                	add    %al,(%rax)
    14ff:	00 08                	add    %cl,(%rax)
    1501:	00 00                	add    %al,(%rax)
    1503:	00 00                	add    %al,(%rax)
    1505:	00 00                	add    %al,(%rax)
    1507:	00 20                	add    %ah,(%rax)
    1509:	80 00 00             	addb   $0x0,(%rax)
    150c:	00 00                	add    %al,(%rax)
    150e:	00 00                	add    %al,(%rax)
    1510:	10 e2                	adc    %ah,%dl
    1512:	00 00                	add    %al,(%rax)
    1514:	00 00                	add    %al,(%rax)
    1516:	00 00                	add    %al,(%rax)
    1518:	08 00                	or     %al,(%rax)
    151a:	00 00                	add    %al,(%rax)
    151c:	00 00                	add    %al,(%rax)
    151e:	00 00                	add    %al,(%rax)
    1520:	60                   	(bad)
    1521:	e2 00                	loop   1523 <__abi_tag+0x1187>
    1523:	00 00                	add    %al,(%rax)
    1525:	00 00                	add    %al,(%rax)
    1527:	00 68 e2             	add    %ch,-0x1e(%rax)
    152a:	00 00                	add    %al,(%rax)
    152c:	00 00                	add    %al,(%rax)
    152e:	00 00                	add    %al,(%rax)
    1530:	08 00                	or     %al,(%rax)
    1532:	00 00                	add    %al,(%rax)
    1534:	00 00                	add    %al,(%rax)
    1536:	00 00                	add    %al,(%rax)
    1538:	e0 e5                	loopne 151f <__abi_tag+0x1183>
    153a:	00 00                	add    %al,(%rax)
    153c:	00 00                	add    %al,(%rax)
    153e:	00 00                	add    %al,(%rax)
    1540:	d8 e2                	fsub   %st(2),%st
    1542:	00 00                	add    %al,(%rax)
    1544:	00 00                	add    %al,(%rax)
    1546:	00 00                	add    %al,(%rax)
    1548:	08 00                	or     %al,(%rax)
    154a:	00 00                	add    %al,(%rax)
    154c:	00 00                	add    %al,(%rax)
    154e:	00 00                	add    %al,(%rax)
    1550:	40 e3 00             	rex jrcxz 1553 <__abi_tag+0x11b7>
    1553:	00 00                	add    %al,(%rax)
    1555:	00 00                	add    %al,(%rax)
    1557:	00 10                	add    %dl,(%rax)
    1559:	e4 00                	in     $0x0,%al
    155b:	00 00                	add    %al,(%rax)
    155d:	00 00                	add    %al,(%rax)
    155f:	00 08                	add    %cl,(%rax)
    1561:	00 00                	add    %al,(%rax)
    1563:	00 00                	add    %al,(%rax)
    1565:	00 00                	add    %al,(%rax)
    1567:	00 20                	add    %ah,(%rax)
    1569:	e4 00                	in     $0x0,%al
    156b:	00 00                	add    %al,(%rax)
    156d:	00 00                	add    %al,(%rax)
    156f:	00 48 e4             	add    %cl,-0x1c(%rax)
    1572:	00 00                	add    %al,(%rax)
    1574:	00 00                	add    %al,(%rax)
    1576:	00 00                	add    %al,(%rax)
    1578:	08 00                	or     %al,(%rax)
    157a:	00 00                	add    %al,(%rax)
    157c:	00 00                	add    %al,(%rax)
    157e:	00 00                	add    %al,(%rax)
    1580:	00 e5                	add    %ah,%ch
    1582:	00 00                	add    %al,(%rax)
    1584:	00 00                	add    %al,(%rax)
    1586:	00 00                	add    %al,(%rax)
    1588:	70 e5                	jo     156f <__abi_tag+0x11d3>
    158a:	00 00                	add    %al,(%rax)
    158c:	00 00                	add    %al,(%rax)
    158e:	00 00                	add    %al,(%rax)
    1590:	08 00                	or     %al,(%rax)
    1592:	00 00                	add    %al,(%rax)
    1594:	00 00                	add    %al,(%rax)
    1596:	00 00                	add    %al,(%rax)
    1598:	00 81 00 00 00 00    	add    %al,0x0(%rcx)
    159e:	00 00                	add    %al,(%rax)
    15a0:	f8                   	clc
    15a1:	e5 00                	in     $0x0,%eax
    15a3:	00 00                	add    %al,(%rax)
    15a5:	00 00                	add    %al,(%rax)
    15a7:	00 08                	add    %cl,(%rax)
    15a9:	00 00                	add    %al,(%rax)
    15ab:	00 00                	add    %al,(%rax)
    15ad:	00 00                	add    %al,(%rax)
    15af:	00 c0                	add    %al,%al
    15b1:	e6 00                	out    %al,$0x0
    15b3:	00 00                	add    %al,(%rax)
    15b5:	00 00                	add    %al,(%rax)
    15b7:	00 60 e7             	add    %ah,-0x19(%rax)
    15ba:	00 00                	add    %al,(%rax)
    15bc:	00 00                	add    %al,(%rax)
    15be:	00 00                	add    %al,(%rax)
    15c0:	08 00                	or     %al,(%rax)
    15c2:	00 00                	add    %al,(%rax)
    15c4:	00 00                	add    %al,(%rax)
    15c6:	00 00                	add    %al,(%rax)
    15c8:	a0 e7 00 00 00 00 00 	movabs 0x48000000000000e7,%al
    15cf:	00 48 
    15d1:	e8 00 00 00 00       	call   15d6 <__abi_tag+0x123a>
    15d6:	00 00                	add    %al,(%rax)
    15d8:	08 00                	or     %al,(%rax)
    15da:	00 00                	add    %al,(%rax)
    15dc:	00 00                	add    %al,(%rax)
    15de:	00 00                	add    %al,(%rax)
    15e0:	80 e8 00             	sub    $0x0,%al
    15e3:	00 00                	add    %al,(%rax)
    15e5:	00 00                	add    %al,(%rax)
    15e7:	00 10                	add    %dl,(%rax)
    15e9:	e9 00 00 00 00       	jmp    15ee <__abi_tag+0x1252>
    15ee:	00 00                	add    %al,(%rax)
    15f0:	08 00                	or     %al,(%rax)
    15f2:	00 00                	add    %al,(%rax)
    15f4:	00 00                	add    %al,(%rax)
    15f6:	00 00                	add    %al,(%rax)
    15f8:	60                   	(bad)
    15f9:	e9 00 00 00 00       	jmp    15fe <__abi_tag+0x1262>
    15fe:	00 00                	add    %al,(%rax)
    1600:	88 e9                	mov    %ch,%cl
    1602:	00 00                	add    %al,(%rax)
    1604:	00 00                	add    %al,(%rax)
    1606:	00 00                	add    %al,(%rax)
    1608:	08 00                	or     %al,(%rax)
    160a:	00 00                	add    %al,(%rax)
    160c:	00 00                	add    %al,(%rax)
    160e:	00 00                	add    %al,(%rax)
    1610:	e0 81                	loopne 1593 <__abi_tag+0x11f7>
    1612:	00 00                	add    %al,(%rax)
    1614:	00 00                	add    %al,(%rax)
    1616:	00 00                	add    %al,(%rax)
    1618:	48 ea                	rex.W (bad)
    161a:	00 00                	add    %al,(%rax)
    161c:	00 00                	add    %al,(%rax)
    161e:	00 00                	add    %al,(%rax)
    1620:	08 00                	or     %al,(%rax)
    1622:	00 00                	add    %al,(%rax)
    1624:	00 00                	add    %al,(%rax)
    1626:	00 00                	add    %al,(%rax)
    1628:	20 f2                	and    %dh,%dl
    162a:	00 00                	add    %al,(%rax)
    162c:	00 00                	add    %al,(%rax)
    162e:	00 00                	add    %al,(%rax)
    1630:	68 ea 00 00 00       	push   $0xea
    1635:	00 00                	add    %al,(%rax)
    1637:	00 08                	add    %cl,(%rax)
    1639:	00 00                	add    %al,(%rax)
    163b:	00 00                	add    %al,(%rax)
    163d:	00 00                	add    %al,(%rax)
    163f:	00 20                	add    %ah,(%rax)
    1641:	eb 00                	jmp    1643 <__abi_tag+0x12a7>
    1643:	00 00                	add    %al,(%rax)
    1645:	00 00                	add    %al,(%rax)
    1647:	00 40 eb             	add    %al,-0x15(%rax)
    164a:	00 00                	add    %al,(%rax)
    164c:	00 00                	add    %al,(%rax)
    164e:	00 00                	add    %al,(%rax)
    1650:	08 00                	or     %al,(%rax)
    1652:	00 00                	add    %al,(%rax)
    1654:	00 00                	add    %al,(%rax)
    1656:	00 00                	add    %al,(%rax)
    1658:	00 ec                	add    %ch,%ah
    165a:	00 00                	add    %al,(%rax)
    165c:	00 00                	add    %al,(%rax)
    165e:	00 00                	add    %al,(%rax)
    1660:	48 ec                	rex.W in (%dx),%al
    1662:	00 00                	add    %al,(%rax)
    1664:	00 00                	add    %al,(%rax)
    1666:	00 00                	add    %al,(%rax)
    1668:	08 00                	or     %al,(%rax)
    166a:	00 00                	add    %al,(%rax)
    166c:	00 00                	add    %al,(%rax)
    166e:	00 00                	add    %al,(%rax)
    1670:	e0 ec                	loopne 165e <__abi_tag+0x12c2>
    1672:	00 00                	add    %al,(%rax)
    1674:	00 00                	add    %al,(%rax)
    1676:	00 00                	add    %al,(%rax)
    1678:	f8                   	clc
    1679:	ec                   	in     (%dx),%al
    167a:	00 00                	add    %al,(%rax)
    167c:	00 00                	add    %al,(%rax)
    167e:	00 00                	add    %al,(%rax)
    1680:	08 00                	or     %al,(%rax)
    1682:	00 00                	add    %al,(%rax)
    1684:	00 00                	add    %al,(%rax)
    1686:	00 00                	add    %al,(%rax)
    1688:	c0 ed 00             	shr    $0x0,%ch
    168b:	00 00                	add    %al,(%rax)
    168d:	00 00                	add    %al,(%rax)
    168f:	00 c8                	add    %cl,%al
    1691:	ed                   	in     (%dx),%eax
    1692:	00 00                	add    %al,(%rax)
    1694:	00 00                	add    %al,(%rax)
    1696:	00 00                	add    %al,(%rax)
    1698:	08 00                	or     %al,(%rax)
    169a:	00 00                	add    %al,(%rax)
    169c:	00 00                	add    %al,(%rax)
    169e:	00 00                	add    %al,(%rax)
    16a0:	a0 ee 00 00 00 00 00 	movabs 0x40000000000000ee,%al
    16a7:	00 40 
    16a9:	ef                   	out    %eax,(%dx)
    16aa:	00 00                	add    %al,(%rax)
    16ac:	00 00                	add    %al,(%rax)
    16ae:	00 00                	add    %al,(%rax)
    16b0:	08 00                	or     %al,(%rax)
    16b2:	00 00                	add    %al,(%rax)
    16b4:	00 00                	add    %al,(%rax)
    16b6:	00 00                	add    %al,(%rax)
    16b8:	80 ef 00             	sub    $0x0,%bh
    16bb:	00 00                	add    %al,(%rax)
    16bd:	00 00                	add    %al,(%rax)
    16bf:	00 c8                	add    %cl,%al
    16c1:	ef                   	out    %eax,(%dx)
    16c2:	00 00                	add    %al,(%rax)
    16c4:	00 00                	add    %al,(%rax)
    16c6:	00 00                	add    %al,(%rax)
    16c8:	08 00                	or     %al,(%rax)
    16ca:	00 00                	add    %al,(%rax)
    16cc:	00 00                	add    %al,(%rax)
    16ce:	00 00                	add    %al,(%rax)
    16d0:	60                   	(bad)
    16d1:	f0 00 00             	lock add %al,(%rax)
    16d4:	00 00                	add    %al,(%rax)
    16d6:	00 00                	add    %al,(%rax)
    16d8:	d8 f0                	fdiv   %st(0),%st
    16da:	00 00                	add    %al,(%rax)
    16dc:	00 00                	add    %al,(%rax)
    16de:	00 00                	add    %al,(%rax)
    16e0:	08 00                	or     %al,(%rax)
    16e2:	00 00                	add    %al,(%rax)
    16e4:	00 00                	add    %al,(%rax)
    16e6:	00 00                	add    %al,(%rax)
    16e8:	40 f1                	rex int1
    16ea:	00 00                	add    %al,(%rax)
    16ec:	00 00                	add    %al,(%rax)
    16ee:	00 00                	add    %al,(%rax)
    16f0:	b0 f1                	mov    $0xf1,%al
    16f2:	00 00                	add    %al,(%rax)
    16f4:	00 00                	add    %al,(%rax)
    16f6:	00 00                	add    %al,(%rax)
    16f8:	08 00                	or     %al,(%rax)
    16fa:	00 00                	add    %al,(%rax)
    16fc:	00 00                	add    %al,(%rax)
    16fe:	00 00                	add    %al,(%rax)
    1700:	c0 82 00 00 00 00 00 	rolb   $0x0,0x0(%rdx)
    1707:	00 90 f2 00 00 00    	add    %dl,0xf2(%rax)
    170d:	00 00                	add    %al,(%rax)
    170f:	00 08                	add    %cl,(%rax)
	...
    1719:	f3 00 00             	repz add %al,(%rax)
    171c:	00 00                	add    %al,(%rax)
    171e:	00 00                	add    %al,(%rax)
    1720:	20 f3                	and    %dh,%bl
    1722:	00 00                	add    %al,(%rax)
    1724:	00 00                	add    %al,(%rax)
    1726:	00 00                	add    %al,(%rax)
    1728:	08 00                	or     %al,(%rax)
    172a:	00 00                	add    %al,(%rax)
    172c:	00 00                	add    %al,(%rax)
    172e:	00 00                	add    %al,(%rax)
    1730:	40 f8                	rex clc
    1732:	00 00                	add    %al,(%rax)
    1734:	00 00                	add    %al,(%rax)
    1736:	00 00                	add    %al,(%rax)
    1738:	a0 f3 00 00 00 00 00 	movabs 0x8000000000000f3,%al
    173f:	00 08 
    1741:	00 00                	add    %al,(%rax)
    1743:	00 00                	add    %al,(%rax)
    1745:	00 00                	add    %al,(%rax)
    1747:	00 e0                	add    %ah,%al
    1749:	f3 00 00             	repz add %al,(%rax)
    174c:	00 00                	add    %al,(%rax)
    174e:	00 00                	add    %al,(%rax)
    1750:	e8 f3 00 00 00       	call   1848 <__abi_tag+0x14ac>
    1755:	00 00                	add    %al,(%rax)
    1757:	00 08                	add    %cl,(%rax)
    1759:	00 00                	add    %al,(%rax)
    175b:	00 00                	add    %al,(%rax)
    175d:	00 00                	add    %al,(%rax)
    175f:	00 c0                	add    %al,%al
    1761:	f4                   	hlt
    1762:	00 00                	add    %al,(%rax)
    1764:	00 00                	add    %al,(%rax)
    1766:	00 00                	add    %al,(%rax)
    1768:	20 f5                	and    %dh,%ch
    176a:	00 00                	add    %al,(%rax)
    176c:	00 00                	add    %al,(%rax)
    176e:	00 00                	add    %al,(%rax)
    1770:	08 00                	or     %al,(%rax)
    1772:	00 00                	add    %al,(%rax)
    1774:	00 00                	add    %al,(%rax)
    1776:	00 00                	add    %al,(%rax)
    1778:	a0 f5 00 00 00 00 00 	movabs 0xe8000000000000f5,%al
    177f:	00 e8 
    1781:	f5                   	cmc
    1782:	00 00                	add    %al,(%rax)
    1784:	00 00                	add    %al,(%rax)
    1786:	00 00                	add    %al,(%rax)
    1788:	08 00                	or     %al,(%rax)
    178a:	00 00                	add    %al,(%rax)
    178c:	00 00                	add    %al,(%rax)
    178e:	00 00                	add    %al,(%rax)
    1790:	80 f6 00             	xor    $0x0,%dh
    1793:	00 00                	add    %al,(%rax)
    1795:	00 00                	add    %al,(%rax)
    1797:	00 f8                	add    %bh,%al
    1799:	f6 00 00             	testb  $0x0,(%rax)
    179c:	00 00                	add    %al,(%rax)
    179e:	00 00                	add    %al,(%rax)
    17a0:	08 00                	or     %al,(%rax)
    17a2:	00 00                	add    %al,(%rax)
    17a4:	00 00                	add    %al,(%rax)
    17a6:	00 00                	add    %al,(%rax)
    17a8:	60                   	(bad)
    17a9:	f7 00 00 00 00 00    	testl  $0x0,(%rax)
    17af:	00 d0                	add    %dl,%al
    17b1:	f7 00 00 00 00 00    	testl  $0x0,(%rax)
    17b7:	00 08                	add    %cl,(%rax)
    17b9:	00 00                	add    %al,(%rax)
    17bb:	00 00                	add    %al,(%rax)
    17bd:	00 00                	add    %al,(%rax)
    17bf:	00 a0 83 00 00 00    	add    %ah,0x83(%rax)
    17c5:	00 00                	add    %al,(%rax)
    17c7:	00 68 f8             	add    %ch,-0x8(%rax)
    17ca:	00 00                	add    %al,(%rax)
    17cc:	00 00                	add    %al,(%rax)
    17ce:	00 00                	add    %al,(%rax)
    17d0:	08 00                	or     %al,(%rax)
    17d2:	00 00                	add    %al,(%rax)
    17d4:	00 00                	add    %al,(%rax)
    17d6:	00 00                	add    %al,(%rax)
    17d8:	20 f9                	and    %bh,%cl
    17da:	00 00                	add    %al,(%rax)
    17dc:	00 00                	add    %al,(%rax)
    17de:	00 00                	add    %al,(%rax)
    17e0:	80 f9 00             	cmp    $0x0,%cl
    17e3:	00 00                	add    %al,(%rax)
    17e5:	00 00                	add    %al,(%rax)
    17e7:	00 08                	add    %cl,(%rax)
	...
    17f1:	fa                   	cli
    17f2:	00 00                	add    %al,(%rax)
    17f4:	00 00                	add    %al,(%rax)
    17f6:	00 00                	add    %al,(%rax)
    17f8:	48 fa                	rex.W cli
    17fa:	00 00                	add    %al,(%rax)
    17fc:	00 00                	add    %al,(%rax)
    17fe:	00 00                	add    %al,(%rax)
    1800:	08 00                	or     %al,(%rax)
    1802:	00 00                	add    %al,(%rax)
    1804:	00 00                	add    %al,(%rax)
    1806:	00 00                	add    %al,(%rax)
    1808:	e0 fa                	loopne 1804 <__abi_tag+0x1468>
    180a:	00 00                	add    %al,(%rax)
    180c:	00 00                	add    %al,(%rax)
    180e:	00 00                	add    %al,(%rax)
    1810:	58                   	pop    %rax
    1811:	fb                   	sti
    1812:	00 00                	add    %al,(%rax)
    1814:	00 00                	add    %al,(%rax)
    1816:	00 00                	add    %al,(%rax)
    1818:	08 00                	or     %al,(%rax)
    181a:	00 00                	add    %al,(%rax)
    181c:	00 00                	add    %al,(%rax)
    181e:	00 00                	add    %al,(%rax)
    1820:	c0 fb 00             	sar    $0x0,%bl
    1823:	00 00                	add    %al,(%rax)
    1825:	00 00                	add    %al,(%rax)
    1827:	00 30                	add    %dh,(%rax)
    1829:	fc                   	cld
    182a:	00 00                	add    %al,(%rax)
    182c:	00 00                	add    %al,(%rax)
    182e:	00 00                	add    %al,(%rax)
    1830:	08 00                	or     %al,(%rax)
    1832:	00 00                	add    %al,(%rax)
    1834:	00 00                	add    %al,(%rax)
    1836:	00 00                	add    %al,(%rax)
    1838:	80 84 00 00 00 00 00 	addb   $0x0,0x0(%rax,%rax,1)
    183f:	00 
    1840:	c8 fc 00 00          	enter  $0xfc,$0x0
    1844:	00 00                	add    %al,(%rax)
    1846:	00 00                	add    %al,(%rax)
    1848:	08 00                	or     %al,(%rax)
    184a:	00 00                	add    %al,(%rax)
    184c:	00 00                	add    %al,(%rax)
    184e:	00 00                	add    %al,(%rax)
    1850:	80 0b 01             	orb    $0x1,(%rbx)
    1853:	00 00                	add    %al,(%rax)
    1855:	00 00                	add    %al,(%rax)
    1857:	00 30                	add    %dh,(%rax)
    1859:	fd                   	std
    185a:	00 00                	add    %al,(%rax)
    185c:	00 00                	add    %al,(%rax)
    185e:	00 00                	add    %al,(%rax)
    1860:	08 00                	or     %al,(%rax)
    1862:	00 00                	add    %al,(%rax)
    1864:	00 00                	add    %al,(%rax)
    1866:	00 00                	add    %al,(%rax)
    1868:	40 06                	rex (bad)
    186a:	01 00                	add    %eax,(%rax)
    186c:	00 00                	add    %al,(%rax)
    186e:	00 00                	add    %al,(%rax)
    1870:	48 fd                	rex.W std
    1872:	00 00                	add    %al,(%rax)
    1874:	00 00                	add    %al,(%rax)
    1876:	00 00                	add    %al,(%rax)
    1878:	08 00                	or     %al,(%rax)
    187a:	00 00                	add    %al,(%rax)
    187c:	00 00                	add    %al,(%rax)
    187e:	00 00                	add    %al,(%rax)
    1880:	20 00                	and    %al,(%rax)
    1882:	01 00                	add    %eax,(%rax)
    1884:	00 00                	add    %al,(%rax)
    1886:	00 00                	add    %al,(%rax)
    1888:	60                   	(bad)
    1889:	fd                   	std
    188a:	00 00                	add    %al,(%rax)
    188c:	00 00                	add    %al,(%rax)
    188e:	00 00                	add    %al,(%rax)
    1890:	08 00                	or     %al,(%rax)
    1892:	00 00                	add    %al,(%rax)
    1894:	00 00                	add    %al,(%rax)
    1896:	00 00                	add    %al,(%rax)
    1898:	80 fd 00             	cmp    $0x0,%ch
    189b:	00 00                	add    %al,(%rax)
    189d:	00 00                	add    %al,(%rax)
    189f:	00 c8                	add    %cl,%al
    18a1:	fd                   	std
    18a2:	00 00                	add    %al,(%rax)
    18a4:	00 00                	add    %al,(%rax)
    18a6:	00 00                	add    %al,(%rax)
    18a8:	08 00                	or     %al,(%rax)
    18aa:	00 00                	add    %al,(%rax)
    18ac:	00 00                	add    %al,(%rax)
    18ae:	00 00                	add    %al,(%rax)
    18b0:	60                   	(bad)
    18b1:	fe 00                	incb   (%rax)
    18b3:	00 00                	add    %al,(%rax)
    18b5:	00 00                	add    %al,(%rax)
    18b7:	00 08                	add    %cl,(%rax)
    18b9:	ff 00                	incl   (%rax)
    18bb:	00 00                	add    %al,(%rax)
    18bd:	00 00                	add    %al,(%rax)
    18bf:	00 08                	add    %cl,(%rax)
    18c1:	00 00                	add    %al,(%rax)
    18c3:	00 00                	add    %al,(%rax)
    18c5:	00 00                	add    %al,(%rax)
    18c7:	00 40 ff             	add    %al,-0x1(%rax)
    18ca:	00 00                	add    %al,(%rax)
    18cc:	00 00                	add    %al,(%rax)
    18ce:	00 00                	add    %al,(%rax)
    18d0:	a8 ff                	test   $0xff,%al
    18d2:	00 00                	add    %al,(%rax)
    18d4:	00 00                	add    %al,(%rax)
    18d6:	00 00                	add    %al,(%rax)
    18d8:	08 00                	or     %al,(%rax)
    18da:	00 00                	add    %al,(%rax)
    18dc:	00 00                	add    %al,(%rax)
    18de:	00 00                	add    %al,(%rax)
    18e0:	60                   	(bad)
    18e1:	85 00                	test   %eax,(%rax)
    18e3:	00 00                	add    %al,(%rax)
    18e5:	00 00                	add    %al,(%rax)
    18e7:	00 c0                	add    %al,%al
    18e9:	00 01                	add    %al,(%rcx)
    18eb:	00 00                	add    %al,(%rax)
    18ed:	00 00                	add    %al,(%rax)
    18ef:	00 08                	add    %cl,(%rax)
	...
    18f9:	01 01                	add    %eax,(%rcx)
    18fb:	00 00                	add    %al,(%rax)
    18fd:	00 00                	add    %al,(%rax)
    18ff:	00 40 01             	add    %al,0x1(%rax)
    1902:	01 00                	add    %eax,(%rax)
    1904:	00 00                	add    %al,(%rax)
    1906:	00 00                	add    %al,(%rax)
    1908:	08 00                	or     %al,(%rax)
    190a:	00 00                	add    %al,(%rax)
    190c:	00 00                	add    %al,(%rax)
    190e:	00 00                	add    %al,(%rax)
    1910:	e0 01                	loopne 1913 <__abi_tag+0x1577>
    1912:	01 00                	add    %eax,(%rax)
    1914:	00 00                	add    %al,(%rax)
    1916:	00 00                	add    %al,(%rax)
    1918:	58                   	pop    %rax
    1919:	02 01                	add    (%rcx),%al
    191b:	00 00                	add    %al,(%rax)
    191d:	00 00                	add    %al,(%rax)
    191f:	00 08                	add    %cl,(%rax)
    1921:	00 00                	add    %al,(%rax)
    1923:	00 00                	add    %al,(%rax)
    1925:	00 00                	add    %al,(%rax)
    1927:	00 c0                	add    %al,%al
    1929:	02 01                	add    (%rcx),%al
    192b:	00 00                	add    %al,(%rax)
    192d:	00 00                	add    %al,(%rax)
    192f:	00 50 03             	add    %dl,0x3(%rax)
    1932:	01 00                	add    %eax,(%rax)
    1934:	00 00                	add    %al,(%rax)
    1936:	00 00                	add    %al,(%rax)
    1938:	08 00                	or     %al,(%rax)
    193a:	00 00                	add    %al,(%rax)
    193c:	00 00                	add    %al,(%rax)
    193e:	00 00                	add    %al,(%rax)
    1940:	a0 03 01 00 00 00 00 	movabs 0xe800000000000103,%al
    1947:	00 e8 
    1949:	03 01                	add    (%rcx),%eax
    194b:	00 00                	add    %al,(%rax)
    194d:	00 00                	add    %al,(%rax)
    194f:	00 08                	add    %cl,(%rax)
    1951:	00 00                	add    %al,(%rax)
    1953:	00 00                	add    %al,(%rax)
    1955:	00 00                	add    %al,(%rax)
    1957:	00 80 04 01 00 00    	add    %al,0x104(%rax)
    195d:	00 00                	add    %al,(%rax)
    195f:	00 50 05             	add    %dl,0x5(%rax)
    1962:	01 00                	add    %eax,(%rax)
    1964:	00 00                	add    %al,(%rax)
    1966:	00 00                	add    %al,(%rax)
    1968:	08 00                	or     %al,(%rax)
    196a:	00 00                	add    %al,(%rax)
    196c:	00 00                	add    %al,(%rax)
    196e:	00 00                	add    %al,(%rax)
    1970:	60                   	(bad)
    1971:	05 01 00 00 00       	add    $0x1,%eax
    1976:	00 00                	add    %al,(%rax)
    1978:	88 05 01 00 00 00    	mov    %al,0x1(%rip)        # 197f <__abi_tag+0x15e3>
    197e:	00 00                	add    %al,(%rax)
    1980:	08 00                	or     %al,(%rax)
    1982:	00 00                	add    %al,(%rax)
    1984:	00 00                	add    %al,(%rax)
    1986:	00 00                	add    %al,(%rax)
    1988:	40 86 00             	rex xchg %al,(%rax)
    198b:	00 00                	add    %al,(%rax)
    198d:	00 00                	add    %al,(%rax)
    198f:	00 58 06             	add    %bl,0x6(%rax)
    1992:	01 00                	add    %eax,(%rax)
    1994:	00 00                	add    %al,(%rax)
    1996:	00 00                	add    %al,(%rax)
    1998:	08 00                	or     %al,(%rax)
    199a:	00 00                	add    %al,(%rax)
    199c:	00 00                	add    %al,(%rax)
    199e:	00 00                	add    %al,(%rax)
    19a0:	20 07                	and    %al,(%rdi)
    19a2:	01 00                	add    %eax,(%rax)
    19a4:	00 00                	add    %al,(%rax)
    19a6:	00 00                	add    %al,(%rax)
    19a8:	28 07                	sub    %al,(%rdi)
    19aa:	01 00                	add    %eax,(%rax)
    19ac:	00 00                	add    %al,(%rax)
    19ae:	00 00                	add    %al,(%rax)
    19b0:	08 00                	or     %al,(%rax)
    19b2:	00 00                	add    %al,(%rax)
    19b4:	00 00                	add    %al,(%rax)
    19b6:	00 00                	add    %al,(%rax)
    19b8:	00 08                	add    %cl,(%rax)
    19ba:	01 00                	add    %eax,(%rax)
    19bc:	00 00                	add    %al,(%rax)
    19be:	00 00                	add    %al,(%rax)
    19c0:	28 08                	sub    %cl,(%rax)
    19c2:	01 00                	add    %eax,(%rax)
    19c4:	00 00                	add    %al,(%rax)
    19c6:	00 00                	add    %al,(%rax)
    19c8:	08 00                	or     %al,(%rax)
    19ca:	00 00                	add    %al,(%rax)
    19cc:	00 00                	add    %al,(%rax)
    19ce:	00 00                	add    %al,(%rax)
    19d0:	a0 0a 01 00 00 00 00 	movabs 0x400000000000010a,%al
    19d7:	00 40 
    19d9:	08 01                	or     %al,(%rcx)
    19db:	00 00                	add    %al,(%rax)
    19dd:	00 00                	add    %al,(%rax)
    19df:	00 08                	add    %cl,(%rax)
    19e1:	00 00                	add    %al,(%rax)
    19e3:	00 00                	add    %al,(%rax)
    19e5:	00 00                	add    %al,(%rax)
    19e7:	00 c0                	add    %al,%al
    19e9:	09 01                	or     %eax,(%rcx)
    19eb:	00 00                	add    %al,(%rax)
    19ed:	00 00                	add    %al,(%rax)
    19ef:	00 70 08             	add    %dh,0x8(%rax)
    19f2:	01 00                	add    %eax,(%rax)
    19f4:	00 00                	add    %al,(%rax)
    19f6:	00 00                	add    %al,(%rax)
    19f8:	08 00                	or     %al,(%rax)
    19fa:	00 00                	add    %al,(%rax)
    19fc:	00 00                	add    %al,(%rax)
    19fe:	00 00                	add    %al,(%rax)
    1a00:	e0 08                	loopne 1a0a <__abi_tag+0x166e>
    1a02:	01 00                	add    %eax,(%rax)
    1a04:	00 00                	add    %al,(%rax)
    1a06:	00 00                	add    %al,(%rax)
    1a08:	e8 08 01 00 00       	call   1b15 <__abi_tag+0x1779>
    1a0d:	00 00                	add    %al,(%rax)
    1a0f:	00 08                	add    %cl,(%rax)
    1a11:	00 00                	add    %al,(%rax)
    1a13:	00 00                	add    %al,(%rax)
    1a15:	00 00                	add    %al,(%rax)
    1a17:	00 20                	add    %ah,(%rax)
    1a19:	87 00                	xchg   %eax,(%rax)
    1a1b:	00 00                	add    %al,(%rax)
    1a1d:	00 00                	add    %al,(%rax)
    1a1f:	00 70 0a             	add    %dh,0xa(%rax)
    1a22:	01 00                	add    %eax,(%rax)
    1a24:	00 00                	add    %al,(%rax)
    1a26:	00 00                	add    %al,(%rax)
    1a28:	08 00                	or     %al,(%rax)
    1a2a:	00 00                	add    %al,(%rax)
    1a2c:	00 00                	add    %al,(%rax)
    1a2e:	00 00                	add    %al,(%rax)
    1a30:	00 88 00 00 00 00    	add    %cl,0x0(%rax)
    1a36:	00 00                	add    %al,(%rax)
    1a38:	a8 0a                	test   $0xa,%al
    1a3a:	01 00                	add    %eax,(%rax)
    1a3c:	00 00                	add    %al,(%rax)
    1a3e:	00 00                	add    %al,(%rax)
    1a40:	08 00                	or     %al,(%rax)
    1a42:	00 00                	add    %al,(%rax)
    1a44:	00 00                	add    %al,(%rax)
    1a46:	00 00                	add    %al,(%rax)
    1a48:	e0 88                	loopne 19d2 <__abi_tag+0x1636>
    1a4a:	00 00                	add    %al,(%rax)
    1a4c:	00 00                	add    %al,(%rax)
    1a4e:	00 00                	add    %al,(%rax)
    1a50:	b8 0b 01 00 00       	mov    $0x10b,%eax
    1a55:	00 00                	add    %al,(%rax)
    1a57:	00 08                	add    %cl,(%rax)
    1a59:	00 00                	add    %al,(%rax)
    1a5b:	00 00                	add    %al,(%rax)
    1a5d:	00 00                	add    %al,(%rax)
    1a5f:	00 60 0c             	add    %ah,0xc(%rax)
    1a62:	01 00                	add    %eax,(%rax)
    1a64:	00 00                	add    %al,(%rax)
    1a66:	00 00                	add    %al,(%rax)
    1a68:	c0 0c 01 00          	rorb   $0x0,(%rcx,%rax,1)
    1a6c:	00 00                	add    %al,(%rax)
    1a6e:	00 00                	add    %al,(%rax)
    1a70:	08 00                	or     %al,(%rax)
    1a72:	00 00                	add    %al,(%rax)
    1a74:	00 00                	add    %al,(%rax)
    1a76:	00 00                	add    %al,(%rax)
    1a78:	40 0d 01 00 00 00    	rex or $0x1,%eax
    1a7e:	00 00                	add    %al,(%rax)
    1a80:	68 0d 01 00 00       	push   $0x10d
    1a85:	00 00                	add    %al,(%rax)
    1a87:	00 08                	add    %cl,(%rax)
    1a89:	00 00                	add    %al,(%rax)
    1a8b:	00 00                	add    %al,(%rax)
    1a8d:	00 00                	add    %al,(%rax)
    1a8f:	00 20                	add    %ah,(%rax)
    1a91:	0e                   	(bad)
    1a92:	01 00                	add    %eax,(%rax)
    1a94:	00 00                	add    %al,(%rax)
    1a96:	00 00                	add    %al,(%rax)
    1a98:	b8 0e 01 00 00       	mov    $0x10e,%eax
    1a9d:	00 00                	add    %al,(%rax)
    1a9f:	00 08                	add    %cl,(%rax)
	...
    1aa9:	0f 01 00             	sgdt   (%rax)
    1aac:	00 00                	add    %al,(%rax)
    1aae:	00 00                	add    %al,(%rax)
    1ab0:	28 0f                	sub    %cl,(%rdi)
    1ab2:	01 00                	add    %eax,(%rax)
    1ab4:	00 00                	add    %al,(%rax)
    1ab6:	00 00                	add    %al,(%rax)
    1ab8:	08 00                	or     %al,(%rax)
    1aba:	00 00                	add    %al,(%rax)
    1abc:	00 00                	add    %al,(%rax)
    1abe:	00 00                	add    %al,(%rax)
    1ac0:	e0 0f                	loopne 1ad1 <__abi_tag+0x1735>
    1ac2:	01 00                	add    %eax,(%rax)
    1ac4:	00 00                	add    %al,(%rax)
    1ac6:	00 00                	add    %al,(%rax)
    1ac8:	08 10                	or     %dl,(%rax)
    1aca:	01 00                	add    %eax,(%rax)
    1acc:	00 00                	add    %al,(%rax)
    1ace:	00 00                	add    %al,(%rax)
    1ad0:	08 00                	or     %al,(%rax)
    1ad2:	00 00                	add    %al,(%rax)
    1ad4:	00 00                	add    %al,(%rax)
    1ad6:	00 00                	add    %al,(%rax)
    1ad8:	c0 10 01             	rclb   $0x1,(%rax)
    1adb:	00 00                	add    %al,(%rax)
    1add:	00 00                	add    %al,(%rax)
    1adf:	00 18                	add    %bl,(%rax)
    1ae1:	11 01                	adc    %eax,(%rcx)
    1ae3:	00 00                	add    %al,(%rax)
    1ae5:	00 00                	add    %al,(%rax)
    1ae7:	00 08                	add    %cl,(%rax)
    1ae9:	00 00                	add    %al,(%rax)
    1aeb:	00 00                	add    %al,(%rax)
    1aed:	00 00                	add    %al,(%rax)
    1aef:	00 a0 11 01 00 00    	add    %ah,0x111(%rax)
    1af5:	00 00                	add    %al,(%rax)
    1af7:	00 c8                	add    %cl,%al
    1af9:	11 01                	adc    %eax,(%rcx)
    1afb:	00 00                	add    %al,(%rax)
    1afd:	00 00                	add    %al,(%rax)
    1aff:	00 08                	add    %cl,(%rax)
    1b01:	00 00                	add    %al,(%rax)
    1b03:	00 00                	add    %al,(%rax)
    1b05:	00 00                	add    %al,(%rax)
    1b07:	00 80 12 01 00 00    	add    %al,0x112(%rax)
    1b0d:	00 00                	add    %al,(%rax)
    1b0f:	00 10                	add    %dl,(%rax)
    1b11:	13 01                	adc    (%rcx),%eax
    1b13:	00 00                	add    %al,(%rax)
    1b15:	00 00                	add    %al,(%rax)
    1b17:	00 08                	add    %cl,(%rax)
    1b19:	00 00                	add    %al,(%rax)
    1b1b:	00 00                	add    %al,(%rax)
    1b1d:	00 00                	add    %al,(%rax)
    1b1f:	00 c0                	add    %al,%al
    1b21:	89 00                	mov    %eax,(%rax)
    1b23:	00 00                	add    %al,(%rax)
    1b25:	00 00                	add    %al,(%rax)
    1b27:	00 68 13             	add    %ch,0x13(%rax)
    1b2a:	01 00                	add    %eax,(%rax)
    1b2c:	00 00                	add    %al,(%rax)
    1b2e:	00 00                	add    %al,(%rax)
    1b30:	08 00                	or     %al,(%rax)
    1b32:	00 00                	add    %al,(%rax)
    1b34:	00 00                	add    %al,(%rax)
    1b36:	00 00                	add    %al,(%rax)
    1b38:	70 13                	jo     1b4d <__abi_tag+0x17b1>
    1b3a:	01 00                	add    %eax,(%rax)
    1b3c:	00 00                	add    %al,(%rax)
    1b3e:	00 00                	add    %al,(%rax)
    1b40:	78 13                	js     1b55 <__abi_tag+0x17b9>
    1b42:	01 00                	add    %eax,(%rax)
    1b44:	00 00                	add    %al,(%rax)
    1b46:	00 00                	add    %al,(%rax)
    1b48:	08 00                	or     %al,(%rax)
    1b4a:	00 00                	add    %al,(%rax)
    1b4c:	00 00                	add    %al,(%rax)
    1b4e:	00 00                	add    %al,(%rax)
    1b50:	80 13 01             	adcb   $0x1,(%rbx)
    1b53:	00 00                	add    %al,(%rax)
    1b55:	00 00                	add    %al,(%rax)
    1b57:	00 88 13 01 00 00    	add    %cl,0x113(%rax)
    1b5d:	00 00                	add    %al,(%rax)
    1b5f:	00 08                	add    %cl,(%rax)
    1b61:	00 00                	add    %al,(%rax)
    1b63:	00 00                	add    %al,(%rax)
    1b65:	00 00                	add    %al,(%rax)
    1b67:	00 90 13 01 00 00    	add    %dl,0x113(%rax)
    1b6d:	00 00                	add    %al,(%rax)
    1b6f:	00 98 13 01 00 00    	add    %bl,0x113(%rax)
    1b75:	00 00                	add    %al,(%rax)
    1b77:	00 08                	add    %cl,(%rax)
    1b79:	00 00                	add    %al,(%rax)
    1b7b:	00 00                	add    %al,(%rax)
    1b7d:	00 00                	add    %al,(%rax)
    1b7f:	00 a0 13 01 00 00    	add    %ah,0x113(%rax)
    1b85:	00 00                	add    %al,(%rax)
    1b87:	00 a8 13 01 00 00    	add    %ch,0x113(%rax)
    1b8d:	00 00                	add    %al,(%rax)
    1b8f:	00 08                	add    %cl,(%rax)
    1b91:	00 00                	add    %al,(%rax)
    1b93:	00 00                	add    %al,(%rax)
    1b95:	00 00                	add    %al,(%rax)
    1b97:	00 a0 8a 00 00 00    	add    %ah,0x8a(%rax)
    1b9d:	00 00                	add    %al,(%rax)
    1b9f:	00 c0                	add    %al,%al
    1ba1:	13 01                	adc    (%rcx),%eax
    1ba3:	00 00                	add    %al,(%rax)
    1ba5:	00 00                	add    %al,(%rax)
    1ba7:	00 08                	add    %cl,(%rax)
    1ba9:	00 00                	add    %al,(%rax)
    1bab:	00 00                	add    %al,(%rax)
    1bad:	00 00                	add    %al,(%rax)
    1baf:	00 5c 46 00          	add    %bl,0x0(%rsi,%rax,2)
    1bb3:	00 00                	add    %al,(%rax)
    1bb5:	00 00                	add    %al,(%rax)
    1bb7:	00 c8                	add    %cl,%al
    1bb9:	13 01                	adc    (%rcx),%eax
    1bbb:	00 00                	add    %al,(%rax)
    1bbd:	00 00                	add    %al,(%rax)
    1bbf:	00 08                	add    %cl,(%rax)
    1bc1:	00 00                	add    %al,(%rax)
    1bc3:	00 00                	add    %al,(%rax)
    1bc5:	00 00                	add    %al,(%rax)
    1bc7:	00 61 46             	add    %ah,0x46(%rcx)
    1bca:	00 00                	add    %al,(%rax)
    1bcc:	00 00                	add    %al,(%rax)
    1bce:	00 00                	add    %al,(%rax)
    1bd0:	d8 6f 00             	fsubrs 0x0(%rdi)
    1bd3:	00 00                	add    %al,(%rax)
    1bd5:	00 00                	add    %al,(%rax)
    1bd7:	00 06                	add    %al,(%rsi)
    1bd9:	00 00                	add    %al,(%rax)
    1bdb:	00 04 00             	add    %al,(%rax,%rax,1)
	...
    1be6:	00 00                	add    %al,(%rax)
    1be8:	e0 6f                	loopne 1c59 <__abi_tag+0x18bd>
    1bea:	00 00                	add    %al,(%rax)
    1bec:	00 00                	add    %al,(%rax)
    1bee:	00 00                	add    %al,(%rax)
    1bf0:	06                   	(bad)
    1bf1:	00 00                	add    %al,(%rax)
    1bf3:	00 0e                	add    %cl,(%rsi)
	...
    1bfd:	00 00                	add    %al,(%rax)
    1bff:	00 e8                	add    %ch,%al
    1c01:	6f                   	outsl  %ds:(%rsi),(%dx)
    1c02:	00 00                	add    %al,(%rax)
    1c04:	00 00                	add    %al,(%rax)
    1c06:	00 00                	add    %al,(%rax)
    1c08:	06                   	(bad)
    1c09:	00 00                	add    %al,(%rax)
    1c0b:	00 14 00             	add    %dl,(%rax,%rax,1)
	...
    1c16:	00 00                	add    %al,(%rax)
    1c18:	f0 6f                	lock outsl %ds:(%rsi),(%dx)
    1c1a:	00 00                	add    %al,(%rax)
    1c1c:	00 00                	add    %al,(%rax)
    1c1e:	00 00                	add    %al,(%rax)
    1c20:	06                   	(bad)
    1c21:	00 00                	add    %al,(%rax)
    1c23:	00 1d 00 00 00 00    	add    %bl,0x0(%rip)        # 1c29 <__abi_tag+0x188d>
    1c29:	00 00                	add    %al,(%rax)
    1c2b:	00 00                	add    %al,(%rax)
    1c2d:	00 00                	add    %al,(%rax)
    1c2f:	00 f8                	add    %bh,%al
    1c31:	6f                   	outsl  %ds:(%rsi),(%dx)
    1c32:	00 00                	add    %al,(%rax)
    1c34:	00 00                	add    %al,(%rax)
    1c36:	00 00                	add    %al,(%rax)
    1c38:	06                   	(bad)
    1c39:	00 00                	add    %al,(%rax)
    1c3b:	00 1f                	add    %bl,(%rdi)
	...
    1c45:	00 00                	add    %al,(%rax)
    1c47:	00 c0                	add    %al,%al
    1c49:	17                   	(bad)
    1c4a:	01 00                	add    %eax,(%rax)
    1c4c:	00 00                	add    %al,(%rax)
    1c4e:	00 00                	add    %al,(%rax)
    1c50:	05 00 00 00 22       	add    $0x22000000,%eax
	...
    1c5d:	00 00                	add    %al,(%rax)
    1c5f:	00 d0                	add    %dl,%al
    1c61:	17                   	(bad)
    1c62:	01 00                	add    %eax,(%rax)
    1c64:	00 00                	add    %al,(%rax)
    1c66:	00 00                	add    %al,(%rax)
    1c68:	05 00 00 00 23       	add    $0x23000000,%eax
	...
    1c75:	00 00                	add    %al,(%rax)
    1c77:	00 e0                	add    %ah,%al
    1c79:	17                   	(bad)
    1c7a:	01 00                	add    %eax,(%rax)
    1c7c:	00 00                	add    %al,(%rax)
    1c7e:	00 00                	add    %al,(%rax)
    1c80:	05 00 00 00 24       	add    $0x24000000,%eax
	...

Disassembly of section .rela.plt:

0000000000001c90 <.rela.plt>:
    1c90:	18 70 00             	sbb    %dh,0x0(%rax)
    1c93:	00 00                	add    %al,(%rax)
    1c95:	00 00                	add    %al,(%rax)
    1c97:	00 07                	add    %al,(%rdi)
    1c99:	00 00                	add    %al,(%rax)
    1c9b:	00 01                	add    %al,(%rcx)
	...
    1ca5:	00 00                	add    %al,(%rax)
    1ca7:	00 20                	add    %ah,(%rax)
    1ca9:	70 00                	jo     1cab <__abi_tag+0x190f>
    1cab:	00 00                	add    %al,(%rax)
    1cad:	00 00                	add    %al,(%rax)
    1caf:	00 07                	add    %al,(%rdi)
    1cb1:	00 00                	add    %al,(%rax)
    1cb3:	00 02                	add    %al,(%rdx)
	...
    1cbd:	00 00                	add    %al,(%rax)
    1cbf:	00 28                	add    %ch,(%rax)
    1cc1:	70 00                	jo     1cc3 <__abi_tag+0x1927>
    1cc3:	00 00                	add    %al,(%rax)
    1cc5:	00 00                	add    %al,(%rax)
    1cc7:	00 07                	add    %al,(%rdi)
    1cc9:	00 00                	add    %al,(%rax)
    1ccb:	00 03                	add    %al,(%rbx)
	...
    1cd5:	00 00                	add    %al,(%rax)
    1cd7:	00 30                	add    %dh,(%rax)
    1cd9:	70 00                	jo     1cdb <__abi_tag+0x193f>
    1cdb:	00 00                	add    %al,(%rax)
    1cdd:	00 00                	add    %al,(%rax)
    1cdf:	00 07                	add    %al,(%rdi)
    1ce1:	00 00                	add    %al,(%rax)
    1ce3:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 1ce9 <__abi_tag+0x194d>
    1ce9:	00 00                	add    %al,(%rax)
    1ceb:	00 00                	add    %al,(%rax)
    1ced:	00 00                	add    %al,(%rax)
    1cef:	00 38                	add    %bh,(%rax)
    1cf1:	70 00                	jo     1cf3 <__abi_tag+0x1957>
    1cf3:	00 00                	add    %al,(%rax)
    1cf5:	00 00                	add    %al,(%rax)
    1cf7:	00 07                	add    %al,(%rdi)
    1cf9:	00 00                	add    %al,(%rax)
    1cfb:	00 06                	add    %al,(%rsi)
	...
    1d05:	00 00                	add    %al,(%rax)
    1d07:	00 40 70             	add    %al,0x70(%rax)
    1d0a:	00 00                	add    %al,(%rax)
    1d0c:	00 00                	add    %al,(%rax)
    1d0e:	00 00                	add    %al,(%rax)
    1d10:	07                   	(bad)
    1d11:	00 00                	add    %al,(%rax)
    1d13:	00 07                	add    %al,(%rdi)
	...
    1d1d:	00 00                	add    %al,(%rax)
    1d1f:	00 48 70             	add    %cl,0x70(%rax)
    1d22:	00 00                	add    %al,(%rax)
    1d24:	00 00                	add    %al,(%rax)
    1d26:	00 00                	add    %al,(%rax)
    1d28:	07                   	(bad)
    1d29:	00 00                	add    %al,(%rax)
    1d2b:	00 08                	add    %cl,(%rax)
	...
    1d35:	00 00                	add    %al,(%rax)
    1d37:	00 50 70             	add    %dl,0x70(%rax)
    1d3a:	00 00                	add    %al,(%rax)
    1d3c:	00 00                	add    %al,(%rax)
    1d3e:	00 00                	add    %al,(%rax)
    1d40:	07                   	(bad)
    1d41:	00 00                	add    %al,(%rax)
    1d43:	00 09                	add    %cl,(%rcx)
	...
    1d4d:	00 00                	add    %al,(%rax)
    1d4f:	00 58 70             	add    %bl,0x70(%rax)
    1d52:	00 00                	add    %al,(%rax)
    1d54:	00 00                	add    %al,(%rax)
    1d56:	00 00                	add    %al,(%rax)
    1d58:	07                   	(bad)
    1d59:	00 00                	add    %al,(%rax)
    1d5b:	00 0a                	add    %cl,(%rdx)
	...
    1d65:	00 00                	add    %al,(%rax)
    1d67:	00 60 70             	add    %ah,0x70(%rax)
    1d6a:	00 00                	add    %al,(%rax)
    1d6c:	00 00                	add    %al,(%rax)
    1d6e:	00 00                	add    %al,(%rax)
    1d70:	07                   	(bad)
    1d71:	00 00                	add    %al,(%rax)
    1d73:	00 0b                	add    %cl,(%rbx)
	...
    1d7d:	00 00                	add    %al,(%rax)
    1d7f:	00 68 70             	add    %ch,0x70(%rax)
    1d82:	00 00                	add    %al,(%rax)
    1d84:	00 00                	add    %al,(%rax)
    1d86:	00 00                	add    %al,(%rax)
    1d88:	07                   	(bad)
    1d89:	00 00                	add    %al,(%rax)
    1d8b:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
    1d96:	00 00                	add    %al,(%rax)
    1d98:	70 70                	jo     1e0a <__abi_tag+0x1a6e>
    1d9a:	00 00                	add    %al,(%rax)
    1d9c:	00 00                	add    %al,(%rax)
    1d9e:	00 00                	add    %al,(%rax)
    1da0:	07                   	(bad)
    1da1:	00 00                	add    %al,(%rax)
    1da3:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 1da9 <__abi_tag+0x1a0d>
    1da9:	00 00                	add    %al,(%rax)
    1dab:	00 00                	add    %al,(%rax)
    1dad:	00 00                	add    %al,(%rax)
    1daf:	00 78 70             	add    %bh,0x70(%rax)
    1db2:	00 00                	add    %al,(%rax)
    1db4:	00 00                	add    %al,(%rax)
    1db6:	00 00                	add    %al,(%rax)
    1db8:	07                   	(bad)
    1db9:	00 00                	add    %al,(%rax)
    1dbb:	00 0f                	add    %cl,(%rdi)
	...
    1dc5:	00 00                	add    %al,(%rax)
    1dc7:	00 80 70 00 00 00    	add    %al,0x70(%rax)
    1dcd:	00 00                	add    %al,(%rax)
    1dcf:	00 07                	add    %al,(%rdi)
    1dd1:	00 00                	add    %al,(%rax)
    1dd3:	00 10                	add    %dl,(%rax)
	...
    1ddd:	00 00                	add    %al,(%rax)
    1ddf:	00 88 70 00 00 00    	add    %cl,0x70(%rax)
    1de5:	00 00                	add    %al,(%rax)
    1de7:	00 07                	add    %al,(%rdi)
    1de9:	00 00                	add    %al,(%rax)
    1deb:	00 11                	add    %dl,(%rcx)
	...
    1df5:	00 00                	add    %al,(%rax)
    1df7:	00 90 70 00 00 00    	add    %dl,0x70(%rax)
    1dfd:	00 00                	add    %al,(%rax)
    1dff:	00 07                	add    %al,(%rdi)
    1e01:	00 00                	add    %al,(%rax)
    1e03:	00 12                	add    %dl,(%rdx)
	...
    1e0d:	00 00                	add    %al,(%rax)
    1e0f:	00 98 70 00 00 00    	add    %bl,0x70(%rax)
    1e15:	00 00                	add    %al,(%rax)
    1e17:	00 07                	add    %al,(%rdi)
    1e19:	00 00                	add    %al,(%rax)
    1e1b:	00 13                	add    %dl,(%rbx)
	...
    1e25:	00 00                	add    %al,(%rax)
    1e27:	00 a0 70 00 00 00    	add    %ah,0x70(%rax)
    1e2d:	00 00                	add    %al,(%rax)
    1e2f:	00 07                	add    %al,(%rdi)
    1e31:	00 00                	add    %al,(%rax)
    1e33:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 1e39 <__abi_tag+0x1a9d>
    1e39:	00 00                	add    %al,(%rax)
    1e3b:	00 00                	add    %al,(%rax)
    1e3d:	00 00                	add    %al,(%rax)
    1e3f:	00 a8 70 00 00 00    	add    %ch,0x70(%rax)
    1e45:	00 00                	add    %al,(%rax)
    1e47:	00 07                	add    %al,(%rdi)
    1e49:	00 00                	add    %al,(%rax)
    1e4b:	00 16                	add    %dl,(%rsi)
	...
    1e55:	00 00                	add    %al,(%rax)
    1e57:	00 b0 70 00 00 00    	add    %dh,0x70(%rax)
    1e5d:	00 00                	add    %al,(%rax)
    1e5f:	00 07                	add    %al,(%rdi)
    1e61:	00 00                	add    %al,(%rax)
    1e63:	00 17                	add    %dl,(%rdi)
	...
    1e6d:	00 00                	add    %al,(%rax)
    1e6f:	00 b8 70 00 00 00    	add    %bh,0x70(%rax)
    1e75:	00 00                	add    %al,(%rax)
    1e77:	00 07                	add    %al,(%rdi)
    1e79:	00 00                	add    %al,(%rax)
    1e7b:	00 18                	add    %bl,(%rax)
	...
    1e85:	00 00                	add    %al,(%rax)
    1e87:	00 c0                	add    %al,%al
    1e89:	70 00                	jo     1e8b <__abi_tag+0x1aef>
    1e8b:	00 00                	add    %al,(%rax)
    1e8d:	00 00                	add    %al,(%rax)
    1e8f:	00 07                	add    %al,(%rdi)
    1e91:	00 00                	add    %al,(%rax)
    1e93:	00 19                	add    %bl,(%rcx)
	...
    1e9d:	00 00                	add    %al,(%rax)
    1e9f:	00 c8                	add    %cl,%al
    1ea1:	70 00                	jo     1ea3 <__abi_tag+0x1b07>
    1ea3:	00 00                	add    %al,(%rax)
    1ea5:	00 00                	add    %al,(%rax)
    1ea7:	00 07                	add    %al,(%rdi)
    1ea9:	00 00                	add    %al,(%rax)
    1eab:	00 1a                	add    %bl,(%rdx)
	...
    1eb5:	00 00                	add    %al,(%rax)
    1eb7:	00 d0                	add    %dl,%al
    1eb9:	70 00                	jo     1ebb <__abi_tag+0x1b1f>
    1ebb:	00 00                	add    %al,(%rax)
    1ebd:	00 00                	add    %al,(%rax)
    1ebf:	00 07                	add    %al,(%rdi)
    1ec1:	00 00                	add    %al,(%rax)
    1ec3:	00 1b                	add    %bl,(%rbx)
	...
    1ecd:	00 00                	add    %al,(%rax)
    1ecf:	00 d8                	add    %bl,%al
    1ed1:	70 00                	jo     1ed3 <__abi_tag+0x1b37>
    1ed3:	00 00                	add    %al,(%rax)
    1ed5:	00 00                	add    %al,(%rax)
    1ed7:	00 07                	add    %al,(%rdi)
    1ed9:	00 00                	add    %al,(%rax)
    1edb:	00 1c 00             	add    %bl,(%rax,%rax,1)
	...
    1ee6:	00 00                	add    %al,(%rax)
    1ee8:	e0 70                	loopne 1f5a <__abi_tag+0x1bbe>
    1eea:	00 00                	add    %al,(%rax)
    1eec:	00 00                	add    %al,(%rax)
    1eee:	00 00                	add    %al,(%rax)
    1ef0:	07                   	(bad)
    1ef1:	00 00                	add    %al,(%rax)
    1ef3:	00 1e                	add    %bl,(%rsi)
	...
    1efd:	00 00                	add    %al,(%rax)
    1eff:	00 e8                	add    %ch,%al
    1f01:	70 00                	jo     1f03 <__abi_tag+0x1b67>
    1f03:	00 00                	add    %al,(%rax)
    1f05:	00 00                	add    %al,(%rax)
    1f07:	00 07                	add    %al,(%rdi)
    1f09:	00 00                	add    %al,(%rax)
    1f0b:	00 20                	add    %ah,(%rax)
	...
    1f15:	00 00                	add    %al,(%rax)
    1f17:	00 f0                	add    %dh,%al
    1f19:	70 00                	jo     1f1b <__abi_tag+0x1b7f>
    1f1b:	00 00                	add    %al,(%rax)
    1f1d:	00 00                	add    %al,(%rax)
    1f1f:	00 07                	add    %al,(%rdi)
    1f21:	00 00                	add    %al,(%rax)
    1f23:	00 21                	add    %ah,(%rcx)
	...

Disassembly of section .init:

0000000000002000 <_init>:
    2000:	f3 0f 1e fa          	endbr64
    2004:	48 83 ec 08          	sub    $0x8,%rsp
    2008:	48 8b 05 d9 4f 00 00 	mov    0x4fd9(%rip),%rax        # 6fe8 <__gmon_start__>
    200f:	48 85 c0             	test   %rax,%rax
    2012:	74 02                	je     2016 <_init+0x16>
    2014:	ff d0                	call   *%rax
    2016:	48 83 c4 08          	add    $0x8,%rsp
    201a:	c3                   	ret

Disassembly of section .plt:

0000000000002020 <getenv@plt-0x10>:
    2020:	ff 35 e2 4f 00 00    	push   0x4fe2(%rip)        # 7008 <_GLOBAL_OFFSET_TABLE_+0x8>
    2026:	ff 25 e4 4f 00 00    	jmp    *0x4fe4(%rip)        # 7010 <_GLOBAL_OFFSET_TABLE_+0x10>
    202c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002030 <getenv@plt>:
    2030:	ff 25 e2 4f 00 00    	jmp    *0x4fe2(%rip)        # 7018 <getenv@GLIBC_2.2.5>
    2036:	68 00 00 00 00       	push   $0x0
    203b:	e9 e0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002040 <strcasecmp@plt>:
    2040:	ff 25 da 4f 00 00    	jmp    *0x4fda(%rip)        # 7020 <strcasecmp@GLIBC_2.2.5>
    2046:	68 01 00 00 00       	push   $0x1
    204b:	e9 d0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002050 <__errno_location@plt>:
    2050:	ff 25 d2 4f 00 00    	jmp    *0x4fd2(%rip)        # 7028 <__errno_location@GLIBC_2.2.5>
    2056:	68 02 00 00 00       	push   $0x2
    205b:	e9 c0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002060 <strcpy@plt>:
    2060:	ff 25 ca 4f 00 00    	jmp    *0x4fca(%rip)        # 7030 <strcpy@GLIBC_2.2.5>
    2066:	68 03 00 00 00       	push   $0x3
    206b:	e9 b0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002070 <puts@plt>:
    2070:	ff 25 c2 4f 00 00    	jmp    *0x4fc2(%rip)        # 7038 <puts@GLIBC_2.2.5>
    2076:	68 04 00 00 00       	push   $0x4
    207b:	e9 a0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002080 <write@plt>:
    2080:	ff 25 ba 4f 00 00    	jmp    *0x4fba(%rip)        # 7040 <write@GLIBC_2.2.5>
    2086:	68 05 00 00 00       	push   $0x5
    208b:	e9 90 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002090 <strlen@plt>:
    2090:	ff 25 b2 4f 00 00    	jmp    *0x4fb2(%rip)        # 7048 <strlen@GLIBC_2.2.5>
    2096:	68 06 00 00 00       	push   $0x6
    209b:	e9 80 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020a0 <__stack_chk_fail@plt>:
    20a0:	ff 25 aa 4f 00 00    	jmp    *0x4faa(%rip)        # 7050 <__stack_chk_fail@GLIBC_2.4>
    20a6:	68 07 00 00 00       	push   $0x7
    20ab:	e9 70 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020b0 <printf@plt>:
    20b0:	ff 25 a2 4f 00 00    	jmp    *0x4fa2(%rip)        # 7058 <printf@GLIBC_2.2.5>
    20b6:	68 08 00 00 00       	push   $0x8
    20bb:	e9 60 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020c0 <alarm@plt>:
    20c0:	ff 25 9a 4f 00 00    	jmp    *0x4f9a(%rip)        # 7060 <alarm@GLIBC_2.2.5>
    20c6:	68 09 00 00 00       	push   $0x9
    20cb:	e9 50 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020d0 <close@plt>:
    20d0:	ff 25 92 4f 00 00    	jmp    *0x4f92(%rip)        # 7068 <close@GLIBC_2.2.5>
    20d6:	68 0a 00 00 00       	push   $0xa
    20db:	e9 40 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020e0 <read@plt>:
    20e0:	ff 25 8a 4f 00 00    	jmp    *0x4f8a(%rip)        # 7070 <read@GLIBC_2.2.5>
    20e6:	68 0b 00 00 00       	push   $0xb
    20eb:	e9 30 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020f0 <fgets@plt>:
    20f0:	ff 25 82 4f 00 00    	jmp    *0x4f82(%rip)        # 7078 <fgets@GLIBC_2.2.5>
    20f6:	68 0c 00 00 00       	push   $0xc
    20fb:	e9 20 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002100 <strcmp@plt>:
    2100:	ff 25 7a 4f 00 00    	jmp    *0x4f7a(%rip)        # 7080 <strcmp@GLIBC_2.2.5>
    2106:	68 0d 00 00 00       	push   $0xd
    210b:	e9 10 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002110 <signal@plt>:
    2110:	ff 25 72 4f 00 00    	jmp    *0x4f72(%rip)        # 7088 <signal@GLIBC_2.2.5>
    2116:	68 0e 00 00 00       	push   $0xe
    211b:	e9 00 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002120 <gethostbyname@plt>:
    2120:	ff 25 6a 4f 00 00    	jmp    *0x4f6a(%rip)        # 7090 <gethostbyname@GLIBC_2.2.5>
    2126:	68 0f 00 00 00       	push   $0xf
    212b:	e9 f0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002130 <fprintf@plt>:
    2130:	ff 25 62 4f 00 00    	jmp    *0x4f62(%rip)        # 7098 <fprintf@GLIBC_2.2.5>
    2136:	68 10 00 00 00       	push   $0x10
    213b:	e9 e0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002140 <fflush@plt>:
    2140:	ff 25 5a 4f 00 00    	jmp    *0x4f5a(%rip)        # 70a0 <fflush@GLIBC_2.2.5>
    2146:	68 11 00 00 00       	push   $0x11
    214b:	e9 d0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002150 <__isoc99_sscanf@plt>:
    2150:	ff 25 52 4f 00 00    	jmp    *0x4f52(%rip)        # 70a8 <__isoc99_sscanf@GLIBC_2.7>
    2156:	68 12 00 00 00       	push   $0x12
    215b:	e9 c0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002160 <memmove@plt>:
    2160:	ff 25 4a 4f 00 00    	jmp    *0x4f4a(%rip)        # 70b0 <memmove@GLIBC_2.2.5>
    2166:	68 13 00 00 00       	push   $0x13
    216b:	e9 b0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002170 <fopen@plt>:
    2170:	ff 25 42 4f 00 00    	jmp    *0x4f42(%rip)        # 70b8 <fopen@GLIBC_2.2.5>
    2176:	68 14 00 00 00       	push   $0x14
    217b:	e9 a0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002180 <gethostname@plt>:
    2180:	ff 25 3a 4f 00 00    	jmp    *0x4f3a(%rip)        # 70c0 <gethostname@GLIBC_2.2.5>
    2186:	68 15 00 00 00       	push   $0x15
    218b:	e9 90 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002190 <sprintf@plt>:
    2190:	ff 25 32 4f 00 00    	jmp    *0x4f32(%rip)        # 70c8 <sprintf@GLIBC_2.2.5>
    2196:	68 16 00 00 00       	push   $0x16
    219b:	e9 80 fe ff ff       	jmp    2020 <_init+0x20>

00000000000021a0 <exit@plt>:
    21a0:	ff 25 2a 4f 00 00    	jmp    *0x4f2a(%rip)        # 70d0 <exit@GLIBC_2.2.5>
    21a6:	68 17 00 00 00       	push   $0x17
    21ab:	e9 70 fe ff ff       	jmp    2020 <_init+0x20>

00000000000021b0 <connect@plt>:
    21b0:	ff 25 22 4f 00 00    	jmp    *0x4f22(%rip)        # 70d8 <connect@GLIBC_2.2.5>
    21b6:	68 18 00 00 00       	push   $0x18
    21bb:	e9 60 fe ff ff       	jmp    2020 <_init+0x20>

00000000000021c0 <sleep@plt>:
    21c0:	ff 25 1a 4f 00 00    	jmp    *0x4f1a(%rip)        # 70e0 <sleep@GLIBC_2.2.5>
    21c6:	68 19 00 00 00       	push   $0x19
    21cb:	e9 50 fe ff ff       	jmp    2020 <_init+0x20>

00000000000021d0 <__ctype_b_loc@plt>:
    21d0:	ff 25 12 4f 00 00    	jmp    *0x4f12(%rip)        # 70e8 <__ctype_b_loc@GLIBC_2.3>
    21d6:	68 1a 00 00 00       	push   $0x1a
    21db:	e9 40 fe ff ff       	jmp    2020 <_init+0x20>

00000000000021e0 <socket@plt>:
    21e0:	ff 25 0a 4f 00 00    	jmp    *0x4f0a(%rip)        # 70f0 <socket@GLIBC_2.2.5>
    21e6:	68 1b 00 00 00       	push   $0x1b
    21eb:	e9 30 fe ff ff       	jmp    2020 <_init+0x20>

Disassembly of section .text:

00000000000021f0 <_start>:
    21f0:	f3 0f 1e fa          	endbr64
    21f4:	31 ed                	xor    %ebp,%ebp
    21f6:	49 89 d1             	mov    %rdx,%r9
    21f9:	5e                   	pop    %rsi
    21fa:	48 89 e2             	mov    %rsp,%rdx
    21fd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    2201:	50                   	push   %rax
    2202:	54                   	push   %rsp
    2203:	4c 8d 05 46 19 00 00 	lea    0x1946(%rip),%r8        # 3b50 <__libc_csu_fini>
    220a:	48 8d 0d cf 18 00 00 	lea    0x18cf(%rip),%rcx        # 3ae0 <__libc_csu_init>
    2211:	48 8d 3d d1 00 00 00 	lea    0xd1(%rip),%rdi        # 22e9 <main>
    2218:	ff 15 c2 4d 00 00    	call   *0x4dc2(%rip)        # 6fe0 <__libc_start_main@GLIBC_2.2.5>
    221e:	f4                   	hlt
    221f:	90                   	nop

0000000000002220 <deregister_tm_clones>:
    2220:	48 8d 3d 99 f5 00 00 	lea    0xf599(%rip),%rdi        # 117c0 <stdout@GLIBC_2.2.5>
    2227:	48 8d 05 92 f5 00 00 	lea    0xf592(%rip),%rax        # 117c0 <stdout@GLIBC_2.2.5>
    222e:	48 39 f8             	cmp    %rdi,%rax
    2231:	74 15                	je     2248 <deregister_tm_clones+0x28>
    2233:	48 8b 05 9e 4d 00 00 	mov    0x4d9e(%rip),%rax        # 6fd8 <_ITM_deregisterTMCloneTable>
    223a:	48 85 c0             	test   %rax,%rax
    223d:	74 09                	je     2248 <deregister_tm_clones+0x28>
    223f:	ff e0                	jmp    *%rax
    2241:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2248:	c3                   	ret
    2249:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002250 <register_tm_clones>:
    2250:	48 8d 3d 69 f5 00 00 	lea    0xf569(%rip),%rdi        # 117c0 <stdout@GLIBC_2.2.5>
    2257:	48 8d 35 62 f5 00 00 	lea    0xf562(%rip),%rsi        # 117c0 <stdout@GLIBC_2.2.5>
    225e:	48 29 fe             	sub    %rdi,%rsi
    2261:	48 89 f0             	mov    %rsi,%rax
    2264:	48 c1 ee 3f          	shr    $0x3f,%rsi
    2268:	48 c1 f8 03          	sar    $0x3,%rax
    226c:	48 01 c6             	add    %rax,%rsi
    226f:	48 d1 fe             	sar    %rsi
    2272:	74 14                	je     2288 <register_tm_clones+0x38>
    2274:	48 8b 05 75 4d 00 00 	mov    0x4d75(%rip),%rax        # 6ff0 <_ITM_registerTMCloneTable>
    227b:	48 85 c0             	test   %rax,%rax
    227e:	74 08                	je     2288 <register_tm_clones+0x38>
    2280:	ff e0                	jmp    *%rax
    2282:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2288:	c3                   	ret
    2289:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002290 <__do_global_dtors_aux>:
    2290:	f3 0f 1e fa          	endbr64
    2294:	80 3d 4d f5 00 00 00 	cmpb   $0x0,0xf54d(%rip)        # 117e8 <completed.0>
    229b:	75 33                	jne    22d0 <__do_global_dtors_aux+0x40>
    229d:	55                   	push   %rbp
    229e:	48 83 3d 52 4d 00 00 	cmpq   $0x0,0x4d52(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    22a5:	00 
    22a6:	48 89 e5             	mov    %rsp,%rbp
    22a9:	74 0d                	je     22b8 <__do_global_dtors_aux+0x28>
    22ab:	48 8b 3d 56 4e 00 00 	mov    0x4e56(%rip),%rdi        # 7108 <__dso_handle>
    22b2:	ff 15 40 4d 00 00    	call   *0x4d40(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    22b8:	e8 63 ff ff ff       	call   2220 <deregister_tm_clones>
    22bd:	c6 05 24 f5 00 00 01 	movb   $0x1,0xf524(%rip)        # 117e8 <completed.0>
    22c4:	5d                   	pop    %rbp
    22c5:	c3                   	ret
    22c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    22cd:	00 00 00 
    22d0:	c3                   	ret
    22d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    22d8:	00 00 00 00 
    22dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000022e0 <frame_dummy>:
    22e0:	f3 0f 1e fa          	endbr64
    22e4:	e9 67 ff ff ff       	jmp    2250 <register_tm_clones>

00000000000022e9 <main>:
    22e9:	53                   	push   %rbx
    22ea:	83 ff 01             	cmp    $0x1,%edi
    22ed:	0f 84 f8 00 00 00    	je     23eb <main+0x102>
    22f3:	48 89 f3             	mov    %rsi,%rbx
    22f6:	83 ff 02             	cmp    $0x2,%edi
    22f9:	0f 85 1c 01 00 00    	jne    241b <main+0x132>
    22ff:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    2303:	48 8d 35 fa 1c 00 00 	lea    0x1cfa(%rip),%rsi        # 4004 <_IO_stdin_used+0x4>
    230a:	e8 61 fe ff ff       	call   2170 <fopen@plt>
    230f:	48 89 05 da f4 00 00 	mov    %rax,0xf4da(%rip)        # 117f0 <infile>
    2316:	48 85 c0             	test   %rax,%rax
    2319:	0f 84 df 00 00 00    	je     23fe <main+0x115>
    231f:	e8 45 06 00 00       	call   2969 <initialize_bomb>
    2324:	48 8d 3d 55 1d 00 00 	lea    0x1d55(%rip),%rdi        # 4080 <_IO_stdin_used+0x80>
    232b:	e8 40 fd ff ff       	call   2070 <puts@plt>
    2330:	48 8d 3d 89 1d 00 00 	lea    0x1d89(%rip),%rdi        # 40c0 <_IO_stdin_used+0xc0>
    2337:	e8 34 fd ff ff       	call   2070 <puts@plt>
    233c:	e8 a9 09 00 00       	call   2cea <read_line>
    2341:	48 89 c7             	mov    %rax,%rdi
    2344:	e8 f0 00 00 00       	call   2439 <phase_1>
    2349:	e8 d6 0a 00 00       	call   2e24 <phase_defused>
    234e:	48 8d 3d 9b 1d 00 00 	lea    0x1d9b(%rip),%rdi        # 40f0 <_IO_stdin_used+0xf0>
    2355:	e8 16 fd ff ff       	call   2070 <puts@plt>
    235a:	e8 8b 09 00 00       	call   2cea <read_line>         # move the return value of read_line to phase_2
    235f:	48 89 c7             	mov    %rax,%rdi
    2362:	e8 f2 00 00 00       	call   2459 <phase_2>
    2367:	e8 b8 0a 00 00       	call   2e24 <phase_defused>
    236c:	48 8d 3d ca 1c 00 00 	lea    0x1cca(%rip),%rdi        # 403d <_IO_stdin_used+0x3d>
    2373:	e8 f8 fc ff ff       	call   2070 <puts@plt>
    2378:	e8 6d 09 00 00       	call   2cea <read_line>
    237d:	48 89 c7             	mov    %rax,%rdi
    2380:	e8 43 01 00 00       	call   24c8 <phase_3>
    2385:	e8 9a 0a 00 00       	call   2e24 <phase_defused>
    238a:	48 8d 3d bd 1c 00 00 	lea    0x1cbd(%rip),%rdi        # 404e <_IO_stdin_used+0x4e>
    2391:	e8 da fc ff ff       	call   2070 <puts@plt>
    2396:	e8 4f 09 00 00       	call   2cea <read_line>
    239b:	48 89 c7             	mov    %rax,%rdi
    239e:	e8 4e 02 00 00       	call   25f1 <phase_4>
    23a3:	e8 7c 0a 00 00       	call   2e24 <phase_defused>
    23a8:	48 8d 3d 71 1d 00 00 	lea    0x1d71(%rip),%rdi        # 4120 <_IO_stdin_used+0x120>
    23af:	e8 bc fc ff ff       	call   2070 <puts@plt>
    23b4:	e8 31 09 00 00       	call   2cea <read_line>
    23b9:	48 89 c7             	mov    %rax,%rdi
    23bc:	e8 a1 02 00 00       	call   2662 <phase_5>
    23c1:	e8 5e 0a 00 00       	call   2e24 <phase_defused>
    23c6:	48 8d 3d 90 1c 00 00 	lea    0x1c90(%rip),%rdi        # 405d <_IO_stdin_used+0x5d>
    23cd:	e8 9e fc ff ff       	call   2070 <puts@plt>
    23d2:	e8 13 09 00 00       	call   2cea <read_line>
    23d7:	48 89 c7             	mov    %rax,%rdi
    23da:	e8 cb 02 00 00       	call   26aa <phase_6>
    23df:	e8 40 0a 00 00       	call   2e24 <phase_defused>
    23e4:	b8 00 00 00 00       	mov    $0x0,%eax
    23e9:	5b                   	pop    %rbx
    23ea:	c3                   	ret
    23eb:	48 8b 05 de f3 00 00 	mov    0xf3de(%rip),%rax        # 117d0 <stdin@GLIBC_2.2.5>
    23f2:	48 89 05 f7 f3 00 00 	mov    %rax,0xf3f7(%rip)        # 117f0 <infile>
    23f9:	e9 21 ff ff ff       	jmp    231f <main+0x36>
    23fe:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    2402:	48 8b 33             	mov    (%rbx),%rsi
    2405:	48 8d 3d fa 1b 00 00 	lea    0x1bfa(%rip),%rdi        # 4006 <_IO_stdin_used+0x6>
    240c:	e8 9f fc ff ff       	call   20b0 <printf@plt>
    2411:	bf 08 00 00 00       	mov    $0x8,%edi
    2416:	e8 85 fd ff ff       	call   21a0 <exit@plt>
    241b:	48 8b 36             	mov    (%rsi),%rsi
    241e:	48 8d 3d fe 1b 00 00 	lea    0x1bfe(%rip),%rdi        # 4023 <_IO_stdin_used+0x23>
    2425:	b8 00 00 00 00       	mov    $0x0,%eax
    242a:	e8 81 fc ff ff       	call   20b0 <printf@plt>
    242f:	bf 08 00 00 00       	mov    $0x8,%edi
    2434:	e8 67 fd ff ff       	call   21a0 <exit@plt>

0000000000002439 <phase_1>:
    2439:	48 83 ec 08          	sub    $0x8,%rsp
    243d:	48 8d 35 04 1d 00 00 	lea    0x1d04(%rip),%rsi        # 4148 <_IO_stdin_used+0x148>
    2444:	e8 c4 04 00 00       	call   290d <strings_not_equal>
    2449:	85 c0                	test   %eax,%eax
    244b:	75 05                	jne    2452 <phase_1+0x19>
    244d:	48 83 c4 08          	add    $0x8,%rsp
    2451:	c3                   	ret
    2452:	e8 92 07 00 00       	call   2be9 <explode_bomb>
    2457:	eb f4                	jmp    244d <phase_1+0x14>

0000000000002459 <phase_2>:  # (string, ...)
    2459:	55                   	push   %rbp
    245a:	53                   	push   %rbx
    245b:	48 83 ec 28          	sub    $0x28,%rsp
    245f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2466:	00 00 
    2468:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    246d:	31 c0                	xor    %eax,%eax
    246f:	48 89 e6             	mov    %rsp,%rsi                 # move top of stack to rsi?
    2472:	e8 32 08 00 00       	call   2ca9 <read_six_numbers>
    2477:	83 3c 24 02          	cmpl   $0x2,(%rsp)
    247b:	75 0a                	jne    2487 <phase_2+0x2e>
    247d:	48 89 e3             	mov    %rsp,%rbx
    2480:	48 8d 6c 24 14       	lea    0x14(%rsp),%rbp
    2485:	eb 10                	jmp    2497 <phase_2+0x3e>
    2487:	e8 5d 07 00 00       	call   2be9 <explode_bomb>
    248c:	eb ef                	jmp    247d <phase_2+0x24>
    248e:	48 83 c3 04          	add    $0x4,%rbx
    2492:	48 39 eb             	cmp    %rbp,%rbx
    2495:	74 15                	je     24ac <phase_2+0x53>
    2497:	8b 05 83 4c 00 00    	mov    0x4c83(%rip),%eax        # 7120 <mul.1>
    249d:	0f af 03             	imul   (%rbx),%eax
    24a0:	39 43 04             	cmp    %eax,0x4(%rbx)
    24a3:	74 e9                	je     248e <phase_2+0x35>
    24a5:	e8 3f 07 00 00       	call   2be9 <explode_bomb>
    24aa:	eb e2                	jmp    248e <phase_2+0x35>
    24ac:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    24b1:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    24b8:	00 00 
    24ba:	75 07                	jne    24c3 <phase_2+0x6a>
    24bc:	48 83 c4 28          	add    $0x28,%rsp
    24c0:	5b                   	pop    %rbx
    24c1:	5d                   	pop    %rbp
    24c2:	c3                   	ret
    24c3:	e8 d8 fb ff ff       	call   20a0 <__stack_chk_fail@plt>

00000000000024c8 <phase_3>:
    24c8:	53                   	push   %rbx
    24c9:	48 83 ec 10          	sub    $0x10,%rsp
    24cd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    24d4:	00 00 
    24d6:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    24db:	31 c0                	xor    %eax,%eax
    24dd:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    24e2:	48 89 e2             	mov    %rsp,%rdx
    24e5:	48 8d 35 15 21 00 00 	lea    0x2115(%rip),%rsi        # 4601 <array.0+0x421>
    24ec:	e8 5f fc ff ff       	call   2150 <__isoc99_sscanf@plt>
    24f1:	83 f8 01             	cmp    $0x1,%eax
    24f4:	7e 07                	jle    24fd <phase_3+0x35>
    24f6:	83 7c 24 04 00       	cmpl   $0x0,0x4(%rsp)
    24fb:	78 05                	js     2502 <phase_3+0x3a>
    24fd:	e8 e7 06 00 00       	call   2be9 <explode_bomb>
    2502:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    2506:	0f 87 98 00 00 00    	ja     25a4 <phase_3+0xdc>
    250c:	8b 04 24             	mov    (%rsp),%eax
    250f:	48 8d 15 aa 1c 00 00 	lea    0x1caa(%rip),%rdx        # 41c0 <_IO_stdin_used+0x1c0>
    2516:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    251a:	48 01 d0             	add    %rdx,%rax
    251d:	ff e0                	jmp    *%rax
    251f:	b8 93 03 00 00       	mov    $0x393,%eax
    2524:	83 e8 73             	sub    $0x73,%eax
    2527:	05 93 02 00 00       	add    $0x293,%eax
    252c:	8d 98 33 fd ff ff    	lea    -0x2cd(%rax),%ebx
    2532:	e8 b2 06 00 00       	call   2be9 <explode_bomb>
    2537:	8d 83 cd 02 00 00    	lea    0x2cd(%rbx),%eax
    253d:	2d cd 02 00 00       	sub    $0x2cd,%eax
    2542:	05 cd 02 00 00       	add    $0x2cd,%eax
    2547:	2d cd 02 00 00       	sub    $0x2cd,%eax
    254c:	83 3c 24 05          	cmpl   $0x5,(%rsp)
    2550:	7f 06                	jg     2558 <phase_3+0x90>
    2552:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    2556:	74 05                	je     255d <phase_3+0x95>
    2558:	e8 8c 06 00 00       	call   2be9 <explode_bomb>
    255d:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2562:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2569:	00 00 
    256b:	75 43                	jne    25b0 <phase_3+0xe8>
    256d:	48 83 c4 10          	add    $0x10,%rsp
    2571:	5b                   	pop    %rbx
    2572:	c3                   	ret
    2573:	b8 00 00 00 00       	mov    $0x0,%eax
    2578:	eb aa                	jmp    2524 <phase_3+0x5c>
    257a:	b8 00 00 00 00       	mov    $0x0,%eax
    257f:	eb a6                	jmp    2527 <phase_3+0x5f>
    2581:	b8 00 00 00 00       	mov    $0x0,%eax
    2586:	eb a4                	jmp    252c <phase_3+0x64>
    2588:	bb 00 00 00 00       	mov    $0x0,%ebx
    258d:	eb a8                	jmp    2537 <phase_3+0x6f>
    258f:	b8 00 00 00 00       	mov    $0x0,%eax
    2594:	eb a7                	jmp    253d <phase_3+0x75>
    2596:	b8 00 00 00 00       	mov    $0x0,%eax
    259b:	eb a5                	jmp    2542 <phase_3+0x7a>
    259d:	b8 00 00 00 00       	mov    $0x0,%eax
    25a2:	eb a3                	jmp    2547 <phase_3+0x7f>
    25a4:	e8 40 06 00 00       	call   2be9 <explode_bomb>
    25a9:	b8 00 00 00 00       	mov    $0x0,%eax
    25ae:	eb 9c                	jmp    254c <phase_3+0x84>
    25b0:	e8 eb fa ff ff       	call   20a0 <__stack_chk_fail@plt>

00000000000025b5 <func4>:
    25b5:	b8 00 00 00 00       	mov    $0x0,%eax            # ret = 0
    25ba:	85 ff                	test   %edi,%edi
    25bc:	7e 32                	jle    25f0 <func4+0x3b>    # if x <= 0: return 0
    25be:	41 54                	push   %r12
    25c0:	55                   	push   %rbp
    25c1:	53                   	push   %rbx                 # save args
    25c2:	89 fb                	mov    %edi,%ebx            # ebx = x
    25c4:	89 f5                	mov    %esi,%ebp            # ebp = y
    25c6:	89 f0                	mov    %esi,%eax            # ret = y
    25c8:	83 ff 01             	cmp    $0x1,%edi
    25cb:	74 1e                	je     25eb <func4+0x36>    # if x == 1: return y
    25cd:	44 8d 66 01          	lea    0x1(%rsi),%r12d      # r12d = y+1
    25d1:	8d 7f ff             	lea    -0x1(%rdi),%edi      # x = x - 1
    25d4:	44 89 e6             	mov    %r12d,%esi           # y = y+1
    25d7:	e8 d9 ff ff ff       	call   25b5 <func4>         # ebp += func4(_x-1, _y+1)
    25dc:	01 c5                	add    %eax,%ebp
    25de:	8d 7b fe             	lea    -0x2(%rbx),%edi      # x = ebx - 2
    25e1:	44 89 e6             	mov    %r12d,%esi           # y = y+1
    25e4:	e8 cc ff ff ff       	call   25b5 <func4>         # ret = func4(_x-2, _y+1) + ebp
    25e9:	01 e8                	add    %ebp,%eax
    25eb:	5b                   	pop    %rbx
    25ec:	5d                   	pop    %rbp
    25ed:	41 5c                	pop    %r12
    25ef:	c3                   	ret
    25f0:	c3                   	ret  # return func4(_x - 1, _y + 1) + func4(_x - 2, _y + 1) + y;

00000000000025f1 <phase_4>:
    25f1:	48 83 ec 18          	sub    $0x18,%rsp
    25f5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    25fc:	00 00 
    25fe:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2603:	31 c0                	xor    %eax,%eax
    2605:	48 89 e1             	mov    %rsp,%rcx
    2608:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
    260d:	48 8d 35 ed 1f 00 00 	lea    0x1fed(%rip),%rsi        # 4601 <array.0+0x421>
    2614:	e8 37 fb ff ff       	call   2150 <__isoc99_sscanf@plt>
    2619:	83 f8 02             	cmp    $0x2,%eax
    261c:	75 0b                	jne    2629 <phase_4+0x38>
    261e:	8b 04 24             	mov    (%rsp),%eax
    2621:	83 e8 02             	sub    $0x2,%eax
    2624:	83 f8 02             	cmp    $0x2,%eax
    2627:	76 05                	jbe    262e <phase_4+0x3d>
    2629:	e8 bb 05 00 00       	call   2be9 <explode_bomb>
    262e:	8b 34 24             	mov    (%rsp),%esi
    2631:	bf 07 00 00 00       	mov    $0x7,%edi
    2636:	e8 7a ff ff ff       	call   25b5 <func4>
    263b:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    263f:	75 15                	jne    2656 <phase_4+0x65>
    2641:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2646:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    264d:	00 00 
    264f:	75 0c                	jne    265d <phase_4+0x6c>
    2651:	48 83 c4 18          	add    $0x18,%rsp
    2655:	c3                   	ret
    2656:	e8 8e 05 00 00       	call   2be9 <explode_bomb>
    265b:	eb e4                	jmp    2641 <phase_4+0x50>
    265d:	e8 3e fa ff ff       	call   20a0 <__stack_chk_fail@plt>

0000000000002662 <phase_5>:                                             # phase_5(str)
    2662:	53                   	push   %rbx
    2663:	48 89 fb             	mov    %rdi,%rbx
    2666:	e8 85 02 00 00       	call   28f0 <string_length>     # assert strlen(str) == 6
    266b:	83 f8 06             	cmp    $0x6,%eax
    266e:	75 2c                	jne    269c <phase_5+0x3a>
    2670:	48 89 d8             	mov    %rbx,%rax                # char *rax = str;
    2673:	48 8d 7b 06          	lea    0x6(%rbx),%rdi           # char *rdi = str+6;  // end
    2677:	b9 00 00 00 00       	mov    $0x0,%ecx                # int ecx = 0;
    267c:	48 8d 35 5d 1b 00 00 	lea    0x1b5d(%rip),%rsi        # int rsi[];  41e0 <array.0>
    2683:	0f b6 10             	movzbl (%rax),%edx              # char edx = *rax;    (LABEL)
    2686:	83 e2 0f             	and    $0xf,%edx                # edx &= 0b1111
    2689:	03 0c 96             	add    (%rsi,%rdx,4),%ecx       # ecx += rsi[rdx]
    268c:	48 83 c0 01          	add    $0x1,%rax                # rax += 1
    2690:	48 39 f8             	cmp    %rdi,%rax                # if rax != rdi: goto (LABEL)
    2693:	75 ee                	jne    2683 <phase_5+0x21>
    2695:	83 f9 23             	cmp    $0x23,%ecx               # if ecx <= 35: explode
    2698:	75 09                	jne    26a3 <phase_5+0x41>
    269a:	5b                   	pop    %rbx
    269b:	c3                   	ret
    269c:	e8 48 05 00 00       	call   2be9 <explode_bomb>
    26a1:	eb cd                	jmp    2670 <phase_5+0xe>
    26a3:	e8 41 05 00 00       	call   2be9 <explode_bomb>
    26a8:	eb f0                	jmp    269a <phase_5+0x38>

00000000000026aa <phase_6>:
    26aa:	41 56                	push   %r14
    26ac:	41 55                	push   %r13
    26ae:	41 54                	push   %r12
    26b0:	55                   	push   %rbp
    26b1:	53                   	push   %rbx
    26b2:	48 83 ec 60          	sub    $0x60,%rsp
    26b6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    26bd:	00 00 
    26bf:	48 89 44 24 58       	mov    %rax,0x58(%rsp)          # STACK[0x58] = rax
    26c4:	31 c0                	xor    %eax,%eax                # eax = 0
    26c6:	49 89 e5             	mov    %rsp,%r13
    26c9:	4c 89 ee             	mov    %r13,%rsi                # rsi = r13 = STACK
    26cc:	e8 d8 05 00 00       	call   2ca9 <read_six_numbers>  # read_six_numbers("d d d d d d", STACK)
    26d1:	41 be 01 00 00 00    	mov    $0x1,%r14d               # r14 = 1
    26d7:	49 89 e4             	mov    %rsp,%r12                # r12 = STACK
    26da:	eb 28                	jmp    2704 <phase_6+0x5a>      # goto                      LABEL_UPDATE
    26dc:	e8 08 05 00 00       	call   2be9 <explode_bomb>
    26e1:	eb 30                	jmp    2713 <phase_6+0x69>
    26e3:	48 83 c3 01          	add    $0x1,%rbx                # rbx += 1                  LABEL_26e3
    26e7:	83 fb 05             	cmp    $0x5,%ebx
    26ea:	7f 10                	jg     26fc <phase_6+0x52>
    26ec:	41 8b 04 9c          	mov    (%r12,%rbx,4),%eax       # eax = r12[rbx*4]          LABEL_LOOP
    26f0:	39 45 00             	cmp    %eax,0x0(%rbp)           # if STACK != eax: goto     LABEL_26e3
    26f3:	75 ee                	jne    26e3 <phase_6+0x39>
    26f5:	e8 ef 04 00 00       	call   2be9 <explode_bomb>      # bomb (STACK == eax)
    26fa:	eb e7                	jmp    26e3 <phase_6+0x39>
    26fc:	49 83 c6 01          	add    $0x1,%r14
    2700:	49 83 c5 04          	add    $0x4,%r13
    2704:	4c 89 ed             	mov    %r13,%rbp                # rbp = r13                 LABEL_UPDATE
    2707:	41 8b 45 00          	mov    0x0(%r13),%eax           # eax = M[r13] - 1
    270b:	83 e8 01             	sub    $0x1,%eax
    270e:	83 f8 05             	cmp    $0x5,%eax                # if eax > 5: bomb
    2711:	77 c9                	ja     26dc <phase_6+0x32>
    2713:	41 83 fe 05          	cmp    $0x5,%r14d               # if r14 > 5: goto          LABEL_POST
    2717:	7f 05                	jg     271e <phase_6+0x74>
    2719:	4c 89 f3             	mov    %r14,%rbx                # rbx = r14 && goto   LABEL_LOOP
    271c:	eb ce                	jmp    26ec <phase_6+0x42>
    271e:	be 00 00 00 00       	mov    $0x0,%esi                # esi = 0                   LABEL_POST
    2723:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx       # ecx = STACK[rsi * 4]
    2726:	b8 01 00 00 00       	mov    $0x1,%eax                # eax = 1
    272b:	48 8d 15 2e ec 00 00 	lea    0xec2e(%rip),%rdx        # rdx =  11360 <node1>
    2732:	83 f9 01             	cmp    $0x1,%ecx                # if ecx <= 1: goto         LABLE_POSTPOST
    2735:	7e 0b                	jle    2742 <phase_6+0x98>
    2737:	48 8b 52 08          	mov    0x8(%rdx),%rdx           # 
    273b:	83 c0 01             	add    $0x1,%eax
    273e:	39 c8                	cmp    %ecx,%eax
    2740:	75 f5                	jne    2737 <phase_6+0x8d>
    2742:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)   # LABLE_POSTPOST
    2747:	48 83 c6 01          	add    $0x1,%rsi
    274b:	48 83 fe 06          	cmp    $0x6,%rsi
    274f:	75 d2                	jne    2723 <phase_6+0x79>
    2751:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    2756:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    275b:	48 89 43 08          	mov    %rax,0x8(%rbx)
    275f:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    2764:	48 89 50 08          	mov    %rdx,0x8(%rax)
    2768:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    276d:	48 89 42 08          	mov    %rax,0x8(%rdx)
    2771:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    2776:	48 89 50 08          	mov    %rdx,0x8(%rax)
    277a:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    277f:	48 89 42 08          	mov    %rax,0x8(%rdx)
    2783:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    278a:	00 
    278b:	bd 05 00 00 00       	mov    $0x5,%ebp
    2790:	eb 09                	jmp    279b <phase_6+0xf1>
    2792:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    2796:	83 ed 01             	sub    $0x1,%ebp
    2799:	74 11                	je     27ac <phase_6+0x102>
    279b:	48 8b 43 08          	mov    0x8(%rbx),%rax
    279f:	8b 00                	mov    (%rax),%eax
    27a1:	39 03                	cmp    %eax,(%rbx)
    27a3:	7e ed                	jle    2792 <phase_6+0xe8>
    27a5:	e8 3f 04 00 00       	call   2be9 <explode_bomb>
    27aa:	eb e6                	jmp    2792 <phase_6+0xe8>
    27ac:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    27b1:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    27b8:	00 00 
    27ba:	75 0d                	jne    27c9 <phase_6+0x11f>
    27bc:	48 83 c4 60          	add    $0x60,%rsp
    27c0:	5b                   	pop    %rbx
    27c1:	5d                   	pop    %rbp
    27c2:	41 5c                	pop    %r12
    27c4:	41 5d                	pop    %r13
    27c6:	41 5e                	pop    %r14
    27c8:	c3                   	ret
    27c9:	e8 d2 f8 ff ff       	call   20a0 <__stack_chk_fail@plt>

00000000000027ce <fun7>:                                                # fun7(rdi, rsi)
    27ce:	55                   	push   %rbp
    27cf:	53                   	push   %rbx
    27d0:	48 83 ec 08          	sub    $0x8,%rsp
    27d4:	48 89 fb             	mov    %rdi,%rbx
    27d7:	48 89 f5             	mov    %rsi,%rbp
    27da:	48 85 ff             	test   %rdi,%rdi
    27dd:	74 2b                	je     280a <fun7+0x3c>         # if rdi == NULL: explode
    27df:	0f b6 55 00          	movzbl 0x0(%rbp),%edx           # edx = *rsi  (first char)
    27e3:	84 d2                	test   %dl,%dl
    27e5:	74 2a                	je     2811 <fun7+0x43>         # if dl == '\0':  return rdi->value
    27e7:	80 fa 61             	cmp    $0x61,%dl
    27ea:	74 29                	je     2815 <fun7+0x47>         # return fun7(rdi->child[rdx-'a'], rsi+1)  0 <= rdx < 26
    27ec:	0f be d2             	movsbl %dl,%edx
    27ef:	83 ea 61             	sub    $0x61,%edx
    27f2:	b8 01 00 00 00       	mov    $0x1,%eax
    27f7:	39 d0                	cmp    %edx,%eax
    27f9:	74 1f                	je     281a <fun7+0x4c>
    27fb:	83 c0 01             	add    $0x1,%eax
    27fe:	83 f8 1a             	cmp    $0x1a,%eax
    2801:	75 f4                	jne    27f7 <fun7+0x29>
    2803:	e8 e1 03 00 00       	call   2be9 <explode_bomb>
    2808:	eb 21                	jmp    282b <fun7+0x5d>
    280a:	e8 da 03 00 00       	call   2be9 <explode_bomb>
    280f:	eb ce                	jmp    27df <fun7+0x11>
    2811:	8b 03                	mov    (%rbx),%eax
    2813:	eb 16                	jmp    282b <fun7+0x5d>
    2815:	ba 00 00 00 00       	mov    $0x0,%edx
    281a:	48 8d 75 01          	lea    0x1(%rbp),%rsi
    281e:	48 63 d2             	movslq %edx,%rdx
    2821:	48 8b 7c d3 08       	mov    0x8(%rbx,%rdx,8),%rdi
    2826:	e8 a3 ff ff ff       	call   27ce <fun7>
    282b:	48 83 c4 08          	add    $0x8,%rsp
    282f:	5b                   	pop    %rbx
    2830:	5d                   	pop    %rbp
    2831:	c3                   	ret

0000000000002832 <secret_phase>:
    2832:	48 83 ec 18          	sub    $0x18,%rsp
    2836:	c7 44 24 0c 14 00 00 	movl   $0x14,0xc(%rsp)
    283d:	00 
    283e:	e8 a7 04 00 00       	call   2cea <read_line>
    2843:	48 89 c6             	mov    %rax,%rsi
    2846:	48 8d 3d 93 62 00 00 	lea    0x6293(%rip),%rdi        # 8ae0 <t0>
    284d:	e8 7c ff ff ff       	call   27ce <fun7>
    2852:	8b 54 24 0c          	mov    0xc(%rsp),%edx
    2856:	39 c2                	cmp    %eax,%edx                # assert fun7(root, read_line()) == 20
    2858:	75 16                	jne    2870 <secret_phase+0x3e>
    285a:	48 8d 3d 1f 19 00 00 	lea    0x191f(%rip),%rdi        # 4180 <_IO_stdin_used+0x180>
    2861:	e8 0a f8 ff ff       	call   2070 <puts@plt>
    2866:	e8 b9 05 00 00       	call   2e24 <phase_defused>
    286b:	48 83 c4 18          	add    $0x18,%rsp
    286f:	c3                   	ret
    2870:	e8 74 03 00 00       	call   2be9 <explode_bomb>
    2875:	eb e3                	jmp    285a <secret_phase+0x28>

0000000000002877 <sig_handler>:
    2877:	48 83 ec 08          	sub    $0x8,%rsp
    287b:	48 8d 3d 9e 19 00 00 	lea    0x199e(%rip),%rdi        # 4220 <array.0+0x40>
    2882:	e8 e9 f7 ff ff       	call   2070 <puts@plt>
    2887:	bf 03 00 00 00       	mov    $0x3,%edi
    288c:	e8 2f f9 ff ff       	call   21c0 <sleep@plt>
    2891:	48 8d 3d 71 1b 00 00 	lea    0x1b71(%rip),%rdi        # 4409 <array.0+0x229>
    2898:	b8 00 00 00 00       	mov    $0x0,%eax
    289d:	e8 0e f8 ff ff       	call   20b0 <printf@plt>
    28a2:	48 8b 3d 17 ef 00 00 	mov    0xef17(%rip),%rdi        # 117c0 <stdout@GLIBC_2.2.5>
    28a9:	e8 92 f8 ff ff       	call   2140 <fflush@plt>
    28ae:	bf 01 00 00 00       	mov    $0x1,%edi
    28b3:	e8 08 f9 ff ff       	call   21c0 <sleep@plt>
    28b8:	48 8d 3d 52 1b 00 00 	lea    0x1b52(%rip),%rdi        # 4411 <array.0+0x231>
    28bf:	e8 ac f7 ff ff       	call   2070 <puts@plt>
    28c4:	bf 10 00 00 00       	mov    $0x10,%edi
    28c9:	e8 d2 f8 ff ff       	call   21a0 <exit@plt>

00000000000028ce <invalid_phase>:
    28ce:	48 83 ec 08          	sub    $0x8,%rsp
    28d2:	48 89 fe             	mov    %rdi,%rsi
    28d5:	48 8d 3d 3f 1b 00 00 	lea    0x1b3f(%rip),%rdi        # 441b <array.0+0x23b>
    28dc:	b8 00 00 00 00       	mov    $0x0,%eax
    28e1:	e8 ca f7 ff ff       	call   20b0 <printf@plt>
    28e6:	bf 08 00 00 00       	mov    $0x8,%edi
    28eb:	e8 b0 f8 ff ff       	call   21a0 <exit@plt>

00000000000028f0 <string_length>:
    28f0:	80 3f 00             	cmpb   $0x0,(%rdi)
    28f3:	74 12                	je     2907 <string_length+0x17>
    28f5:	b8 00 00 00 00       	mov    $0x0,%eax
    28fa:	48 83 c7 01          	add    $0x1,%rdi
    28fe:	83 c0 01             	add    $0x1,%eax
    2901:	80 3f 00             	cmpb   $0x0,(%rdi)
    2904:	75 f4                	jne    28fa <string_length+0xa>
    2906:	c3                   	ret
    2907:	b8 00 00 00 00       	mov    $0x0,%eax
    290c:	c3                   	ret

000000000000290d <strings_not_equal>:
    290d:	41 54                	push   %r12
    290f:	55                   	push   %rbp
    2910:	53                   	push   %rbx
    2911:	48 89 fb             	mov    %rdi,%rbx
    2914:	48 89 f5             	mov    %rsi,%rbp
    2917:	e8 d4 ff ff ff       	call   28f0 <string_length>
    291c:	41 89 c4             	mov    %eax,%r12d
    291f:	48 89 ef             	mov    %rbp,%rdi
    2922:	e8 c9 ff ff ff       	call   28f0 <string_length>
    2927:	89 c2                	mov    %eax,%edx
    2929:	b8 01 00 00 00       	mov    $0x1,%eax
    292e:	41 39 d4             	cmp    %edx,%r12d
    2931:	75 31                	jne    2964 <strings_not_equal+0x57>
    2933:	0f b6 13             	movzbl (%rbx),%edx
    2936:	84 d2                	test   %dl,%dl
    2938:	74 1e                	je     2958 <strings_not_equal+0x4b>
    293a:	b8 00 00 00 00       	mov    $0x0,%eax
    293f:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    2943:	75 1a                	jne    295f <strings_not_equal+0x52>
    2945:	48 83 c0 01          	add    $0x1,%rax
    2949:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    294d:	84 d2                	test   %dl,%dl
    294f:	75 ee                	jne    293f <strings_not_equal+0x32>
    2951:	b8 00 00 00 00       	mov    $0x0,%eax
    2956:	eb 0c                	jmp    2964 <strings_not_equal+0x57>
    2958:	b8 00 00 00 00       	mov    $0x0,%eax
    295d:	eb 05                	jmp    2964 <strings_not_equal+0x57>
    295f:	b8 01 00 00 00       	mov    $0x1,%eax
    2964:	5b                   	pop    %rbx
    2965:	5d                   	pop    %rbp
    2966:	41 5c                	pop    %r12
    2968:	c3                   	ret

0000000000002969 <initialize_bomb>:
    2969:	55                   	push   %rbp
    296a:	53                   	push   %rbx
    296b:	48 81 ec 58 20 00 00 	sub    $0x2058,%rsp
    2972:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2979:	00 00 
    297b:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    2982:	00 
    2983:	31 c0                	xor    %eax,%eax
    2985:	48 8d 35 eb fe ff ff 	lea    -0x115(%rip),%rsi        # 2877 <sig_handler>
    298c:	bf 02 00 00 00       	mov    $0x2,%edi
    2991:	e8 7a f7 ff ff       	call   2110 <signal@plt>
    2996:	48 89 e7             	mov    %rsp,%rdi
    2999:	be 40 00 00 00       	mov    $0x40,%esi
    299e:	e8 dd f7 ff ff       	call   2180 <gethostname@plt>
    29a3:	85 c0                	test   %eax,%eax
    29a5:	75 45                	jne    29ec <initialize_bomb+0x83>
    29a7:	48 8b 3d 12 ea 00 00 	mov    0xea12(%rip),%rdi        # 113c0 <host_table>
    29ae:	48 8d 1d 13 ea 00 00 	lea    0xea13(%rip),%rbx        # 113c8 <host_table+0x8>
    29b5:	48 89 e5             	mov    %rsp,%rbp
    29b8:	48 85 ff             	test   %rdi,%rdi
    29bb:	74 19                	je     29d6 <initialize_bomb+0x6d>
    29bd:	48 89 ee             	mov    %rbp,%rsi
    29c0:	e8 7b f6 ff ff       	call   2040 <strcasecmp@plt>
    29c5:	85 c0                	test   %eax,%eax
    29c7:	74 59                	je     2a22 <initialize_bomb+0xb9>
    29c9:	48 83 c3 08          	add    $0x8,%rbx
    29cd:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    29d1:	48 85 ff             	test   %rdi,%rdi
    29d4:	75 e7                	jne    29bd <initialize_bomb+0x54>
    29d6:	48 8d 3d b3 18 00 00 	lea    0x18b3(%rip),%rdi        # 4290 <array.0+0xb0>
    29dd:	e8 8e f6 ff ff       	call   2070 <puts@plt>
    29e2:	bf 08 00 00 00       	mov    $0x8,%edi
    29e7:	e8 b4 f7 ff ff       	call   21a0 <exit@plt>
    29ec:	48 8d 3d 65 18 00 00 	lea    0x1865(%rip),%rdi        # 4258 <array.0+0x78>
    29f3:	e8 78 f6 ff ff       	call   2070 <puts@plt>
    29f8:	bf 08 00 00 00       	mov    $0x8,%edi
    29fd:	e8 9e f7 ff ff       	call   21a0 <exit@plt>
    2a02:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
    2a07:	48 8d 3d 1e 1a 00 00 	lea    0x1a1e(%rip),%rdi        # 442c <array.0+0x24c>
    2a0e:	b8 00 00 00 00       	mov    $0x0,%eax
    2a13:	e8 98 f6 ff ff       	call   20b0 <printf@plt>
    2a18:	bf 08 00 00 00       	mov    $0x8,%edi
    2a1d:	e8 7e f7 ff ff       	call   21a0 <exit@plt>
    2a22:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2a27:	e8 61 0e 00 00       	call   388d <init_driver>
    2a2c:	85 c0                	test   %eax,%eax
    2a2e:	78 d2                	js     2a02 <initialize_bomb+0x99>
    2a30:	48 8d 3d 0f 1a 00 00 	lea    0x1a0f(%rip),%rdi        # 4446 <array.0+0x266>
    2a37:	e8 34 f6 ff ff       	call   2070 <puts@plt>
    2a3c:	48 8d 3d 0f 1a 00 00 	lea    0x1a0f(%rip),%rdi        # 4452 <array.0+0x272>
    2a43:	e8 28 f6 ff ff       	call   2070 <puts@plt>
    2a48:	48 8d 3d 0f 1a 00 00 	lea    0x1a0f(%rip),%rdi        # 445e <array.0+0x27e>
    2a4f:	e8 1c f6 ff ff       	call   2070 <puts@plt>
    2a54:	48 8d 3d 0f 1a 00 00 	lea    0x1a0f(%rip),%rdi        # 446a <array.0+0x28a>
    2a5b:	e8 10 f6 ff ff       	call   2070 <puts@plt>
    2a60:	48 8d 3d 0f 1a 00 00 	lea    0x1a0f(%rip),%rdi        # 4476 <array.0+0x296>
    2a67:	e8 04 f6 ff ff       	call   2070 <puts@plt>
    2a6c:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    2a73:	00 
    2a74:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2a7b:	00 00 
    2a7d:	75 0a                	jne    2a89 <initialize_bomb+0x120>
    2a7f:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    2a86:	5b                   	pop    %rbx
    2a87:	5d                   	pop    %rbp
    2a88:	c3                   	ret
    2a89:	e8 12 f6 ff ff       	call   20a0 <__stack_chk_fail@plt>

0000000000002a8e <initialize_bomb_solve>:
    2a8e:	c3                   	ret

0000000000002a8f <blank_line>:
    2a8f:	55                   	push   %rbp
    2a90:	53                   	push   %rbx
    2a91:	48 83 ec 08          	sub    $0x8,%rsp
    2a95:	48 89 fd             	mov    %rdi,%rbp
    2a98:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    2a9c:	84 db                	test   %bl,%bl
    2a9e:	74 1e                	je     2abe <blank_line+0x2f>
    2aa0:	e8 2b f7 ff ff       	call   21d0 <__ctype_b_loc@plt>
    2aa5:	48 83 c5 01          	add    $0x1,%rbp
    2aa9:	48 0f be db          	movsbq %bl,%rbx
    2aad:	48 8b 00             	mov    (%rax),%rax
    2ab0:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    2ab5:	75 e1                	jne    2a98 <blank_line+0x9>
    2ab7:	b8 00 00 00 00       	mov    $0x0,%eax
    2abc:	eb 05                	jmp    2ac3 <blank_line+0x34>
    2abe:	b8 01 00 00 00       	mov    $0x1,%eax
    2ac3:	48 83 c4 08          	add    $0x8,%rsp
    2ac7:	5b                   	pop    %rbx
    2ac8:	5d                   	pop    %rbp
    2ac9:	c3                   	ret

0000000000002aca <skip>:
    2aca:	55                   	push   %rbp
    2acb:	53                   	push   %rbx
    2acc:	48 83 ec 08          	sub    $0x8,%rsp
    2ad0:	48 8d 2d a9 ed 00 00 	lea    0xeda9(%rip),%rbp        # 11880 <input_strings>
    2ad7:	48 63 15 9a ed 00 00 	movslq 0xed9a(%rip),%rdx        # 11878 <num_input_strings>
    2ade:	48 89 d0             	mov    %rdx,%rax
    2ae1:	48 c1 e0 04          	shl    $0x4,%rax
    2ae5:	48 29 d0             	sub    %rdx,%rax
    2ae8:	48 8d 7c c5 00       	lea    0x0(%rbp,%rax,8),%rdi
    2aed:	48 8b 15 fc ec 00 00 	mov    0xecfc(%rip),%rdx        # 117f0 <infile>
    2af4:	be 78 00 00 00       	mov    $0x78,%esi
    2af9:	e8 f2 f5 ff ff       	call   20f0 <fgets@plt>
    2afe:	48 89 c3             	mov    %rax,%rbx
    2b01:	48 85 c0             	test   %rax,%rax
    2b04:	74 0c                	je     2b12 <skip+0x48>
    2b06:	48 89 c7             	mov    %rax,%rdi
    2b09:	e8 81 ff ff ff       	call   2a8f <blank_line>
    2b0e:	85 c0                	test   %eax,%eax
    2b10:	75 c5                	jne    2ad7 <skip+0xd>
    2b12:	48 89 d8             	mov    %rbx,%rax
    2b15:	48 83 c4 08          	add    $0x8,%rsp
    2b19:	5b                   	pop    %rbx
    2b1a:	5d                   	pop    %rbp
    2b1b:	c3                   	ret

0000000000002b1c <send_msg>:
    2b1c:	53                   	push   %rbx
    2b1d:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
    2b24:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2b2b:	00 00 
    2b2d:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    2b34:	00 
    2b35:	31 c0                	xor    %eax,%eax
    2b37:	44 8b 05 3a ed 00 00 	mov    0xed3a(%rip),%r8d        # 11878 <num_input_strings>
    2b3e:	41 8d 40 ff          	lea    -0x1(%r8),%eax
    2b42:	48 98                	cltq
    2b44:	48 89 c2             	mov    %rax,%rdx
    2b47:	48 c1 e2 04          	shl    $0x4,%rdx
    2b4b:	48 29 c2             	sub    %rax,%rdx
    2b4e:	85 ff                	test   %edi,%edi
    2b50:	48 8d 0d 2b 19 00 00 	lea    0x192b(%rip),%rcx        # 4482 <array.0+0x2a2>
    2b57:	48 8d 05 2c 19 00 00 	lea    0x192c(%rip),%rax        # 448a <array.0+0x2aa>
    2b5e:	48 0f 44 c8          	cmove  %rax,%rcx
    2b62:	48 89 e3             	mov    %rsp,%rbx
    2b65:	48 8d 05 14 ed 00 00 	lea    0xed14(%rip),%rax        # 11880 <input_strings>
    2b6c:	4c 8d 0c d0          	lea    (%rax,%rdx,8),%r9
    2b70:	8b 15 5e 5f 00 00    	mov    0x5f5e(%rip),%edx        # 8ad4 <bomb_id>
    2b76:	48 8d 35 16 19 00 00 	lea    0x1916(%rip),%rsi        # 4493 <array.0+0x2b3>
    2b7d:	48 89 df             	mov    %rbx,%rdi
    2b80:	b8 00 00 00 00       	mov    $0x0,%eax
    2b85:	e8 06 f6 ff ff       	call   2190 <sprintf@plt>
    2b8a:	4c 8d 84 24 00 20 00 	lea    0x2000(%rsp),%r8
    2b91:	00 
    2b92:	b9 00 00 00 00       	mov    $0x0,%ecx
    2b97:	48 89 da             	mov    %rbx,%rdx
    2b9a:	48 8d 35 0f 5f 00 00 	lea    0x5f0f(%rip),%rsi        # 8ab0 <user_password>
    2ba1:	48 8d 3d 20 5f 00 00 	lea    0x5f20(%rip),%rdi        # 8ac8 <userid>
    2ba8:	e8 c0 0e 00 00       	call   3a6d <driver_post>
    2bad:	85 c0                	test   %eax,%eax
    2baf:	78 1c                	js     2bcd <send_msg+0xb1>
    2bb1:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    2bb8:	00 
    2bb9:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2bc0:	00 00 
    2bc2:	75 20                	jne    2be4 <send_msg+0xc8>
    2bc4:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    2bcb:	5b                   	pop    %rbx
    2bcc:	c3                   	ret
    2bcd:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    2bd4:	00 
    2bd5:	e8 96 f4 ff ff       	call   2070 <puts@plt>
    2bda:	bf 00 00 00 00       	mov    $0x0,%edi
    2bdf:	e8 bc f5 ff ff       	call   21a0 <exit@plt>
    2be4:	e8 b7 f4 ff ff       	call   20a0 <__stack_chk_fail@plt>

0000000000002be9 <explode_bomb>:
    2be9:	48 83 ec 08          	sub    $0x8,%rsp
    2bed:	48 8d 3d d4 16 00 00 	lea    0x16d4(%rip),%rdi        # 42c8 <array.0+0xe8>
    2bf4:	e8 77 f4 ff ff       	call   2070 <puts@plt>
    2bf9:	48 8d 3d 9f 18 00 00 	lea    0x189f(%rip),%rdi        # 449f <array.0+0x2bf>
    2c00:	e8 6b f4 ff ff       	call   2070 <puts@plt>
    2c05:	48 8d 3d b0 18 00 00 	lea    0x18b0(%rip),%rdi        # 44bc <array.0+0x2dc>
    2c0c:	e8 5f f4 ff ff       	call   2070 <puts@plt>
    2c11:	48 8d 3d c1 18 00 00 	lea    0x18c1(%rip),%rdi        # 44d9 <array.0+0x2f9>
    2c18:	e8 53 f4 ff ff       	call   2070 <puts@plt>
    2c1d:	48 8d 3d d2 18 00 00 	lea    0x18d2(%rip),%rdi        # 44f6 <array.0+0x316>
    2c24:	e8 47 f4 ff ff       	call   2070 <puts@plt>
    2c29:	48 8d 3d e3 18 00 00 	lea    0x18e3(%rip),%rdi        # 4513 <array.0+0x333>
    2c30:	e8 3b f4 ff ff       	call   2070 <puts@plt>
    2c35:	48 8d 3d f3 18 00 00 	lea    0x18f3(%rip),%rdi        # 452f <array.0+0x34f>
    2c3c:	e8 2f f4 ff ff       	call   2070 <puts@plt>
    2c41:	48 8d 3d 04 19 00 00 	lea    0x1904(%rip),%rdi        # 454c <array.0+0x36c>
    2c48:	e8 23 f4 ff ff       	call   2070 <puts@plt>
    2c4d:	48 8d 3d 15 19 00 00 	lea    0x1915(%rip),%rdi        # 4569 <array.0+0x389>
    2c54:	e8 17 f4 ff ff       	call   2070 <puts@plt>
    2c59:	48 8d 3d 26 19 00 00 	lea    0x1926(%rip),%rdi        # 4586 <array.0+0x3a6>
    2c60:	e8 0b f4 ff ff       	call   2070 <puts@plt>
    2c65:	48 8d 3d 37 19 00 00 	lea    0x1937(%rip),%rdi        # 45a3 <array.0+0x3c3>
    2c6c:	e8 ff f3 ff ff       	call   2070 <puts@plt>
    2c71:	48 8d 3d 48 19 00 00 	lea    0x1948(%rip),%rdi        # 45c0 <array.0+0x3e0>
    2c78:	e8 f3 f3 ff ff       	call   2070 <puts@plt>
    2c7d:	48 8d 3d 59 19 00 00 	lea    0x1959(%rip),%rdi        # 45dd <array.0+0x3fd>
    2c84:	e8 e7 f3 ff ff       	call   2070 <puts@plt>
    2c89:	bf 00 00 00 00       	mov    $0x0,%edi
    2c8e:	e8 89 fe ff ff       	call   2b1c <send_msg>
    2c93:	48 8d 3d 76 16 00 00 	lea    0x1676(%rip),%rdi        # 4310 <array.0+0x130>
    2c9a:	e8 d1 f3 ff ff       	call   2070 <puts@plt>
    2c9f:	bf 08 00 00 00       	mov    $0x8,%edi
    2ca4:	e8 f7 f4 ff ff       	call   21a0 <exit@plt>

0000000000002ca9 <read_six_numbers>:    # (string, array)
    2ca9:	48 83 ec 08          	sub    $0x8,%rsp
    2cad:	48 89 f2             	mov    %rsi,%rdx                # in2 -> arg3
    2cb0:	48 8d 4e 04          	lea    0x4(%rsi),%rcx           # in2+0x4 -> arg4
    2cb4:	48 8d 46 14          	lea    0x14(%rsi),%rax          # in2+0x14 -> ret
    2cb8:	50                   	push   %rax
    2cb9:	48 8d 46 10          	lea    0x10(%rsi),%rax          # in2+0x10 -> ret
    2cbd:	50                   	push   %rax
    2cbe:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9            # in2+0xc -> arg6
    2cc2:	4c 8d 46 08          	lea    0x8(%rsi),%r8            # in2+0x8 -> arg5
    2cc6:	48 8d 35 28 19 00 00 	lea    0x1928(%rip),%rsi        # 45f5 <array.0+0x415>
    2ccd:	b8 00 00 00 00       	mov    $0x0,%eax
    2cd2:	e8 79 f4 ff ff       	call   2150 <__isoc99_sscanf@plt>    # (string, _, in2, in2+0x4, in2+0x8, in2+c)
    2cd7:	48 83 c4 10          	add    $0x10,%rsp
    2cdb:	83 f8 05             	cmp    $0x5,%eax
    2cde:	7e 05                	jle    2ce5 <read_six_numbers+0x3c>  # bomb if 0x5 <= ret
    2ce0:	48 83 c4 08          	add    $0x8,%rsp
    2ce4:	c3                   	ret
    2ce5:	e8 ff fe ff ff       	call   2be9 <explode_bomb>

0000000000002cea <read_line>:
    2cea:	55                   	push   %rbp
    2ceb:	53                   	push   %rbx
    2cec:	48 83 ec 08          	sub    $0x8,%rsp
    2cf0:	b8 00 00 00 00       	mov    $0x0,%eax
    2cf5:	e8 d0 fd ff ff       	call   2aca <skip>
    2cfa:	48 85 c0             	test   %rax,%rax
    2cfd:	74 63                	je     2d62 <read_line+0x78>
    2cff:	8b 1d 73 eb 00 00    	mov    0xeb73(%rip),%ebx        # 11878 <num_input_strings>
    2d05:	48 63 d3             	movslq %ebx,%rdx
    2d08:	48 89 d0             	mov    %rdx,%rax
    2d0b:	48 c1 e0 04          	shl    $0x4,%rax
    2d0f:	48 29 d0             	sub    %rdx,%rax
    2d12:	48 8d 15 67 eb 00 00 	lea    0xeb67(%rip),%rdx        # 11880 <input_strings>
    2d19:	48 8d 2c c2          	lea    (%rdx,%rax,8),%rbp
    2d1d:	48 89 ef             	mov    %rbp,%rdi
    2d20:	e8 6b f3 ff ff       	call   2090 <strlen@plt>
    2d25:	83 f8 76             	cmp    $0x76,%eax
    2d28:	0f 8f ac 00 00 00    	jg     2dda <read_line+0xf0>
    2d2e:	83 e8 01             	sub    $0x1,%eax
    2d31:	48 98                	cltq
    2d33:	48 63 cb             	movslq %ebx,%rcx
    2d36:	48 89 ca             	mov    %rcx,%rdx
    2d39:	48 c1 e2 04          	shl    $0x4,%rdx
    2d3d:	48 29 ca             	sub    %rcx,%rdx
    2d40:	48 8d 0d 39 eb 00 00 	lea    0xeb39(%rip),%rcx        # 11880 <input_strings>
    2d47:	48 8d 14 d1          	lea    (%rcx,%rdx,8),%rdx
    2d4b:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    2d4f:	83 c3 01             	add    $0x1,%ebx
    2d52:	89 1d 20 eb 00 00    	mov    %ebx,0xeb20(%rip)        # 11878 <num_input_strings>
    2d58:	48 89 e8             	mov    %rbp,%rax
    2d5b:	48 83 c4 08          	add    $0x8,%rsp
    2d5f:	5b                   	pop    %rbx
    2d60:	5d                   	pop    %rbp
    2d61:	c3                   	ret
    2d62:	48 8b 05 67 ea 00 00 	mov    0xea67(%rip),%rax        # 117d0 <stdin@GLIBC_2.2.5>
    2d69:	48 39 05 80 ea 00 00 	cmp    %rax,0xea80(%rip)        # 117f0 <infile>
    2d70:	74 1b                	je     2d8d <read_line+0xa3>
    2d72:	48 8d 3d ac 18 00 00 	lea    0x18ac(%rip),%rdi        # 4625 <array.0+0x445>
    2d79:	e8 b2 f2 ff ff       	call   2030 <getenv@plt>
    2d7e:	48 85 c0             	test   %rax,%rax
    2d81:	74 20                	je     2da3 <read_line+0xb9>
    2d83:	bf 00 00 00 00       	mov    $0x0,%edi
    2d88:	e8 13 f4 ff ff       	call   21a0 <exit@plt>
    2d8d:	48 8d 3d 73 18 00 00 	lea    0x1873(%rip),%rdi        # 4607 <array.0+0x427>
    2d94:	e8 d7 f2 ff ff       	call   2070 <puts@plt>
    2d99:	bf 08 00 00 00       	mov    $0x8,%edi
    2d9e:	e8 fd f3 ff ff       	call   21a0 <exit@plt>
    2da3:	48 8b 05 26 ea 00 00 	mov    0xea26(%rip),%rax        # 117d0 <stdin@GLIBC_2.2.5>
    2daa:	48 89 05 3f ea 00 00 	mov    %rax,0xea3f(%rip)        # 117f0 <infile>
    2db1:	b8 00 00 00 00       	mov    $0x0,%eax
    2db6:	e8 0f fd ff ff       	call   2aca <skip>
    2dbb:	48 85 c0             	test   %rax,%rax
    2dbe:	0f 85 3b ff ff ff    	jne    2cff <read_line+0x15>
    2dc4:	48 8d 3d 3c 18 00 00 	lea    0x183c(%rip),%rdi        # 4607 <array.0+0x427>
    2dcb:	e8 a0 f2 ff ff       	call   2070 <puts@plt>
    2dd0:	bf 00 00 00 00       	mov    $0x0,%edi
    2dd5:	e8 c6 f3 ff ff       	call   21a0 <exit@plt>
    2dda:	48 8d 3d 4f 18 00 00 	lea    0x184f(%rip),%rdi        # 4630 <array.0+0x450>
    2de1:	e8 8a f2 ff ff       	call   2070 <puts@plt>
    2de6:	8b 05 8c ea 00 00    	mov    0xea8c(%rip),%eax        # 11878 <num_input_strings>
    2dec:	8d 50 01             	lea    0x1(%rax),%edx
    2def:	89 15 83 ea 00 00    	mov    %edx,0xea83(%rip)        # 11878 <num_input_strings>
    2df5:	48 98                	cltq
    2df7:	48 6b c0 78          	imul   $0x78,%rax,%rax
    2dfb:	48 8d 15 7e ea 00 00 	lea    0xea7e(%rip),%rdx        # 11880 <input_strings>
    2e02:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    2e09:	75 6e 63 
    2e0c:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    2e13:	2a 2a 00 
    2e16:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    2e1a:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    2e1f:	e8 c5 fd ff ff       	call   2be9 <explode_bomb>

0000000000002e24 <phase_defused>:
    2e24:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    2e2b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2e32:	00 00 
    2e34:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    2e3b:	00 
    2e3c:	31 c0                	xor    %eax,%eax
    2e3e:	bf 01 00 00 00       	mov    $0x1,%edi
    2e43:	e8 d4 fc ff ff       	call   2b1c <send_msg>
    2e48:	83 3d 29 ea 00 00 06 	cmpl   $0x6,0xea29(%rip)        # 11878 <num_input_strings>
    2e4f:	74 1f                	je     2e70 <phase_defused+0x4c>
    2e51:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    2e58:	00 
    2e59:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2e60:	00 00 
    2e62:	0f 85 87 00 00 00    	jne    2eef <phase_defused+0xcb>
    2e68:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    2e6f:	c3                   	ret
    2e70:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    2e75:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    2e7a:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    2e7f:	48 8d 35 c5 17 00 00 	lea    0x17c5(%rip),%rsi        # 464b <array.0+0x46b>
    2e86:	48 8d 3d 5b eb 00 00 	lea    0xeb5b(%rip),%rdi        # 119e8 <input_strings+0x168>
    2e8d:	b8 00 00 00 00       	mov    $0x0,%eax
    2e92:	e8 b9 f2 ff ff       	call   2150 <__isoc99_sscanf@plt>
    2e97:	83 f8 03             	cmp    $0x3,%eax
    2e9a:	74 1a                	je     2eb6 <phase_defused+0x92>
    2e9c:	48 8d 3d f5 14 00 00 	lea    0x14f5(%rip),%rdi        # 4398 <array.0+0x1b8>
    2ea3:	e8 c8 f1 ff ff       	call   2070 <puts@plt>
    2ea8:	48 8d 3d 19 15 00 00 	lea    0x1519(%rip),%rdi        # 43c8 <array.0+0x1e8>
    2eaf:	e8 bc f1 ff ff       	call   2070 <puts@plt>
    2eb4:	eb 9b                	jmp    2e51 <phase_defused+0x2d>
    2eb6:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    2ebb:	48 8d 35 92 17 00 00 	lea    0x1792(%rip),%rsi        # 4654 <array.0+0x474>
    2ec2:	e8 46 fa ff ff       	call   290d <strings_not_equal>
    2ec7:	85 c0                	test   %eax,%eax
    2ec9:	75 d1                	jne    2e9c <phase_defused+0x78>
    2ecb:	48 8d 3d 66 14 00 00 	lea    0x1466(%rip),%rdi        # 4338 <array.0+0x158>
    2ed2:	e8 99 f1 ff ff       	call   2070 <puts@plt>
    2ed7:	48 8d 3d 82 14 00 00 	lea    0x1482(%rip),%rdi        # 4360 <array.0+0x180>
    2ede:	e8 8d f1 ff ff       	call   2070 <puts@plt>
    2ee3:	b8 00 00 00 00       	mov    $0x0,%eax
    2ee8:	e8 45 f9 ff ff       	call   2832 <secret_phase>
    2eed:	eb ad                	jmp    2e9c <phase_defused+0x78>
    2eef:	e8 ac f1 ff ff       	call   20a0 <__stack_chk_fail@plt>

0000000000002ef4 <sigalrm_handler>:
    2ef4:	48 83 ec 08          	sub    $0x8,%rsp
    2ef8:	ba 00 00 00 00       	mov    $0x0,%edx
    2efd:	48 8d 35 6c 17 00 00 	lea    0x176c(%rip),%rsi        # 4670 <array.0+0x490>
    2f04:	48 8b 3d d5 e8 00 00 	mov    0xe8d5(%rip),%rdi        # 117e0 <stderr@GLIBC_2.2.5>
    2f0b:	b8 00 00 00 00       	mov    $0x0,%eax
    2f10:	e8 1b f2 ff ff       	call   2130 <fprintf@plt>
    2f15:	bf 01 00 00 00       	mov    $0x1,%edi
    2f1a:	e8 81 f2 ff ff       	call   21a0 <exit@plt>

0000000000002f1f <rio_writen>:
    2f1f:	41 56                	push   %r14
    2f21:	41 55                	push   %r13
    2f23:	41 54                	push   %r12
    2f25:	55                   	push   %rbp
    2f26:	53                   	push   %rbx
    2f27:	49 89 d5             	mov    %rdx,%r13
    2f2a:	48 85 d2             	test   %rdx,%rdx
    2f2d:	74 3b                	je     2f6a <rio_writen+0x4b>
    2f2f:	41 89 fc             	mov    %edi,%r12d
    2f32:	48 89 f5             	mov    %rsi,%rbp
    2f35:	48 89 d3             	mov    %rdx,%rbx
    2f38:	41 be 00 00 00 00    	mov    $0x0,%r14d
    2f3e:	eb 08                	jmp    2f48 <rio_writen+0x29>
    2f40:	48 01 c5             	add    %rax,%rbp
    2f43:	48 29 c3             	sub    %rax,%rbx
    2f46:	74 22                	je     2f6a <rio_writen+0x4b>
    2f48:	48 89 da             	mov    %rbx,%rdx
    2f4b:	48 89 ee             	mov    %rbp,%rsi
    2f4e:	44 89 e7             	mov    %r12d,%edi
    2f51:	e8 2a f1 ff ff       	call   2080 <write@plt>
    2f56:	48 85 c0             	test   %rax,%rax
    2f59:	7f e5                	jg     2f40 <rio_writen+0x21>
    2f5b:	e8 f0 f0 ff ff       	call   2050 <__errno_location@plt>
    2f60:	83 38 04             	cmpl   $0x4,(%rax)
    2f63:	75 11                	jne    2f76 <rio_writen+0x57>
    2f65:	4c 89 f0             	mov    %r14,%rax
    2f68:	eb d6                	jmp    2f40 <rio_writen+0x21>
    2f6a:	4c 89 e8             	mov    %r13,%rax
    2f6d:	5b                   	pop    %rbx
    2f6e:	5d                   	pop    %rbp
    2f6f:	41 5c                	pop    %r12
    2f71:	41 5d                	pop    %r13
    2f73:	41 5e                	pop    %r14
    2f75:	c3                   	ret
    2f76:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2f7d:	eb ee                	jmp    2f6d <rio_writen+0x4e>

0000000000002f7f <rio_readlineb>:
    2f7f:	41 56                	push   %r14
    2f81:	41 55                	push   %r13
    2f83:	41 54                	push   %r12
    2f85:	55                   	push   %rbp
    2f86:	53                   	push   %rbx
    2f87:	49 89 f4             	mov    %rsi,%r12
    2f8a:	48 83 fa 01          	cmp    $0x1,%rdx
    2f8e:	0f 86 92 00 00 00    	jbe    3026 <rio_readlineb+0xa7>
    2f94:	48 89 fb             	mov    %rdi,%rbx
    2f97:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    2f9c:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    2fa2:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    2fa6:	eb 56                	jmp    2ffe <rio_readlineb+0x7f>
    2fa8:	e8 a3 f0 ff ff       	call   2050 <__errno_location@plt>
    2fad:	83 38 04             	cmpl   $0x4,(%rax)
    2fb0:	75 55                	jne    3007 <rio_readlineb+0x88>
    2fb2:	ba 00 20 00 00       	mov    $0x2000,%edx
    2fb7:	48 89 ee             	mov    %rbp,%rsi
    2fba:	8b 3b                	mov    (%rbx),%edi
    2fbc:	e8 1f f1 ff ff       	call   20e0 <read@plt>
    2fc1:	89 c2                	mov    %eax,%edx
    2fc3:	89 43 04             	mov    %eax,0x4(%rbx)
    2fc6:	85 c0                	test   %eax,%eax
    2fc8:	78 de                	js     2fa8 <rio_readlineb+0x29>
    2fca:	85 c0                	test   %eax,%eax
    2fcc:	74 42                	je     3010 <rio_readlineb+0x91>
    2fce:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    2fd2:	48 8b 43 08          	mov    0x8(%rbx),%rax
    2fd6:	0f b6 08             	movzbl (%rax),%ecx
    2fd9:	48 83 c0 01          	add    $0x1,%rax
    2fdd:	48 89 43 08          	mov    %rax,0x8(%rbx)
    2fe1:	83 ea 01             	sub    $0x1,%edx
    2fe4:	89 53 04             	mov    %edx,0x4(%rbx)
    2fe7:	49 83 c4 01          	add    $0x1,%r12
    2feb:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    2ff0:	80 f9 0a             	cmp    $0xa,%cl
    2ff3:	74 3c                	je     3031 <rio_readlineb+0xb2>
    2ff5:	41 83 c5 01          	add    $0x1,%r13d
    2ff9:	4d 39 f4             	cmp    %r14,%r12
    2ffc:	74 30                	je     302e <rio_readlineb+0xaf>
    2ffe:	8b 53 04             	mov    0x4(%rbx),%edx
    3001:	85 d2                	test   %edx,%edx
    3003:	7e ad                	jle    2fb2 <rio_readlineb+0x33>
    3005:	eb cb                	jmp    2fd2 <rio_readlineb+0x53>
    3007:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    300e:	eb 05                	jmp    3015 <rio_readlineb+0x96>
    3010:	b8 00 00 00 00       	mov    $0x0,%eax
    3015:	85 c0                	test   %eax,%eax
    3017:	75 29                	jne    3042 <rio_readlineb+0xc3>
    3019:	b8 00 00 00 00       	mov    $0x0,%eax
    301e:	41 83 fd 01          	cmp    $0x1,%r13d
    3022:	75 0d                	jne    3031 <rio_readlineb+0xb2>
    3024:	eb 13                	jmp    3039 <rio_readlineb+0xba>
    3026:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    302c:	eb 03                	jmp    3031 <rio_readlineb+0xb2>
    302e:	4d 89 f4             	mov    %r14,%r12
    3031:	41 c6 04 24 00       	movb   $0x0,(%r12)
    3036:	49 63 c5             	movslq %r13d,%rax
    3039:	5b                   	pop    %rbx
    303a:	5d                   	pop    %rbp
    303b:	41 5c                	pop    %r12
    303d:	41 5d                	pop    %r13
    303f:	41 5e                	pop    %r14
    3041:	c3                   	ret
    3042:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    3049:	eb ee                	jmp    3039 <rio_readlineb+0xba>

000000000000304b <submitr>:
    304b:	41 57                	push   %r15
    304d:	41 56                	push   %r14
    304f:	41 55                	push   %r13
    3051:	41 54                	push   %r12
    3053:	55                   	push   %rbp
    3054:	53                   	push   %rbx
    3055:	48 81 ec 78 a0 00 00 	sub    $0xa078,%rsp
    305c:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    3061:	89 f5                	mov    %esi,%ebp
    3063:	49 89 d4             	mov    %rdx,%r12
    3066:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    306b:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    3070:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    3075:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    307c:	00 
    307d:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    3084:	00 
    3085:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    308c:	00 00 
    308e:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    3095:	00 
    3096:	31 c0                	xor    %eax,%eax
    3098:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    309f:	00 
    30a0:	ba 00 00 00 00       	mov    $0x0,%edx
    30a5:	be 01 00 00 00       	mov    $0x1,%esi
    30aa:	bf 02 00 00 00       	mov    $0x2,%edi
    30af:	e8 2c f1 ff ff       	call   21e0 <socket@plt>
    30b4:	85 c0                	test   %eax,%eax
    30b6:	0f 88 0d 01 00 00    	js     31c9 <submitr+0x17e>
    30bc:	41 89 c6             	mov    %eax,%r14d
    30bf:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    30c4:	e8 57 f0 ff ff       	call   2120 <gethostbyname@plt>
    30c9:	48 85 c0             	test   %rax,%rax
    30cc:	0f 84 47 01 00 00    	je     3219 <submitr+0x1ce>
    30d2:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    30d7:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
    30de:	00 00 
    30e0:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    30e7:	00 00 
    30e9:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    30f0:	48 63 50 14          	movslq 0x14(%rax),%rdx
    30f4:	48 8b 40 18          	mov    0x18(%rax),%rax
    30f8:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    30fd:	48 8b 30             	mov    (%rax),%rsi
    3100:	e8 5b f0 ff ff       	call   2160 <memmove@plt>
    3105:	66 c1 c5 08          	rol    $0x8,%bp
    3109:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    310e:	ba 10 00 00 00       	mov    $0x10,%edx
    3113:	4c 89 ee             	mov    %r13,%rsi
    3116:	44 89 f7             	mov    %r14d,%edi
    3119:	e8 92 f0 ff ff       	call   21b0 <connect@plt>
    311e:	85 c0                	test   %eax,%eax
    3120:	0f 88 5e 01 00 00    	js     3284 <submitr+0x239>
    3126:	48 89 df             	mov    %rbx,%rdi
    3129:	e8 62 ef ff ff       	call   2090 <strlen@plt>
    312e:	48 89 c5             	mov    %rax,%rbp
    3131:	4c 89 e7             	mov    %r12,%rdi
    3134:	e8 57 ef ff ff       	call   2090 <strlen@plt>
    3139:	49 89 c5             	mov    %rax,%r13
    313c:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    3141:	e8 4a ef ff ff       	call   2090 <strlen@plt>
    3146:	49 89 c4             	mov    %rax,%r12
    3149:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    314e:	e8 3d ef ff ff       	call   2090 <strlen@plt>
    3153:	48 89 c2             	mov    %rax,%rdx
    3156:	4b 8d 84 25 80 00 00 	lea    0x80(%r13,%r12,1),%rax
    315d:	00 
    315e:	48 01 d0             	add    %rdx,%rax
    3161:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    3166:	48 01 d0             	add    %rdx,%rax
    3169:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    316f:	0f 87 6c 01 00 00    	ja     32e1 <submitr+0x296>
    3175:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    317c:	00 
    317d:	b9 00 04 00 00       	mov    $0x400,%ecx
    3182:	b8 00 00 00 00       	mov    $0x0,%eax
    3187:	48 89 d7             	mov    %rdx,%rdi
    318a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    318d:	48 89 df             	mov    %rbx,%rdi
    3190:	e8 fb ee ff ff       	call   2090 <strlen@plt>
    3195:	85 c0                	test   %eax,%eax
    3197:	0f 84 13 05 00 00    	je     36b0 <submitr+0x665>
    319d:	8d 40 ff             	lea    -0x1(%rax),%eax
    31a0:	4c 8d 64 03 01       	lea    0x1(%rbx,%rax,1),%r12
    31a5:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    31ac:	00 
    31ad:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    31b4:	00 
    31b5:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    31ba:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    31c1:	00 20 00 
    31c4:	e9 a5 01 00 00       	jmp    336e <submitr+0x323>
    31c9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    31d0:	3a 20 43 
    31d3:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    31da:	20 75 6e 
    31dd:	49 89 07             	mov    %rax,(%r15)
    31e0:	49 89 57 08          	mov    %rdx,0x8(%r15)
    31e4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    31eb:	74 6f 20 
    31ee:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    31f5:	65 20 73 
    31f8:	49 89 47 10          	mov    %rax,0x10(%r15)
    31fc:	49 89 57 18          	mov    %rdx,0x18(%r15)
    3200:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    3207:	65 
    3208:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    320f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3214:	e9 6e 03 00 00       	jmp    3587 <submitr+0x53c>
    3219:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    3220:	3a 20 44 
    3223:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    322a:	20 75 6e 
    322d:	49 89 07             	mov    %rax,(%r15)
    3230:	49 89 57 08          	mov    %rdx,0x8(%r15)
    3234:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    323b:	74 6f 20 
    323e:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    3245:	76 65 20 
    3248:	49 89 47 10          	mov    %rax,0x10(%r15)
    324c:	49 89 57 18          	mov    %rdx,0x18(%r15)
    3250:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    3257:	72 20 61 
    325a:	49 89 47 20          	mov    %rax,0x20(%r15)
    325e:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    3265:	65 
    3266:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    326d:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    3272:	44 89 f7             	mov    %r14d,%edi
    3275:	e8 56 ee ff ff       	call   20d0 <close@plt>
    327a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    327f:	e9 03 03 00 00       	jmp    3587 <submitr+0x53c>
    3284:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    328b:	3a 20 55 
    328e:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    3295:	20 74 6f 
    3298:	49 89 07             	mov    %rax,(%r15)
    329b:	49 89 57 08          	mov    %rdx,0x8(%r15)
    329f:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    32a6:	65 63 74 
    32a9:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    32b0:	68 65 20 
    32b3:	49 89 47 10          	mov    %rax,0x10(%r15)
    32b7:	49 89 57 18          	mov    %rdx,0x18(%r15)
    32bb:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    32c2:	76 
    32c3:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    32ca:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    32cf:	44 89 f7             	mov    %r14d,%edi
    32d2:	e8 f9 ed ff ff       	call   20d0 <close@plt>
    32d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    32dc:	e9 a6 02 00 00       	jmp    3587 <submitr+0x53c>
    32e1:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    32e8:	3a 20 52 
    32eb:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    32f2:	20 73 74 
    32f5:	49 89 07             	mov    %rax,(%r15)
    32f8:	49 89 57 08          	mov    %rdx,0x8(%r15)
    32fc:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    3303:	74 6f 6f 
    3306:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    330d:	65 2e 20 
    3310:	49 89 47 10          	mov    %rax,0x10(%r15)
    3314:	49 89 57 18          	mov    %rdx,0x18(%r15)
    3318:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    331f:	61 73 65 
    3322:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    3329:	49 54 52 
    332c:	49 89 47 20          	mov    %rax,0x20(%r15)
    3330:	49 89 57 28          	mov    %rdx,0x28(%r15)
    3334:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    333b:	55 46 00 
    333e:	49 89 47 30          	mov    %rax,0x30(%r15)
    3342:	44 89 f7             	mov    %r14d,%edi
    3345:	e8 86 ed ff ff       	call   20d0 <close@plt>
    334a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    334f:	e9 33 02 00 00       	jmp    3587 <submitr+0x53c>
    3354:	49 0f a3 c5          	bt     %rax,%r13
    3358:	73 1e                	jae    3378 <submitr+0x32d>
    335a:	88 55 00             	mov    %dl,0x0(%rbp)
    335d:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    3361:	48 83 c3 01          	add    $0x1,%rbx
    3365:	4c 39 e3             	cmp    %r12,%rbx
    3368:	0f 84 42 03 00 00    	je     36b0 <submitr+0x665>
    336e:	0f b6 13             	movzbl (%rbx),%edx
    3371:	8d 42 d6             	lea    -0x2a(%rdx),%eax
    3374:	3c 35                	cmp    $0x35,%al
    3376:	76 dc                	jbe    3354 <submitr+0x309>
    3378:	89 d0                	mov    %edx,%eax
    337a:	83 e0 df             	and    $0xffffffdf,%eax
    337d:	83 e8 41             	sub    $0x41,%eax
    3380:	3c 19                	cmp    $0x19,%al
    3382:	76 d6                	jbe    335a <submitr+0x30f>
    3384:	80 fa 20             	cmp    $0x20,%dl
    3387:	74 50                	je     33d9 <submitr+0x38e>
    3389:	8d 42 e0             	lea    -0x20(%rdx),%eax
    338c:	3c 5f                	cmp    $0x5f,%al
    338e:	76 09                	jbe    3399 <submitr+0x34e>
    3390:	80 fa 09             	cmp    $0x9,%dl
    3393:	0f 85 8a 02 00 00    	jne    3623 <submitr+0x5d8>
    3399:	0f b6 d2             	movzbl %dl,%edx
    339c:	48 8d 35 9b 13 00 00 	lea    0x139b(%rip),%rsi        # 473e <array.0+0x55e>
    33a3:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    33a8:	b8 00 00 00 00       	mov    $0x0,%eax
    33ad:	e8 de ed ff ff       	call   2190 <sprintf@plt>
    33b2:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    33b9:	00 
    33ba:	88 45 00             	mov    %al,0x0(%rbp)
    33bd:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    33c4:	00 
    33c5:	88 45 01             	mov    %al,0x1(%rbp)
    33c8:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    33cf:	00 
    33d0:	88 45 02             	mov    %al,0x2(%rbp)
    33d3:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    33d7:	eb 88                	jmp    3361 <submitr+0x316>
    33d9:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    33dd:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    33e1:	e9 7b ff ff ff       	jmp    3361 <submitr+0x316>
    33e6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    33ed:	3a 20 43 
    33f0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    33f7:	20 75 6e 
    33fa:	49 89 07             	mov    %rax,(%r15)
    33fd:	49 89 57 08          	mov    %rdx,0x8(%r15)
    3401:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3408:	74 6f 20 
    340b:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    3412:	20 74 6f 
    3415:	49 89 47 10          	mov    %rax,0x10(%r15)
    3419:	49 89 57 18          	mov    %rdx,0x18(%r15)
    341d:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    3424:	73 65 72 
    3427:	49 89 47 20          	mov    %rax,0x20(%r15)
    342b:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    3432:	00 
    3433:	44 89 f7             	mov    %r14d,%edi
    3436:	e8 95 ec ff ff       	call   20d0 <close@plt>
    343b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3440:	e9 42 01 00 00       	jmp    3587 <submitr+0x53c>
    3445:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    344c:	3a 20 43 
    344f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3456:	20 75 6e 
    3459:	49 89 07             	mov    %rax,(%r15)
    345c:	49 89 57 08          	mov    %rdx,0x8(%r15)
    3460:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3467:	74 6f 20 
    346a:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    3471:	20 74 6f 
    3474:	49 89 47 10          	mov    %rax,0x10(%r15)
    3478:	49 89 57 18          	mov    %rdx,0x18(%r15)
    347c:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    3483:	73 65 72 
    3486:	49 89 47 20          	mov    %rax,0x20(%r15)
    348a:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    3491:	00 
    3492:	44 89 f7             	mov    %r14d,%edi
    3495:	e8 36 ec ff ff       	call   20d0 <close@plt>
    349a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    349f:	e9 e3 00 00 00       	jmp    3587 <submitr+0x53c>
    34a4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    34ab:	3a 20 43 
    34ae:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    34b5:	20 75 6e 
    34b8:	49 89 07             	mov    %rax,(%r15)
    34bb:	49 89 57 08          	mov    %rdx,0x8(%r15)
    34bf:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    34c6:	74 6f 20 
    34c9:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    34d0:	66 69 72 
    34d3:	49 89 47 10          	mov    %rax,0x10(%r15)
    34d7:	49 89 57 18          	mov    %rdx,0x18(%r15)
    34db:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    34e2:	61 64 65 
    34e5:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    34ec:	6d 20 73 
    34ef:	49 89 47 20          	mov    %rax,0x20(%r15)
    34f3:	49 89 57 28          	mov    %rdx,0x28(%r15)
    34f7:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    34fe:	65 
    34ff:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    3506:	44 89 f7             	mov    %r14d,%edi
    3509:	e8 c2 eb ff ff       	call   20d0 <close@plt>
    350e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3513:	eb 72                	jmp    3587 <submitr+0x53c>
    3515:	48 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%rcx
    351c:	00 
    351d:	48 8d 35 74 11 00 00 	lea    0x1174(%rip),%rsi        # 4698 <array.0+0x4b8>
    3524:	4c 89 ff             	mov    %r15,%rdi
    3527:	b8 00 00 00 00       	mov    $0x0,%eax
    352c:	e8 5f ec ff ff       	call   2190 <sprintf@plt>
    3531:	44 89 f7             	mov    %r14d,%edi
    3534:	e8 97 eb ff ff       	call   20d0 <close@plt>
    3539:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    353e:	eb 47                	jmp    3587 <submitr+0x53c>
    3540:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    3547:	00 
    3548:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    354d:	ba 00 20 00 00       	mov    $0x2000,%edx
    3552:	e8 28 fa ff ff       	call   2f7f <rio_readlineb>
    3557:	48 85 c0             	test   %rax,%rax
    355a:	7e 54                	jle    35b0 <submitr+0x565>
    355c:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    3563:	00 
    3564:	4c 89 ff             	mov    %r15,%rdi
    3567:	e8 f4 ea ff ff       	call   2060 <strcpy@plt>
    356c:	44 89 f7             	mov    %r14d,%edi
    356f:	e8 5c eb ff ff       	call   20d0 <close@plt>
    3574:	48 8d 35 e8 11 00 00 	lea    0x11e8(%rip),%rsi        # 4763 <array.0+0x583>
    357b:	4c 89 ff             	mov    %r15,%rdi
    357e:	e8 7d eb ff ff       	call   2100 <strcmp@plt>
    3583:	f7 d8                	neg    %eax
    3585:	19 c0                	sbb    %eax,%eax
    3587:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    358e:	00 
    358f:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    3596:	00 00 
    3598:	0f 85 be 02 00 00    	jne    385c <submitr+0x811>
    359e:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    35a5:	5b                   	pop    %rbx
    35a6:	5d                   	pop    %rbp
    35a7:	41 5c                	pop    %r12
    35a9:	41 5d                	pop    %r13
    35ab:	41 5e                	pop    %r14
    35ad:	41 5f                	pop    %r15
    35af:	c3                   	ret
    35b0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    35b7:	3a 20 43 
    35ba:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    35c1:	20 75 6e 
    35c4:	49 89 07             	mov    %rax,(%r15)
    35c7:	49 89 57 08          	mov    %rdx,0x8(%r15)
    35cb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    35d2:	74 6f 20 
    35d5:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    35dc:	73 74 61 
    35df:	49 89 47 10          	mov    %rax,0x10(%r15)
    35e3:	49 89 57 18          	mov    %rdx,0x18(%r15)
    35e7:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    35ee:	65 73 73 
    35f1:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    35f8:	72 6f 6d 
    35fb:	49 89 47 20          	mov    %rax,0x20(%r15)
    35ff:	49 89 57 28          	mov    %rdx,0x28(%r15)
    3603:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    360a:	65 72 00 
    360d:	49 89 47 30          	mov    %rax,0x30(%r15)
    3611:	44 89 f7             	mov    %r14d,%edi
    3614:	e8 b7 ea ff ff       	call   20d0 <close@plt>
    3619:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    361e:	e9 64 ff ff ff       	jmp    3587 <submitr+0x53c>
    3623:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    362a:	3a 20 52 
    362d:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    3634:	20 73 74 
    3637:	49 89 07             	mov    %rax,(%r15)
    363a:	49 89 57 08          	mov    %rdx,0x8(%r15)
    363e:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    3645:	63 6f 6e 
    3648:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    364f:	20 61 6e 
    3652:	49 89 47 10          	mov    %rax,0x10(%r15)
    3656:	49 89 57 18          	mov    %rdx,0x18(%r15)
    365a:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    3661:	67 61 6c 
    3664:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    366b:	6e 70 72 
    366e:	49 89 47 20          	mov    %rax,0x20(%r15)
    3672:	49 89 57 28          	mov    %rdx,0x28(%r15)
    3676:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    367d:	6c 65 20 
    3680:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    3687:	63 74 65 
    368a:	49 89 47 30          	mov    %rax,0x30(%r15)
    368e:	49 89 57 38          	mov    %rdx,0x38(%r15)
    3692:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    3699:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    369e:	44 89 f7             	mov    %r14d,%edi
    36a1:	e8 2a ea ff ff       	call   20d0 <close@plt>
    36a6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    36ab:	e9 d7 fe ff ff       	jmp    3587 <submitr+0x53c>
    36b0:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    36b7:	00 
    36b8:	4c 8d 8c 24 60 40 00 	lea    0x4060(%rsp),%r9
    36bf:	00 
    36c0:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    36c5:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
    36ca:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    36cf:	48 8d 35 f2 0f 00 00 	lea    0xff2(%rip),%rsi        # 46c8 <array.0+0x4e8>
    36d6:	48 89 df             	mov    %rbx,%rdi
    36d9:	b8 00 00 00 00       	mov    $0x0,%eax
    36de:	e8 ad ea ff ff       	call   2190 <sprintf@plt>
    36e3:	48 89 df             	mov    %rbx,%rdi
    36e6:	e8 a5 e9 ff ff       	call   2090 <strlen@plt>
    36eb:	48 89 c2             	mov    %rax,%rdx
    36ee:	48 89 de             	mov    %rbx,%rsi
    36f1:	44 89 f7             	mov    %r14d,%edi
    36f4:	e8 26 f8 ff ff       	call   2f1f <rio_writen>
    36f9:	48 85 c0             	test   %rax,%rax
    36fc:	0f 88 e4 fc ff ff    	js     33e6 <submitr+0x39b>
    3702:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    3709:	00 
    370a:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    370f:	48 8d 35 2f 10 00 00 	lea    0x102f(%rip),%rsi        # 4745 <array.0+0x565>
    3716:	48 89 df             	mov    %rbx,%rdi
    3719:	b8 00 00 00 00       	mov    $0x0,%eax
    371e:	e8 6d ea ff ff       	call   2190 <sprintf@plt>
    3723:	48 89 df             	mov    %rbx,%rdi
    3726:	e8 65 e9 ff ff       	call   2090 <strlen@plt>
    372b:	48 89 c2             	mov    %rax,%rdx
    372e:	48 89 de             	mov    %rbx,%rsi
    3731:	44 89 f7             	mov    %r14d,%edi
    3734:	e8 e6 f7 ff ff       	call   2f1f <rio_writen>
    3739:	48 85 c0             	test   %rax,%rax
    373c:	0f 88 03 fd ff ff    	js     3445 <submitr+0x3fa>
    3742:	44 89 74 24 50       	mov    %r14d,0x50(%rsp)
    3747:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    374e:	00 
    374f:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    3754:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    3759:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    375e:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    3765:	00 
    3766:	ba 00 20 00 00       	mov    $0x2000,%edx
    376b:	e8 0f f8 ff ff       	call   2f7f <rio_readlineb>
    3770:	48 85 c0             	test   %rax,%rax
    3773:	0f 8e 2b fd ff ff    	jle    34a4 <submitr+0x459>
    3779:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    377e:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    3785:	00 
    3786:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    378d:	00 
    378e:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    3795:	00 
    3796:	48 8d 35 b5 0f 00 00 	lea    0xfb5(%rip),%rsi        # 4752 <array.0+0x572>
    379d:	b8 00 00 00 00       	mov    $0x0,%eax
    37a2:	e8 a9 e9 ff ff       	call   2150 <__isoc99_sscanf@plt>
    37a7:	8b 54 24 3c          	mov    0x3c(%rsp),%edx
    37ab:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
    37b1:	0f 85 5e fd ff ff    	jne    3515 <submitr+0x4ca>
    37b7:	48 8d 1d 91 0f 00 00 	lea    0xf91(%rip),%rbx        # 474f <array.0+0x56f>
    37be:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    37c5:	00 
    37c6:	48 89 de             	mov    %rbx,%rsi
    37c9:	e8 32 e9 ff ff       	call   2100 <strcmp@plt>
    37ce:	85 c0                	test   %eax,%eax
    37d0:	0f 84 6a fd ff ff    	je     3540 <submitr+0x4f5>
    37d6:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    37dd:	00 
    37de:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    37e3:	ba 00 20 00 00       	mov    $0x2000,%edx
    37e8:	e8 92 f7 ff ff       	call   2f7f <rio_readlineb>
    37ed:	48 85 c0             	test   %rax,%rax
    37f0:	7f cc                	jg     37be <submitr+0x773>
    37f2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    37f9:	3a 20 43 
    37fc:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3803:	20 75 6e 
    3806:	49 89 07             	mov    %rax,(%r15)
    3809:	49 89 57 08          	mov    %rdx,0x8(%r15)
    380d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3814:	74 6f 20 
    3817:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    381e:	68 65 61 
    3821:	49 89 47 10          	mov    %rax,0x10(%r15)
    3825:	49 89 57 18          	mov    %rdx,0x18(%r15)
    3829:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    3830:	66 72 6f 
    3833:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    383a:	76 65 72 
    383d:	49 89 47 20          	mov    %rax,0x20(%r15)
    3841:	49 89 57 28          	mov    %rdx,0x28(%r15)
    3845:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    384a:	44 89 f7             	mov    %r14d,%edi
    384d:	e8 7e e8 ff ff       	call   20d0 <close@plt>
    3852:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3857:	e9 2b fd ff ff       	jmp    3587 <submitr+0x53c>
    385c:	e8 3f e8 ff ff       	call   20a0 <__stack_chk_fail@plt>

0000000000003861 <init_timeout>:
    3861:	85 ff                	test   %edi,%edi
    3863:	75 01                	jne    3866 <init_timeout+0x5>
    3865:	c3                   	ret
    3866:	53                   	push   %rbx
    3867:	89 fb                	mov    %edi,%ebx
    3869:	48 8d 35 84 f6 ff ff 	lea    -0x97c(%rip),%rsi        # 2ef4 <sigalrm_handler>
    3870:	bf 0e 00 00 00       	mov    $0xe,%edi
    3875:	e8 96 e8 ff ff       	call   2110 <signal@plt>
    387a:	85 db                	test   %ebx,%ebx
    387c:	b8 00 00 00 00       	mov    $0x0,%eax
    3881:	0f 49 c3             	cmovns %ebx,%eax
    3884:	89 c7                	mov    %eax,%edi
    3886:	e8 35 e8 ff ff       	call   20c0 <alarm@plt>
    388b:	5b                   	pop    %rbx
    388c:	c3                   	ret

000000000000388d <init_driver>:
    388d:	41 54                	push   %r12
    388f:	55                   	push   %rbp
    3890:	53                   	push   %rbx
    3891:	48 83 ec 20          	sub    $0x20,%rsp
    3895:	48 89 fd             	mov    %rdi,%rbp
    3898:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    389f:	00 00 
    38a1:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    38a6:	31 c0                	xor    %eax,%eax
    38a8:	be 01 00 00 00       	mov    $0x1,%esi
    38ad:	bf 0d 00 00 00       	mov    $0xd,%edi
    38b2:	e8 59 e8 ff ff       	call   2110 <signal@plt>
    38b7:	be 01 00 00 00       	mov    $0x1,%esi
    38bc:	bf 1d 00 00 00       	mov    $0x1d,%edi
    38c1:	e8 4a e8 ff ff       	call   2110 <signal@plt>
    38c6:	be 01 00 00 00       	mov    $0x1,%esi
    38cb:	bf 1d 00 00 00       	mov    $0x1d,%edi
    38d0:	e8 3b e8 ff ff       	call   2110 <signal@plt>
    38d5:	ba 00 00 00 00       	mov    $0x0,%edx
    38da:	be 01 00 00 00       	mov    $0x1,%esi
    38df:	bf 02 00 00 00       	mov    $0x2,%edi
    38e4:	e8 f7 e8 ff ff       	call   21e0 <socket@plt>
    38e9:	85 c0                	test   %eax,%eax
    38eb:	0f 88 97 00 00 00    	js     3988 <init_driver+0xfb>
    38f1:	89 c3                	mov    %eax,%ebx
    38f3:	48 8d 3d 6c 0e 00 00 	lea    0xe6c(%rip),%rdi        # 4766 <array.0+0x586>
    38fa:	e8 21 e8 ff ff       	call   2120 <gethostbyname@plt>
    38ff:	48 85 c0             	test   %rax,%rax
    3902:	0f 84 cc 00 00 00    	je     39d4 <init_driver+0x147>
    3908:	49 89 e4             	mov    %rsp,%r12
    390b:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    3912:	00 
    3913:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    391a:	00 00 
    391c:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    3922:	48 63 50 14          	movslq 0x14(%rax),%rdx
    3926:	48 8b 40 18          	mov    0x18(%rax),%rax
    392a:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    392f:	48 8b 30             	mov    (%rax),%rsi
    3932:	e8 29 e8 ff ff       	call   2160 <memmove@plt>
    3937:	66 c7 44 24 02 2c be 	movw   $0xbe2c,0x2(%rsp)
    393e:	ba 10 00 00 00       	mov    $0x10,%edx
    3943:	4c 89 e6             	mov    %r12,%rsi
    3946:	89 df                	mov    %ebx,%edi
    3948:	e8 63 e8 ff ff       	call   21b0 <connect@plt>
    394d:	85 c0                	test   %eax,%eax
    394f:	0f 88 e7 00 00 00    	js     3a3c <init_driver+0x1af>
    3955:	89 df                	mov    %ebx,%edi
    3957:	e8 74 e7 ff ff       	call   20d0 <close@plt>
    395c:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    3962:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    3966:	b8 00 00 00 00       	mov    $0x0,%eax
    396b:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    3970:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    3977:	00 00 
    3979:	0f 85 e9 00 00 00    	jne    3a68 <init_driver+0x1db>
    397f:	48 83 c4 20          	add    $0x20,%rsp
    3983:	5b                   	pop    %rbx
    3984:	5d                   	pop    %rbp
    3985:	41 5c                	pop    %r12
    3987:	c3                   	ret
    3988:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    398f:	3a 20 43 
    3992:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3999:	20 75 6e 
    399c:	48 89 45 00          	mov    %rax,0x0(%rbp)
    39a0:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    39a4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    39ab:	74 6f 20 
    39ae:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    39b5:	65 20 73 
    39b8:	48 89 45 10          	mov    %rax,0x10(%rbp)
    39bc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    39c0:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    39c7:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    39cd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    39d2:	eb 97                	jmp    396b <init_driver+0xde>
    39d4:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    39db:	3a 20 44 
    39de:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    39e5:	20 75 6e 
    39e8:	48 89 45 00          	mov    %rax,0x0(%rbp)
    39ec:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    39f0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    39f7:	74 6f 20 
    39fa:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    3a01:	76 65 20 
    3a04:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3a08:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3a0c:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    3a13:	72 20 61 
    3a16:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3a1a:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    3a21:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    3a27:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    3a2b:	89 df                	mov    %ebx,%edi
    3a2d:	e8 9e e6 ff ff       	call   20d0 <close@plt>
    3a32:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3a37:	e9 2f ff ff ff       	jmp    396b <init_driver+0xde>
    3a3c:	48 8d 15 23 0d 00 00 	lea    0xd23(%rip),%rdx        # 4766 <array.0+0x586>
    3a43:	48 8d 35 ce 0c 00 00 	lea    0xcce(%rip),%rsi        # 4718 <array.0+0x538>
    3a4a:	48 89 ef             	mov    %rbp,%rdi
    3a4d:	b8 00 00 00 00       	mov    $0x0,%eax
    3a52:	e8 39 e7 ff ff       	call   2190 <sprintf@plt>
    3a57:	89 df                	mov    %ebx,%edi
    3a59:	e8 72 e6 ff ff       	call   20d0 <close@plt>
    3a5e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3a63:	e9 03 ff ff ff       	jmp    396b <init_driver+0xde>
    3a68:	e8 33 e6 ff ff       	call   20a0 <__stack_chk_fail@plt>

0000000000003a6d <driver_post>:
    3a6d:	53                   	push   %rbx
    3a6e:	4c 89 c3             	mov    %r8,%rbx
    3a71:	85 c9                	test   %ecx,%ecx
    3a73:	75 17                	jne    3a8c <driver_post+0x1f>
    3a75:	48 85 ff             	test   %rdi,%rdi
    3a78:	74 05                	je     3a7f <driver_post+0x12>
    3a7a:	80 3f 00             	cmpb   $0x0,(%rdi)
    3a7d:	75 31                	jne    3ab0 <driver_post+0x43>
    3a7f:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    3a84:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    3a88:	89 c8                	mov    %ecx,%eax
    3a8a:	5b                   	pop    %rbx
    3a8b:	c3                   	ret
    3a8c:	48 89 d6             	mov    %rdx,%rsi
    3a8f:	48 8d 3d de 0c 00 00 	lea    0xcde(%rip),%rdi        # 4774 <array.0+0x594>
    3a96:	b8 00 00 00 00       	mov    $0x0,%eax
    3a9b:	e8 10 e6 ff ff       	call   20b0 <printf@plt>
    3aa0:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    3aa5:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    3aa9:	b8 00 00 00 00       	mov    $0x0,%eax
    3aae:	eb da                	jmp    3a8a <driver_post+0x1d>
    3ab0:	41 50                	push   %r8
    3ab2:	52                   	push   %rdx
    3ab3:	4c 8d 0d d1 0c 00 00 	lea    0xcd1(%rip),%r9        # 478b <array.0+0x5ab>
    3aba:	49 89 f0             	mov    %rsi,%r8
    3abd:	48 89 f9             	mov    %rdi,%rcx
    3ac0:	48 8d 15 cc 0c 00 00 	lea    0xccc(%rip),%rdx        # 4793 <array.0+0x5b3>
    3ac7:	be be 2c 00 00       	mov    $0x2cbe,%esi
    3acc:	48 8d 3d 93 0c 00 00 	lea    0xc93(%rip),%rdi        # 4766 <array.0+0x586>
    3ad3:	e8 73 f5 ff ff       	call   304b <submitr>
    3ad8:	48 83 c4 10          	add    $0x10,%rsp
    3adc:	eb ac                	jmp    3a8a <driver_post+0x1d>
    3ade:	66 90                	xchg   %ax,%ax

0000000000003ae0 <__libc_csu_init>:
    3ae0:	f3 0f 1e fa          	endbr64
    3ae4:	41 57                	push   %r15
    3ae6:	4c 8d 3d fb 32 00 00 	lea    0x32fb(%rip),%r15        # 6de8 <__frame_dummy_init_array_entry>
    3aed:	41 56                	push   %r14
    3aef:	49 89 d6             	mov    %rdx,%r14
    3af2:	41 55                	push   %r13
    3af4:	49 89 f5             	mov    %rsi,%r13
    3af7:	41 54                	push   %r12
    3af9:	41 89 fc             	mov    %edi,%r12d
    3afc:	55                   	push   %rbp
    3afd:	48 8d 2d ec 32 00 00 	lea    0x32ec(%rip),%rbp        # 6df0 <__do_global_dtors_aux_fini_array_entry>
    3b04:	53                   	push   %rbx
    3b05:	4c 29 fd             	sub    %r15,%rbp
    3b08:	48 83 ec 08          	sub    $0x8,%rsp
    3b0c:	e8 ef e4 ff ff       	call   2000 <_init>
    3b11:	48 c1 fd 03          	sar    $0x3,%rbp
    3b15:	74 1f                	je     3b36 <__libc_csu_init+0x56>
    3b17:	31 db                	xor    %ebx,%ebx
    3b19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3b20:	4c 89 f2             	mov    %r14,%rdx
    3b23:	4c 89 ee             	mov    %r13,%rsi
    3b26:	44 89 e7             	mov    %r12d,%edi
    3b29:	41 ff 14 df          	call   *(%r15,%rbx,8)
    3b2d:	48 83 c3 01          	add    $0x1,%rbx
    3b31:	48 39 dd             	cmp    %rbx,%rbp
    3b34:	75 ea                	jne    3b20 <__libc_csu_init+0x40>
    3b36:	48 83 c4 08          	add    $0x8,%rsp
    3b3a:	5b                   	pop    %rbx
    3b3b:	5d                   	pop    %rbp
    3b3c:	41 5c                	pop    %r12
    3b3e:	41 5d                	pop    %r13
    3b40:	41 5e                	pop    %r14
    3b42:	41 5f                	pop    %r15
    3b44:	c3                   	ret
    3b45:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    3b4c:	00 00 00 00 

0000000000003b50 <__libc_csu_fini>:
    3b50:	f3 0f 1e fa          	endbr64
    3b54:	c3                   	ret

Disassembly of section .fini:

0000000000003b58 <_fini>:
    3b58:	f3 0f 1e fa          	endbr64
    3b5c:	48 83 ec 08          	sub    $0x8,%rsp
    3b60:	48 83 c4 08          	add    $0x8,%rsp
    3b64:	c3                   	ret

Disassembly of section .rodata:

0000000000004000 <_IO_stdin_used>:
    4000:	01 00                	add    %eax,(%rax)
    4002:	02 00                	add    (%rax),%al
    4004:	72 00                	jb     4006 <_IO_stdin_used+0x6>
    4006:	25 73 3a 20 45       	and    $0x45203a73,%eax
    400b:	72 72                	jb     407f <_IO_stdin_used+0x7f>
    400d:	6f                   	outsl  %ds:(%rsi),(%dx)
    400e:	72 3a                	jb     404a <_IO_stdin_used+0x4a>
    4010:	20 43 6f             	and    %al,0x6f(%rbx)
    4013:	75 6c                	jne    4081 <_IO_stdin_used+0x81>
    4015:	64 6e                	outsb  %fs:(%rsi),(%dx)
    4017:	27                   	(bad)
    4018:	74 20                	je     403a <_IO_stdin_used+0x3a>
    401a:	6f                   	outsl  %ds:(%rsi),(%dx)
    401b:	70 65                	jo     4082 <_IO_stdin_used+0x82>
    401d:	6e                   	outsb  %ds:(%rsi),(%dx)
    401e:	20 25 73 0a 00 55    	and    %ah,0x55000a73(%rip)        # 55004a97 <_end+0x54ff28b7>
    4024:	73 61                	jae    4087 <_IO_stdin_used+0x87>
    4026:	67 65 3a 20          	cmp    %gs:(%eax),%ah
    402a:	25 73 20 5b 3c       	and    $0x3c5b2073,%eax
    402f:	69 6e 70 75 74 5f 66 	imul   $0x665f7475,0x70(%rsi),%ebp
    4036:	69 6c 65 3e 5d 0a 00 	imul   $0x54000a5d,0x3e(%rbp,%riz,2),%ebp
    403d:	54 
    403e:	68 61 74 27 73       	push   $0x73277461
    4043:	20 6e 75             	and    %ch,0x75(%rsi)
    4046:	6d                   	insl   (%dx),%es:(%rdi)
    4047:	62 65                	(bad)
    4049:	72 20                	jb     406b <_IO_stdin_used+0x6b>
    404b:	32 2e                	xor    (%rsi),%ch
    404d:	00 48 61             	add    %cl,0x61(%rax)
    4050:	6c                   	insb   (%dx),%es:(%rdi)
    4051:	66 77 61             	data16 ja 40b5 <_IO_stdin_used+0xb5>
    4054:	79 20                	jns    4076 <_IO_stdin_used+0x76>
    4056:	74 68                	je     40c0 <_IO_stdin_used+0xc0>
    4058:	65 72 65             	gs jb  40c0 <_IO_stdin_used+0xc0>
    405b:	21 00                	and    %eax,(%rax)
    405d:	47 6f                	rex.RXB outsl %ds:(%rsi),(%dx)
    405f:	6f                   	outsl  %ds:(%rsi),(%dx)
    4060:	64 20 77 6f          	and    %dh,%fs:0x6f(%rdi)
    4064:	72 6b                	jb     40d1 <_IO_stdin_used+0xd1>
    4066:	21 20                	and    %esp,(%rax)
    4068:	20 4f 6e             	and    %cl,0x6e(%rdi)
    406b:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
    406f:	74 68                	je     40d9 <_IO_stdin_used+0xd9>
    4071:	65 20 6e 65          	and    %ch,%gs:0x65(%rsi)
    4075:	78 74                	js     40eb <_IO_stdin_used+0xeb>
    4077:	2e 2e 2e 00 00       	cs cs cs add %al,(%rax)
    407c:	00 00                	add    %al,(%rax)
    407e:	00 00                	add    %al,(%rax)
    4080:	57                   	push   %rdi
    4081:	65 6c                	gs insb (%dx),%es:(%rdi)
    4083:	63 6f 6d             	movsxd 0x6d(%rdi),%ebp
    4086:	65 20 74 6f 20       	and    %dh,%gs:0x20(%rdi,%rbp,2)
    408b:	6d                   	insl   (%dx),%es:(%rdi)
    408c:	79 20                	jns    40ae <_IO_stdin_used+0xae>
    408e:	66 69 65 6e 64 69    	imul   $0x6964,0x6e(%rbp),%sp
    4094:	73 68                	jae    40fe <_IO_stdin_used+0xfe>
    4096:	20 6c 69 74          	and    %ch,0x74(%rcx,%rbp,2)
    409a:	74 6c                	je     4108 <_IO_stdin_used+0x108>
    409c:	65 20 62 6f          	and    %ah,%gs:0x6f(%rdx)
    40a0:	6d                   	insl   (%dx),%es:(%rdi)
    40a1:	62                   	(bad)
    40a2:	2e 20 59 6f          	cs and %bl,0x6f(%rcx)
    40a6:	75 20                	jne    40c8 <_IO_stdin_used+0xc8>
    40a8:	68 61 76 65 20       	push   $0x20657661
    40ad:	36 20 70 68          	ss and %dh,0x68(%rax)
    40b1:	61                   	(bad)
    40b2:	73 65                	jae    4119 <_IO_stdin_used+0x119>
    40b4:	73 20                	jae    40d6 <_IO_stdin_used+0xd6>
    40b6:	77 69                	ja     4121 <_IO_stdin_used+0x121>
    40b8:	74 68                	je     4122 <_IO_stdin_used+0x122>
    40ba:	00 00                	add    %al,(%rax)
    40bc:	00 00                	add    %al,(%rax)
    40be:	00 00                	add    %al,(%rax)
    40c0:	77 68                	ja     412a <_IO_stdin_used+0x12a>
    40c2:	69 63 68 20 74 6f 20 	imul   $0x206f7420,0x68(%rbx),%esp
    40c9:	62                   	(bad)
    40ca:	6c                   	insb   (%dx),%es:(%rdi)
    40cb:	6f                   	outsl  %ds:(%rsi),(%dx)
    40cc:	77 20                	ja     40ee <_IO_stdin_used+0xee>
    40ce:	79 6f                	jns    413f <_IO_stdin_used+0x13f>
    40d0:	75 72                	jne    4144 <_IO_stdin_used+0x144>
    40d2:	73 65                	jae    4139 <_IO_stdin_used+0x139>
    40d4:	6c                   	insb   (%dx),%es:(%rdi)
    40d5:	66 20 75 70          	data16 and %dh,0x70(%rbp)
    40d9:	2e 20 48 61          	cs and %cl,0x61(%rax)
    40dd:	76 65                	jbe    4144 <_IO_stdin_used+0x144>
    40df:	20 61 20             	and    %ah,0x20(%rcx)
    40e2:	6e                   	outsb  %ds:(%rsi),(%dx)
    40e3:	69 63 65 20 64 61 79 	imul   $0x79616420,0x65(%rbx),%esp
    40ea:	21 00                	and    %eax,(%rax)
    40ec:	00 00                	add    %al,(%rax)
    40ee:	00 00                	add    %al,(%rax)
    40f0:	50                   	push   %rax
    40f1:	68 61 73 65 20       	push   $0x20657361
    40f6:	31 20                	xor    %esp,(%rax)
    40f8:	64 65 66 75 73       	fs gs data16 jne 4170 <_IO_stdin_used+0x170>
    40fd:	65 64 2e 20 28       	gs fs and %ch,%fs:(%rax)
    4102:	49 6e                	rex.WB outsb %ds:(%rsi),(%dx)
    4104:	74 65                	je     416b <_IO_stdin_used+0x16b>
    4106:	72 65                	jb     416d <_IO_stdin_used+0x16d>
    4108:	73 74                	jae    417e <_IO_stdin_used+0x17e>
    410a:	69 6e 67 20 6b 65 79 	imul   $0x79656b20,0x67(%rsi),%ebp
    4111:	2c 20                	sub    $0x20,%al
    4113:	68 75 68 3f 29       	push   $0x293f6875
	...
    4120:	53                   	push   %rbx
    4121:	6f                   	outsl  %ds:(%rsi),(%dx)
    4122:	20 79 6f             	and    %bh,0x6f(%rcx)
    4125:	75 20                	jne    4147 <_IO_stdin_used+0x147>
    4127:	67 6f                	outsl  %ds:(%esi),(%dx)
    4129:	74 20                	je     414b <_IO_stdin_used+0x14b>
    412b:	74 68                	je     4195 <_IO_stdin_used+0x195>
    412d:	61                   	(bad)
    412e:	74 20                	je     4150 <_IO_stdin_used+0x150>
    4130:	6f                   	outsl  %ds:(%rsi),(%dx)
    4131:	6e                   	outsb  %ds:(%rsi),(%dx)
    4132:	65 2e 20 20          	gs and %ah,%gs:(%rax)
    4136:	54                   	push   %rsp
    4137:	72 79                	jb     41b2 <_IO_stdin_used+0x1b2>
    4139:	20 74 68 69          	and    %dh,0x69(%rax,%rbp,2)
    413d:	73 20                	jae    415f <_IO_stdin_used+0x15f>
    413f:	6f                   	outsl  %ds:(%rsi),(%dx)
    4140:	6e                   	outsb  %ds:(%rsi),(%dx)
    4141:	65 2e 00 00          	gs add %al,%gs:(%rax)
    4145:	00 00                	add    %al,(%rax)
    4147:	00 53 61             	add    %dl,0x61(%rbx)
    414a:	69 76 65 72 64 20 6c 	imul   $0x6c206472,0x65(%rsi),%esi
    4151:	6f                   	outsl  %ds:(%rsi),(%dx)
    4152:	63 6c 6b 65          	movsxd 0x65(%rbx,%rbp,2),%ebp
    4156:	6e                   	outsb  %ds:(%rsi),(%dx)
    4157:	20 61 20             	and    %ah,0x20(%rcx)
    415a:	77 65                	ja     41c1 <_IO_stdin_used+0x1c1>
    415c:	74 68                	je     41c6 <_IO_stdin_used+0x1c6>
    415e:	64 2c 20             	fs sub $0x20,%al
    4161:	6c                   	insb   (%dx),%es:(%rdi)
    4162:	61                   	(bad)
    4163:	66 7a 20             	data16 jp 4186 <_IO_stdin_used+0x186>
    4166:	66 6f                	outsw  %ds:(%rsi),(%dx)
    4168:	6d                   	insl   (%dx),%es:(%rdi)
    4169:	64 72 61             	fs jb  41cd <_IO_stdin_used+0x1cd>
    416c:	20 4c 61 79          	and    %cl,0x79(%rcx,%riz,2)
    4170:	2c 20                	sub    $0x20,%al
    4172:	49 6c                	rex.WB insb (%dx),%es:(%rdi)
    4174:	69 66 66 7a 69 64 72 	imul   $0x7264697a,0x66(%rsi),%esp
    417b:	61                   	(bad)
    417c:	2e 00 00             	cs add %al,(%rax)
    417f:	00 57 6f             	add    %dl,0x6f(%rdi)
    4182:	77 21                	ja     41a5 <_IO_stdin_used+0x1a5>
    4184:	20 59 6f             	and    %bl,0x6f(%rcx)
    4187:	75 27                	jne    41b0 <_IO_stdin_used+0x1b0>
    4189:	76 65                	jbe    41f0 <array.0+0x10>
    418b:	20 64 65 66          	and    %ah,0x66(%rbp,%riz,2)
    418f:	75 73                	jne    4204 <array.0+0x24>
    4191:	65 64 20 74 68 65    	gs and %dh,%fs:0x65(%rax,%rbp,2)
    4197:	20 73 65             	and    %dh,0x65(%rbx)
    419a:	63 72 65             	movsxd 0x65(%rdx),%esi
    419d:	74 20                	je     41bf <_IO_stdin_used+0x1bf>
    419f:	73 74                	jae    4215 <array.0+0x35>
    41a1:	61                   	(bad)
    41a2:	67 65 21 00          	and    %eax,%gs:(%eax)
	...
    41be:	00 00                	add    %al,(%rax)
    41c0:	5f                   	pop    %rdi
    41c1:	e3 ff                	jrcxz  41c2 <_IO_stdin_used+0x1c2>
    41c3:	ff b3 e3 ff ff ba    	push   -0x4500001d(%rbx)
    41c9:	e3 ff                	jrcxz  41ca <_IO_stdin_used+0x1ca>
    41cb:	ff c1                	inc    %ecx
    41cd:	e3 ff                	jrcxz  41ce <_IO_stdin_used+0x1ce>
    41cf:	ff c8                	dec    %eax
    41d1:	e3 ff                	jrcxz  41d2 <_IO_stdin_used+0x1d2>
    41d3:	ff cf                	dec    %edi
    41d5:	e3 ff                	jrcxz  41d6 <_IO_stdin_used+0x1d6>
    41d7:	ff d6                	call   *%rsi
    41d9:	e3 ff                	jrcxz  41da <_IO_stdin_used+0x1da>
    41db:	ff                   	(bad)
    41dc:	dd e3                	fucom  %st(3)
    41de:	ff                   	(bad)
    41df:	ff                 	incl   (%rdx)

00000000000041e0 <array.0>:
    41e0:	02 00                	add    (%rax),%al
    41e2:	00 00                	add    %al,(%rax)
    41e4:	0a 00                	or     (%rax),%al
    41e6:	00 00                	add    %al,(%rax)
    41e8:	06                   	(bad)
    41e9:	00 00                	add    %al,(%rax)
    41eb:	00 01                	add    %al,(%rcx)
    41ed:	00 00                	add    %al,(%rax)
    41ef:	00 0c 00             	add    %cl,(%rax,%rax,1)
    41f2:	00 00                	add    %al,(%rax)
    41f4:	10 00                	adc    %al,(%rax)
    41f6:	00 00                	add    %al,(%rax)
    41f8:	09 00                	or     %eax,(%rax)
    41fa:	00 00                	add    %al,(%rax)
    41fc:	03 00                	add    (%rax),%eax
    41fe:	00 00                	add    %al,(%rax)
    4200:	04 00                	add    $0x0,%al
    4202:	00 00                	add    %al,(%rax)
    4204:	07                   	(bad)
    4205:	00 00                	add    %al,(%rax)
    4207:	00 0e                	add    %cl,(%rsi)
    4209:	00 00                	add    %al,(%rax)
    420b:	00 05 00 00 00 0b    	add    %al,0xb000000(%rip)        # b004211 <_end+0xaff2031>
    4211:	00 00                	add    %al,(%rax)
    4213:	00 08                	add    %cl,(%rax)
    4215:	00 00                	add    %al,(%rax)
    4217:	00 0f                	add    %cl,(%rdi)
    4219:	00 00                	add    %al,(%rax)
    421b:	00 0d 00 00 00 53    	add    %cl,0x53000000(%rip)        # 53004221 <_end+0x52ff2041>
    4221:	6f                   	outsl  %ds:(%rsi),(%dx)
    4222:	20 79 6f             	and    %bh,0x6f(%rcx)
    4225:	75 20                	jne    4247 <array.0+0x67>
    4227:	74 68                	je     4291 <array.0+0xb1>
    4229:	69 6e 6b 20 79 6f 75 	imul   $0x756f7920,0x6b(%rsi),%ebp
    4230:	20 63 61             	and    %ah,0x61(%rbx)
    4233:	6e                   	outsb  %ds:(%rsi),(%dx)
    4234:	20 73 74             	and    %dh,0x74(%rbx)
    4237:	6f                   	outsl  %ds:(%rsi),(%dx)
    4238:	70 20                	jo     425a <array.0+0x7a>
    423a:	74 68                	je     42a4 <array.0+0xc4>
    423c:	65 20 62 6f          	and    %ah,%gs:0x6f(%rdx)
    4240:	6d                   	insl   (%dx),%es:(%rdi)
    4241:	62                   	(bad)
    4242:	20 77 69             	and    %dh,0x69(%rdi)
    4245:	74 68                	je     42af <array.0+0xcf>
    4247:	20 63 74             	and    %ah,0x74(%rbx)
    424a:	72 6c                	jb     42b8 <array.0+0xd8>
    424c:	2d 63 2c 20 64       	sub    $0x64202c63,%eax
    4251:	6f                   	outsl  %ds:(%rsi),(%dx)
    4252:	20 79 6f             	and    %bh,0x6f(%rcx)
    4255:	75 3f                	jne    4296 <array.0+0xb6>
    4257:	00 49 6e             	add    %cl,0x6e(%rcx)
    425a:	69 74 69 61 6c 69 7a 	imul   $0x617a696c,0x61(%rcx,%rbp,2),%esi
    4261:	61 
    4262:	74 69                	je     42cd <array.0+0xed>
    4264:	6f                   	outsl  %ds:(%rsi),(%dx)
    4265:	6e                   	outsb  %ds:(%rsi),(%dx)
    4266:	20 65 72             	and    %ah,0x72(%rbp)
    4269:	72 6f                	jb     42da <array.0+0xfa>
    426b:	72 3a                	jb     42a7 <array.0+0xc7>
    426d:	20 52 75             	and    %dl,0x75(%rdx)
    4270:	6e                   	outsb  %ds:(%rsi),(%dx)
    4271:	6e                   	outsb  %ds:(%rsi),(%dx)
    4272:	69 6e 67 20 6f 6e 20 	imul   $0x206e6f20,0x67(%rsi),%ebp
    4279:	61                   	(bad)
    427a:	6e                   	outsb  %ds:(%rsi),(%dx)
    427b:	20 69 6c             	and    %ch,0x6c(%rcx)
    427e:	6c                   	insb   (%dx),%es:(%rdi)
    427f:	65 67 61             	gs addr32 (bad)
    4282:	6c                   	insb   (%dx),%es:(%rdi)
    4283:	20 68 6f             	and    %ch,0x6f(%rax)
    4286:	73 74                	jae    42fc <array.0+0x11c>
    4288:	20 5b 31             	and    %bl,0x31(%rbx)
    428b:	5d                   	pop    %rbp
    428c:	00 00                	add    %al,(%rax)
    428e:	00 00                	add    %al,(%rax)
    4290:	49 6e                	rex.WB outsb %ds:(%rsi),(%dx)
    4292:	69 74 69 61 6c 69 7a 	imul   $0x617a696c,0x61(%rcx,%rbp,2),%esi
    4299:	61 
    429a:	74 69                	je     4305 <array.0+0x125>
    429c:	6f                   	outsl  %ds:(%rsi),(%dx)
    429d:	6e                   	outsb  %ds:(%rsi),(%dx)
    429e:	20 65 72             	and    %ah,0x72(%rbp)
    42a1:	72 6f                	jb     4312 <array.0+0x132>
    42a3:	72 3a                	jb     42df <array.0+0xff>
    42a5:	20 52 75             	and    %dl,0x75(%rdx)
    42a8:	6e                   	outsb  %ds:(%rsi),(%dx)
    42a9:	6e                   	outsb  %ds:(%rsi),(%dx)
    42aa:	69 6e 67 20 6f 6e 20 	imul   $0x206e6f20,0x67(%rsi),%ebp
    42b1:	61                   	(bad)
    42b2:	6e                   	outsb  %ds:(%rsi),(%dx)
    42b3:	20 69 6c             	and    %ch,0x6c(%rcx)
    42b6:	6c                   	insb   (%dx),%es:(%rdi)
    42b7:	65 67 61             	gs addr32 (bad)
    42ba:	6c                   	insb   (%dx),%es:(%rdi)
    42bb:	20 68 6f             	and    %ch,0x6f(%rax)
    42be:	73 74                	jae    4334 <array.0+0x154>
    42c0:	20 5b 32             	and    %bl,0x32(%rbx)
    42c3:	5d                   	pop    %rbp
    42c4:	00 00                	add    %al,(%rax)
    42c6:	00 00                	add    %al,(%rax)
    42c8:	0a 42 79             	or     0x79(%rdx),%al
    42cb:	20 6d 79             	and    %ch,0x79(%rbp)
    42ce:	20 65 66             	and    %ah,0x66(%rbp)
    42d1:	66 6c                	data16 insb (%dx),%es:(%rdi)
    42d3:	75 78                	jne    434d <array.0+0x16d>
    42d5:	20 6f 66             	and    %ch,0x66(%rdi)
    42d8:	20 64 65 65          	and    %ah,0x65(%rbp,%riz,2)
    42dc:	70 20                	jo     42fe <array.0+0x11e>
    42de:	63 72 69             	movsxd 0x69(%rdx),%esi
    42e1:	6d                   	insl   (%dx),%es:(%rdi)
    42e2:	73 6f                	jae    4353 <array.0+0x173>
    42e4:	6e                   	outsb  %ds:(%rsi),(%dx)
    42e5:	2c 20                	sub    $0x20,%al
    42e7:	74 6f                	je     4358 <array.0+0x178>
    42e9:	70 70                	jo     435b <array.0+0x17b>
    42eb:	6c                   	insb   (%dx),%es:(%rdi)
    42ec:	65 20 74 68 69       	and    %dh,%gs:0x69(%rax,%rbp,2)
    42f1:	73 20                	jae    4313 <array.0+0x133>
    42f3:	77 68                	ja     435d <array.0+0x17d>
    42f5:	69 74 65 20 77 6f 72 	imul   $0x6c726f77,0x20(%rbp,%riz,2),%esi
    42fc:	6c 
    42fd:	64 21 20             	and    %esp,%fs:(%rax)
    4300:	45 58                	rex.RB pop %r8
    4302:	50                   	push   %rax
    4303:	4c                   	rex.WR
    4304:	4f 53                	rex.WRXB push %r11
    4306:	49                   	rex.WB
    4307:	4f                   	rex.WRXB
    4308:	4e 21 21             	rex.WRX and %r12,(%rcx)
    430b:	21 00                	and    %eax,(%rax)
    430d:	00 00                	add    %al,(%rax)
    430f:	00 59 6f             	add    %bl,0x6f(%rcx)
    4312:	75 72                	jne    4386 <array.0+0x1a6>
    4314:	20 69 6e             	and    %ch,0x6e(%rcx)
    4317:	73 74                	jae    438d <array.0+0x1ad>
    4319:	72 75                	jb     4390 <array.0+0x1b0>
    431b:	63 74 6f 72          	movsxd 0x72(%rdi,%rbp,2),%esi
    431f:	20 68 61             	and    %ch,0x61(%rax)
    4322:	73 20                	jae    4344 <array.0+0x164>
    4324:	62 65 65 6e 20       	(bad)
    4329:	6e                   	outsb  %ds:(%rsi),(%dx)
    432a:	6f                   	outsl  %ds:(%rsi),(%dx)
    432b:	74 69                	je     4396 <array.0+0x1b6>
    432d:	66 69 65 64 2e 00    	imul   $0x2e,0x64(%rbp),%sp
    4333:	00 00                	add    %al,(%rax)
    4335:	00 00                	add    %al,(%rax)
    4337:	00 43 75             	add    %al,0x75(%rbx)
    433a:	72 73                	jb     43af <array.0+0x1cf>
    433c:	65 73 2c             	gs jae 436b <array.0+0x18b>
    433f:	20 79 6f             	and    %bh,0x6f(%rcx)
    4342:	75 27                	jne    436b <array.0+0x18b>
    4344:	76 65                	jbe    43ab <array.0+0x1cb>
    4346:	20 66 6f             	and    %ah,0x6f(%rsi)
    4349:	75 6e                	jne    43b9 <array.0+0x1d9>
    434b:	64 20 74 68 65       	and    %dh,%fs:0x65(%rax,%rbp,2)
    4350:	20 73 65             	and    %dh,0x65(%rbx)
    4353:	63 72 65             	movsxd 0x65(%rdx),%esi
    4356:	74 20                	je     4378 <array.0+0x198>
    4358:	70 68                	jo     43c2 <array.0+0x1e2>
    435a:	61                   	(bad)
    435b:	73 65                	jae    43c2 <array.0+0x1e2>
    435d:	21 00                	and    %eax,(%rax)
    435f:	00 42 75             	add    %al,0x75(%rdx)
    4362:	74 20                	je     4384 <array.0+0x1a4>
    4364:	66 69 6e 64 69 6e    	imul   $0x6e69,0x64(%rsi),%bp
    436a:	67 20 69 74          	and    %ch,0x74(%ecx)
    436e:	20 61 6e             	and    %ah,0x6e(%rcx)
    4371:	64 20 73 6f          	and    %dh,%fs:0x6f(%rbx)
    4375:	6c                   	insb   (%dx),%es:(%rdi)
    4376:	76 69                	jbe    43e1 <array.0+0x201>
    4378:	6e                   	outsb  %ds:(%rsi),(%dx)
    4379:	67 20 69 74          	and    %ch,0x74(%ecx)
    437d:	20 61 72             	and    %ah,0x72(%rcx)
    4380:	65 20 71 75          	and    %dh,%gs:0x75(%rcx)
    4384:	69 74 65 20 64 69 66 	imul   $0x66666964,0x20(%rbp,%riz,2),%esi
    438b:	66 
    438c:	65 72 65             	gs jb  43f4 <array.0+0x214>
    438f:	6e                   	outsb  %ds:(%rsi),(%dx)
    4390:	74 2e                	je     43c0 <array.0+0x1e0>
    4392:	2e 2e 00 00          	cs cs add %al,(%rax)
    4396:	00 00                	add    %al,(%rax)
    4398:	43 6f                	rex.XB outsl %ds:(%rsi),(%dx)
    439a:	6e                   	outsb  %ds:(%rsi),(%dx)
    439b:	67 72 61             	addr32 jb 43ff <array.0+0x21f>
    439e:	74 75                	je     4415 <array.0+0x235>
    43a0:	6c                   	insb   (%dx),%es:(%rdi)
    43a1:	61                   	(bad)
    43a2:	74 69                	je     440d <array.0+0x22d>
    43a4:	6f                   	outsl  %ds:(%rsi),(%dx)
    43a5:	6e                   	outsb  %ds:(%rsi),(%dx)
    43a6:	73 21                	jae    43c9 <array.0+0x1e9>
    43a8:	20 59 6f             	and    %bl,0x6f(%rcx)
    43ab:	75 27                	jne    43d4 <array.0+0x1f4>
    43ad:	76 65                	jbe    4414 <array.0+0x234>
    43af:	20 64 65 66          	and    %ah,0x66(%rbp,%riz,2)
    43b3:	75 73                	jne    4428 <array.0+0x248>
    43b5:	65 64 20 74 68 65    	gs and %dh,%fs:0x65(%rax,%rbp,2)
    43bb:	20 62 6f             	and    %ah,0x6f(%rdx)
    43be:	6d                   	insl   (%dx),%es:(%rdi)
    43bf:	62 21                	(bad)
    43c1:	00 00                	add    %al,(%rax)
    43c3:	00 00                	add    %al,(%rax)
    43c5:	00 00                	add    %al,(%rax)
    43c7:	00 59 6f             	add    %bl,0x6f(%rcx)
    43ca:	75 72                	jne    443e <array.0+0x25e>
    43cc:	20 69 6e             	and    %ch,0x6e(%rcx)
    43cf:	73 74                	jae    4445 <array.0+0x265>
    43d1:	72 75                	jb     4448 <array.0+0x268>
    43d3:	63 74 6f 72          	movsxd 0x72(%rdi,%rbp,2),%esi
    43d7:	20 68 61             	and    %ch,0x61(%rax)
    43da:	73 20                	jae    43fc <array.0+0x21c>
    43dc:	62 65 65 6e 20       	(bad)
    43e1:	6e                   	outsb  %ds:(%rsi),(%dx)
    43e2:	6f                   	outsl  %ds:(%rsi),(%dx)
    43e3:	74 69                	je     444e <array.0+0x26e>
    43e5:	66 69 65 64 20 61    	imul   $0x6120,0x64(%rbp),%sp
    43eb:	6e                   	outsb  %ds:(%rsi),(%dx)
    43ec:	64 20 77 69          	and    %dh,%fs:0x69(%rdi)
    43f0:	6c                   	insb   (%dx),%es:(%rdi)
    43f1:	6c                   	insb   (%dx),%es:(%rdi)
    43f2:	20 76 65             	and    %dh,0x65(%rsi)
    43f5:	72 69                	jb     4460 <array.0+0x280>
    43f7:	66 79 20             	data16 jns 441a <array.0+0x23a>
    43fa:	79 6f                	jns    446b <array.0+0x28b>
    43fc:	75 72                	jne    4470 <array.0+0x290>
    43fe:	20 73 6f             	and    %dh,0x6f(%rbx)
    4401:	6c                   	insb   (%dx),%es:(%rdi)
    4402:	75 74                	jne    4478 <array.0+0x298>
    4404:	69 6f 6e 2e 00 57 65 	imul   $0x6557002e,0x6e(%rdi),%ebp
    440b:	6c                   	insb   (%dx),%es:(%rdi)
    440c:	6c                   	insb   (%dx),%es:(%rdi)
    440d:	2e 2e 2e 00 46 69    	cs cs cs add %al,0x69(%rsi)
    4413:	6e                   	outsb  %ds:(%rsi),(%dx)
    4414:	65 2e 20 3e          	gs and %bh,%gs:(%rsi)
    4418:	77 3c                	ja     4456 <array.0+0x276>
    441a:	00 49 6e             	add    %cl,0x6e(%rcx)
    441d:	76 61                	jbe    4480 <array.0+0x2a0>
    441f:	6c                   	insb   (%dx),%es:(%rdi)
    4420:	69 64 20 70 68 61 73 	imul   $0x65736168,0x70(%rax,%riz,1),%esp
    4427:	65 
    4428:	25 73 0a 00 49       	and    $0x49000a73,%eax
    442d:	6e                   	outsb  %ds:(%rsi),(%dx)
    442e:	69 74 69 61 6c 69 7a 	imul   $0x617a696c,0x61(%rcx,%rbp,2),%esi
    4435:	61 
    4436:	74 69                	je     44a1 <array.0+0x2c1>
    4438:	6f                   	outsl  %ds:(%rsi),(%dx)
    4439:	6e                   	outsb  %ds:(%rsi),(%dx)
    443a:	20 65 72             	and    %ah,0x72(%rbp)
    443d:	72 6f                	jb     44ae <array.0+0x2ce>
    443f:	72 3a                	jb     447b <array.0+0x29b>
    4441:	0a 25 73 0a 00 20    	or     0x20000a73(%rip),%ah        # 20004eba <_end+0x1fff2cda>
    4447:	20 20                	and    %ah,(%rax)
    4449:	20 20                	and    %ah,(%rax)
    444b:	2c 2d                	sub    $0x2d,%al
    444d:	2d 2e 21 2c 00       	sub    $0x2c212e,%eax
    4452:	20 20                	and    %ah,(%rax)
    4454:	5f                   	pop    %rdi
    4455:	5f                   	pop    %rdi
    4456:	2f                   	(bad)
    4457:	20 20                	and    %ah,(%rax)
    4459:	20 2d 2a 2d 00 2c    	and    %ch,0x2c002d2a(%rip)        # 2c007189 <_end+0x2bff4fa9>
    445f:	64 30 38             	xor    %bh,%fs:(%rax)
    4462:	62                   	(bad)
    4463:	2e 20 20             	cs and %ah,(%rax)
    4466:	27                   	(bad)
    4467:	7c 60                	jl     44c9 <array.0+0x2e9>
    4469:	00 30                	add    %dh,(%rax)
    446b:	30 38                	xor    %bh,(%rax)
    446d:	38 4d 4d             	cmp    %cl,0x4d(%rbp)
    4470:	20 20                	and    %ah,(%rax)
    4472:	20 20                	and    %ah,(%rax)
    4474:	20 00                	and    %al,(%rax)
    4476:	60                   	(bad)
    4477:	39 4d 4d             	cmp    %ecx,0x4d(%rbp)
    447a:	50                   	push   %rax
    447b:	27                   	(bad)
    447c:	20 20                	and    %ah,(%rax)
    447e:	20 20                	and    %ah,(%rax)
    4480:	20 00                	and    %al,(%rax)
    4482:	64 65 66 75 73       	fs gs data16 jne 44fa <array.0+0x31a>
    4487:	65 64 00 65 78       	gs add %ah,%fs:0x78(%rbp)
    448c:	70 6c                	jo     44fa <array.0+0x31a>
    448e:	6f                   	outsl  %ds:(%rsi),(%dx)
    448f:	64 65 64 00 25 64 3a 	fs gs add %ah,%fs:0x73253a64(%rip)        # 73257efc <_end+0x73245d1c>
    4496:	25 73 
    4498:	3a 25 64 3a 25 73    	cmp    0x73253a64(%rip),%ah        # 73257f02 <_end+0x73245d22>
    449e:	00 20                	add    %ah,(%rax)
    44a0:	20 20                	and    %ah,(%rax)
    44a2:	20 20                	and    %ah,(%rax)
    44a4:	5f                   	pop    %rdi
    44a5:	2e 2d 5e 5e 2d 2d    	cs sub $0x2d2d5e5e,%eax
    44ab:	2d 2e 2e 2e 2e       	sub    $0x2e2e2e2e,%eax
    44b0:	2c 2c                	sub    $0x2c,%al
    44b2:	2d 2d 20 20 20       	sub    $0x2020202d,%eax
    44b7:	20 20                	and    %ah,(%rax)
    44b9:	20 20                	and    %ah,(%rax)
    44bb:	00 20                	add    %ah,(%rax)
    44bd:	5f                   	pop    %rdi
    44be:	2d 2d 20 20 20       	sub    $0x2020202d,%eax
    44c3:	20 20                	and    %ah,(%rax)
    44c5:	20 20                	and    %ah,(%rax)
    44c7:	20 20                	and    %ah,(%rax)
    44c9:	20 20                	and    %ah,(%rax)
    44cb:	20 20                	and    %ah,(%rax)
    44cd:	20 20                	and    %ah,(%rax)
    44cf:	20 20                	and    %ah,(%rax)
    44d1:	20 2d 2d 5f 20 20    	and    %ch,0x20205f2d(%rip)        # 2020a404 <_end+0x201f8224>
    44d7:	20 00                	and    %al,(%rax)
    44d9:	3c 20                	cmp    $0x20,%al
    44db:	20 20                	and    %ah,(%rax)
    44dd:	20 20                	and    %ah,(%rax)
    44df:	20 20                	and    %ah,(%rax)
    44e1:	20 20                	and    %ah,(%rax)
    44e3:	20 20                	and    %ah,(%rax)
    44e5:	20 20                	and    %ah,(%rax)
    44e7:	20 20                	and    %ah,(%rax)
    44e9:	20 20                	and    %ah,(%rax)
    44eb:	20 20                	and    %ah,(%rax)
    44ed:	20 20                	and    %ah,(%rax)
    44ef:	20 20                	and    %ah,(%rax)
    44f1:	20 3e                	and    %bh,(%rsi)
    44f3:	29 20                	sub    %esp,(%rax)
    44f5:	00 7c 20 20          	add    %bh,0x20(%rax,%riz,1)
    44f9:	20 20                	and    %ah,(%rax)
    44fb:	20 20                	and    %ah,(%rax)
    44fd:	20 20                	and    %ah,(%rax)
    44ff:	20 20                	and    %ah,(%rax)
    4501:	20 20                	and    %ah,(%rax)
    4503:	20 20                	and    %ah,(%rax)
    4505:	20 20                	and    %ah,(%rax)
    4507:	20 20                	and    %ah,(%rax)
    4509:	20 20                	and    %ah,(%rax)
    450b:	20 20                	and    %ah,(%rax)
    450d:	20 20                	and    %ah,(%rax)
    450f:	20 7c 20 00          	and    %bh,0x0(%rax,%riz,1)
    4513:	20 2e                	and    %ch,(%rsi)
    4515:	5f                   	pop    %rdi
    4516:	20 20                	and    %ah,(%rax)
    4518:	20 20                	and    %ah,(%rax)
    451a:	20 20                	and    %ah,(%rax)
    451c:	20 20                	and    %ah,(%rax)
    451e:	20 20                	and    %ah,(%rax)
    4520:	20 20                	and    %ah,(%rax)
    4522:	20 20                	and    %ah,(%rax)
    4524:	20 20                	and    %ah,(%rax)
    4526:	20 20                	and    %ah,(%rax)
    4528:	20 5f 2e             	and    %bl,0x2e(%rdi)
    452b:	2f                   	(bad)
    452c:	20 20                	and    %ah,(%rax)
    452e:	00 20                	add    %ah,(%rax)
    4530:	20 20                	and    %ah,(%rax)
    4532:	20 60 60             	and    %ah,0x60(%rax)
    4535:	60                   	(bad)
    4536:	2d 2d 2e 20 2e       	sub    $0x2e202e2d,%eax
    453b:	20 2c 20             	and    %ch,(%rax,%riz,1)
    453e:	3b 20                	cmp    (%rax),%esp
    4540:	2e 2d 2d 27 27 27    	cs sub $0x2727272d,%eax
    4546:	20 20                	and    %ah,(%rax)
    4548:	20 20                	and    %ah,(%rax)
    454a:	20 00                	and    %al,(%rax)
    454c:	20 20                	and    %ah,(%rax)
    454e:	20 20                	and    %ah,(%rax)
    4550:	20 20                	and    %ah,(%rax)
    4552:	20 20                	and    %ah,(%rax)
    4554:	20 20                	and    %ah,(%rax)
    4556:	7c 20                	jl     4578 <array.0+0x398>
    4558:	7c 20                	jl     457a <array.0+0x39a>
    455a:	20 20                	and    %ah,(%rax)
    455c:	7c 20                	jl     457e <array.0+0x39e>
    455e:	20 20                	and    %ah,(%rax)
    4560:	20 20                	and    %ah,(%rax)
    4562:	20 20                	and    %ah,(%rax)
    4564:	20 20                	and    %ah,(%rax)
    4566:	20 20                	and    %ah,(%rax)
    4568:	00 20                	add    %ah,(%rax)
    456a:	20 20                	and    %ah,(%rax)
    456c:	20 20                	and    %ah,(%rax)
    456e:	20 20                	and    %ah,(%rax)
    4570:	2e 2d 3d 7c 7c 20    	cs sub $0x207c7c3d,%eax
    4576:	20 7c 20 7c          	and    %bh,0x7c(%rax,%riz,1)
    457a:	3d 2d 2e 20 20       	cmp    $0x20202e2d,%eax
    457f:	20 20                	and    %ah,(%rax)
    4581:	20 20                	and    %ah,(%rax)
    4583:	20 20                	and    %ah,(%rax)
    4585:	00 20                	add    %ah,(%rax)
    4587:	20 20                	and    %ah,(%rax)
    4589:	20 20                	and    %ah,(%rax)
    458b:	20 20                	and    %ah,(%rax)
    458d:	60                   	(bad)
    458e:	2d 3d 23 24 25       	sub    $0x2524233d,%eax
    4593:	26 25 24 23 3d 2d    	es and $0x2d3d2324,%eax
    4599:	27                   	(bad)
    459a:	20 20                	and    %ah,(%rax)
    459c:	20 20                	and    %ah,(%rax)
    459e:	20 20                	and    %ah,(%rax)
    45a0:	20 20                	and    %ah,(%rax)
    45a2:	00 20                	add    %ah,(%rax)
    45a4:	20 20                	and    %ah,(%rax)
    45a6:	20 20                	and    %ah,(%rax)
    45a8:	20 20                	and    %ah,(%rax)
    45aa:	20 20                	and    %ah,(%rax)
    45ac:	20 7c 20 3b          	and    %bh,0x3b(%rax,%riz,1)
    45b0:	20 20                	and    %ah,(%rax)
    45b2:	3a 7c 20 20          	cmp    0x20(%rax,%riz,1),%bh
    45b6:	20 20                	and    %ah,(%rax)
    45b8:	20 20                	and    %ah,(%rax)
    45ba:	20 20                	and    %ah,(%rax)
    45bc:	20 20                	and    %ah,(%rax)
    45be:	20 00                	and    %al,(%rax)
    45c0:	20 5f 5f             	and    %bl,0x5f(%rdi)
    45c3:	5f                   	pop    %rdi
    45c4:	5f                   	pop    %rdi
    45c5:	5f                   	pop    %rdi
    45c6:	2e 2c 2d             	cs sub $0x2d,%al
    45c9:	23 25 26 24 40 25    	and    0x25402426(%rip),%esp        # 254069f5 <_end+0x253f4815>
    45cf:	23 26                	and    (%rsi),%esp
    45d1:	23 7e 2c             	and    0x2c(%rsi),%edi
    45d4:	2e 5f                	cs pop %rdi
    45d6:	5f                   	pop    %rdi
    45d7:	5f                   	pop    %rdi
    45d8:	5f                   	pop    %rdi
    45d9:	5f                   	pop    %rdi
    45da:	20 20                	and    %ah,(%rax)
    45dc:	00 0a                	add    %cl,(%rdx)
    45de:	54                   	push   %rsp
    45df:	68 65 20 62 6f       	push   $0x6f622065
    45e4:	6d                   	insl   (%dx),%es:(%rdi)
    45e5:	62                   	(bad)
    45e6:	20 68 61             	and    %ch,0x61(%rax)
    45e9:	73 20                	jae    460b <array.0+0x42b>
    45eb:	62                   	(bad)
    45ec:	6c                   	insb   (%dx),%es:(%rdi)
    45ed:	6f                   	outsl  %ds:(%rsi),(%dx)
    45ee:	77 6e                	ja     465e <array.0+0x47e>
    45f0:	20 75 70             	and    %dh,0x70(%rbp)
    45f3:	2e 00 25 64 20 25 64 	cs add %ah,0x64252064(%rip)        # 6425665e <_end+0x6424447e>
    45fa:	20 25 64 20 25 64    	and    %ah,0x64252064(%rip)        # 64256664 <_end+0x64244484>
    4600:	20 25 64 20 25 64    	and    %ah,0x64252064(%rip)        # 6425666a <_end+0x6424448a>
    4606:	00 45 72             	add    %al,0x72(%rbp)
    4609:	72 6f                	jb     467a <array.0+0x49a>
    460b:	72 3a                	jb     4647 <array.0+0x467>
    460d:	20 50 72             	and    %dl,0x72(%rax)
    4610:	65 6d                	gs insl (%dx),%es:(%rdi)
    4612:	61                   	(bad)
    4613:	74 75                	je     468a <array.0+0x4aa>
    4615:	72 65                	jb     467c <array.0+0x49c>
    4617:	20 45 4f             	and    %al,0x4f(%rbp)
    461a:	46 20 6f 6e          	rex.RX and %r13b,0x6e(%rdi)
    461e:	20 73 74             	and    %dh,0x74(%rbx)
    4621:	64 69 6e 00 47 52 41 	imul   $0x44415247,%fs:0x0(%rsi),%ebp
    4628:	44 
    4629:	45 5f                	rex.RB pop %r15
    462b:	42                   	rex.X
    462c:	4f                   	rex.WRXB
    462d:	4d                   	rex.WRB
    462e:	42 00 45 72          	rex.X add %al,0x72(%rbp)
    4632:	72 6f                	jb     46a3 <array.0+0x4c3>
    4634:	72 3a                	jb     4670 <array.0+0x490>
    4636:	20 49 6e             	and    %cl,0x6e(%rcx)
    4639:	70 75                	jo     46b0 <array.0+0x4d0>
    463b:	74 20                	je     465d <array.0+0x47d>
    463d:	6c                   	insb   (%dx),%es:(%rdi)
    463e:	69 6e 65 20 74 6f 6f 	imul   $0x6f6f7420,0x65(%rsi),%ebp
    4645:	20 6c 6f 6e          	and    %ch,0x6e(%rdi,%rbp,2)
    4649:	67 00 25 64 20 25 64 	add    %ah,0x64252064(%eip)        # 642566b4 <_end+0x642444d4>
    4650:	20 25 73 00 54 65    	and    %ah,0x65540073(%rip)        # 655446c9 <_end+0x655324e9>
    4656:	73 74                	jae    46cc <array.0+0x4ec>
    4658:	69 66 79 00 70 6d 65 	imul   $0x656d7000,0x79(%rsi),%esp
    465f:	6d                   	insl   (%dx),%es:(%rdi)
    4660:	00 77 6f             	add    %dh,0x6f(%rdi)
    4663:	72 6b                	jb     46d0 <array.0+0x4f0>
    4665:	31 32                	xor    %esi,(%rdx)
    4667:	32 00                	xor    (%rax),%al
    4669:	00 00                	add    %al,(%rax)
    466b:	00 00                	add    %al,(%rax)
    466d:	00 00                	add    %al,(%rax)
    466f:	00 50 72             	add    %dl,0x72(%rax)
    4672:	6f                   	outsl  %ds:(%rsi),(%dx)
    4673:	67 72 61             	addr32 jb 46d7 <array.0+0x4f7>
    4676:	6d                   	insl   (%dx),%es:(%rdi)
    4677:	20 74 69 6d          	and    %dh,0x6d(%rcx,%rbp,2)
    467b:	65 64 20 6f 75       	gs and %ch,%fs:0x75(%rdi)
    4680:	74 20                	je     46a2 <array.0+0x4c2>
    4682:	61                   	(bad)
    4683:	66 74 65             	data16 je 46eb <array.0+0x50b>
    4686:	72 20                	jb     46a8 <array.0+0x4c8>
    4688:	25 64 20 73 65       	and    $0x65732064,%eax
    468d:	63 6f 6e             	movsxd 0x6e(%rdi),%ebp
    4690:	64 73 0a             	fs jae 469d <array.0+0x4bd>
    4693:	00 00                	add    %al,(%rax)
    4695:	00 00                	add    %al,(%rax)
    4697:	00 45 72             	add    %al,0x72(%rbp)
    469a:	72 6f                	jb     470b <array.0+0x52b>
    469c:	72 3a                	jb     46d8 <array.0+0x4f8>
    469e:	20 48 54             	and    %cl,0x54(%rax)
    46a1:	54                   	push   %rsp
    46a2:	50                   	push   %rax
    46a3:	20 72 65             	and    %dh,0x65(%rdx)
    46a6:	71 75                	jno    471d <array.0+0x53d>
    46a8:	65 73 74             	gs jae 471f <array.0+0x53f>
    46ab:	20 66 61             	and    %ah,0x61(%rsi)
    46ae:	69 6c 65 64 20 77 69 	imul   $0x74697720,0x64(%rbp,%riz,2),%ebp
    46b5:	74 
    46b6:	68 20 65 72 72       	push   $0x72726520
    46bb:	6f                   	outsl  %ds:(%rsi),(%dx)
    46bc:	72 20                	jb     46de <array.0+0x4fe>
    46be:	25 64 3a 20 25       	and    $0x25203a64,%eax
    46c3:	73 00                	jae    46c5 <array.0+0x4e5>
    46c5:	00 00                	add    %al,(%rax)
    46c7:	00 47 45             	add    %al,0x45(%rdi)
    46ca:	54                   	push   %rsp
    46cb:	20 2f                	and    %ch,(%rdi)
    46cd:	62                   	(bad)
    46ce:	6f                   	outsl  %ds:(%rsi),(%dx)
    46cf:	6d                   	insl   (%dx),%es:(%rdi)
    46d0:	62                   	(bad)
    46d1:	2f                   	(bad)
    46d2:	73 75                	jae    4749 <array.0+0x569>
    46d4:	62                   	(bad)
    46d5:	6d                   	insl   (%dx),%es:(%rdi)
    46d6:	69 74 3f 75 73 65 72 	imul   $0x69726573,0x75(%rdi,%rdi,1),%esi
    46dd:	69 
    46de:	64 3d 25 73 26 75    	fs cmp $0x75267325,%eax
    46e4:	73 65                	jae    474b <array.0+0x56b>
    46e6:	72 70                	jb     4758 <array.0+0x578>
    46e8:	77 64                	ja     474e <array.0+0x56e>
    46ea:	3d 25 73 26 6c       	cmp    $0x6c267325,%eax
    46ef:	61                   	(bad)
    46f0:	62                   	(bad)
    46f1:	3d 25 73 26 72       	cmp    $0x72267325,%eax
    46f6:	65 73 75             	gs jae 476e <array.0+0x58e>
    46f9:	6c                   	insb   (%dx),%es:(%rdi)
    46fa:	74 3d                	je     4739 <array.0+0x559>
    46fc:	25 73 26 73 75       	and    $0x75732673,%eax
    4701:	62                   	(bad)
    4702:	6d                   	insl   (%dx),%es:(%rdi)
    4703:	69 74 3d 73 75 62 6d 	imul   $0x696d6275,0x73(%rbp,%rdi,1),%esi
    470a:	69 
    470b:	74 20                	je     472d <array.0+0x54d>
    470d:	48 54                	rex.W push %rsp
    470f:	54                   	push   %rsp
    4710:	50                   	push   %rax
    4711:	2f                   	(bad)
    4712:	31 2e                	xor    %ebp,(%rsi)
    4714:	30 0d 0a 00 45 72    	xor    %cl,0x7245000a(%rip)        # 72454724 <_end+0x72442544>
    471a:	72 6f                	jb     478b <array.0+0x5ab>
    471c:	72 3a                	jb     4758 <array.0+0x578>
    471e:	20 55 6e             	and    %dl,0x6e(%rbp)
    4721:	61                   	(bad)
    4722:	62                   	(bad)
    4723:	6c                   	insb   (%dx),%es:(%rdi)
    4724:	65 20 74 6f 20       	and    %dh,%gs:0x20(%rdi,%rbp,2)
    4729:	63 6f 6e             	movsxd 0x6e(%rdi),%ebp
    472c:	6e                   	outsb  %ds:(%rsi),(%dx)
    472d:	65 63 74 20 74       	movsxd %gs:0x74(%rax,%riz,1),%esi
    4732:	6f                   	outsl  %ds:(%rsi),(%dx)
    4733:	20 73 65             	and    %dh,0x65(%rbx)
    4736:	72 76                	jb     47ae <__GNU_EH_FRAME_HDR+0x12>
    4738:	65 72 20             	gs jb  475b <array.0+0x57b>
    473b:	25 73 00 25 25       	and    $0x25250073,%eax
    4740:	25 30 32 58 00       	and    $0x583230,%eax
    4745:	48 6f                	rex.W outsl %ds:(%rsi),(%dx)
    4747:	73 74                	jae    47bd <__GNU_EH_FRAME_HDR+0x21>
    4749:	3a 20                	cmp    (%rax),%ah
    474b:	25 73 0d 0a 0d       	and    $0xd0a0d73,%eax
    4750:	0a 00                	or     (%rax),%al
    4752:	25 73 20 25 64       	and    $0x64252073,%eax
    4757:	20 25 5b 61 2d 7a    	and    %ah,0x7a2d615b(%rip)        # 7a2da8b8 <_end+0x7a2c86d8>
    475d:	41 2d 7a 20 5d 00    	rex.B sub $0x5d207a,%eax
    4763:	4f                   	rex.WRXB
    4764:	4b 00 31             	rex.WXB add %sil,(%r9)
    4767:	30 2e                	xor    %ch,(%rsi)
    4769:	37                   	(bad)
    476a:	37                   	(bad)
    476b:	2e 31 31             	cs xor %esi,(%rcx)
    476e:	30 2e                	xor    %ch,(%rsi)
    4770:	32 32                	xor    (%rdx),%dh
    4772:	37                   	(bad)
    4773:	00 0a                	add    %cl,(%rdx)
    4775:	41 55                	push   %r13
    4777:	54                   	push   %rsp
    4778:	4f 52                	rex.WRXB push %r10
    477a:	45 53                	rex.RB push %r11
    477c:	55                   	push   %rbp
    477d:	4c 54                	rex.WR push %rsp
    477f:	5f                   	pop    %rdi
    4780:	53                   	push   %rbx
    4781:	54                   	push   %rsp
    4782:	52                   	push   %rdx
    4783:	49                   	rex.WB
    4784:	4e                   	rex.WRX
    4785:	47 3d 25 73 0a 00    	rex.RXB cmp $0xa7325,%eax
    478b:	62                   	(bad)
    478c:	6f                   	outsl  %ds:(%rsi),(%dx)
    478d:	6d                   	insl   (%dx),%es:(%rdi)
    478e:	62                   	(bad)
    478f:	6c                   	insb   (%dx),%es:(%rdi)
    4790:	61                   	(bad)
    4791:	62                   	(bad)
    4792:	00 63 73             	add    %ah,0x73(%rbx)
    4795:	61                   	(bad)
    4796:	70 70                	jo     4808 <__GNU_EH_FRAME_HDR+0x6c>
	...

Disassembly of section .eh_frame_hdr:

000000000000479c <__GNU_EH_FRAME_HDR>:
    479c:	01 1b                	add    %ebx,(%rbx)
    479e:	03 3b                	add    (%rbx),%edi
    47a0:	18 01                	sbb    %al,(%rcx)
    47a2:	00 00                	add    %al,(%rax)
    47a4:	22 00                	and    (%rax),%al
    47a6:	00 00                	add    %al,(%rax)
    47a8:	84 d8                	test   %bl,%al
    47aa:	ff                   	(bad)
    47ab:	ff 4c 01 00          	decl   0x0(%rcx,%rax,1)
    47af:	00 54 da ff          	add    %dl,-0x1(%rdx,%rbx,8)
    47b3:	ff 34 01             	push   (%rcx,%rax,1)
    47b6:	00 00                	add    %al,(%rax)
    47b8:	4d db ff             	rex.WRB (bad)
    47bb:	ff 74 01 00          	push   0x0(%rcx,%rax,1)
    47bf:	00 9d dc ff ff 94    	add    %bl,-0x6b000024(%rbp)
    47c5:	01 00                	add    %eax,(%rax)
    47c7:	00 bd dc ff ff b0    	add    %bh,-0x4f000024(%rbp)
    47cd:	01 00                	add    %eax,(%rax)
    47cf:	00 2c dd ff ff dc 01 	add    %ch,0x1dcffff(,%rbx,8)
    47d6:	00 00                	add    %al,(%rax)
    47d8:	19 de                	sbb    %ebx,%esi
    47da:	ff                   	(bad)
    47db:	ff 00                	incl   (%rax)
    47dd:	02 00                	add    (%rax),%al
    47df:	00 55 de             	add    %dl,-0x22(%rbp)
    47e2:	ff                   	(bad)
    47e3:	ff 30                	push   (%rax)
    47e5:	02 00                	add    (%rax),%al
    47e7:	00 c6                	add    %al,%dh
    47e9:	de ff                	fdivrp %st,%st(7)
    47eb:	ff 4c 02 00          	decl   0x0(%rdx,%rax,1)
    47ef:	00 0e                	add    %cl,(%rsi)
    47f1:	df ff                	(bad)
    47f3:	ff 68 02             	ljmp   *0x2(%rax)
    47f6:	00 00                	add    %al,(%rax)
    47f8:	32 e0                	xor    %al,%ah
    47fa:	ff                   	(bad)
    47fb:	ff b0 02 00 00 96    	push   -0x69fffffe(%rax)
    4801:	e0 ff                	loopne 4802 <__GNU_EH_FRAME_HDR+0x66>
    4803:	ff                   	(bad)
    4804:	d8 02                	fadds  (%rdx)
    4806:	00 00                	add    %al,(%rax)
    4808:	db e0                	fneni(8087 only)
    480a:	ff                   	(bad)
    480b:	ff f4                	push   %rsp
    480d:	02 00                	add    (%rax),%al
    480f:	00 32                	add    %dh,(%rdx)
    4811:	e1 ff                	loope  4812 <__GNU_EH_FRAME_HDR+0x76>
    4813:	ff 08                	decl   (%rax)
    4815:	03 00                	add    (%rax),%eax
    4817:	00 54 e1 ff          	add    %dl,-0x1(%rcx,%riz,8)
    481b:	ff 1c 03             	lcall  *(%rbx,%rax,1)
    481e:	00 00                	add    %al,(%rax)
    4820:	71 e1                	jno    4803 <__GNU_EH_FRAME_HDR+0x67>
    4822:	ff                   	(bad)
    4823:	ff 30                	push   (%rax)
    4825:	03 00                	add    (%rax),%eax
    4827:	00 cd                	add    %cl,%ch
    4829:	e1 ff                	loope  482a <__GNU_EH_FRAME_HDR+0x8e>
    482b:	ff 5c 03 00          	lcall  *0x0(%rbx,%rax,1)
    482f:	00 f2                	add    %dh,%dl
    4831:	e2 ff                	loop   4832 <__GNU_EH_FRAME_HDR+0x96>
    4833:	ff 8c 03 00 00 f3 e2 	decl   -0x1d0d0000(%rbx,%rax,1)
    483a:	ff                   	(bad)
    483b:	ff a0 03 00 00 2e    	jmp    *0x2e000003(%rax)
    4841:	e3 ff                	jrcxz  4842 <__GNU_EH_FRAME_HDR+0xa6>
    4843:	ff c8                	dec    %eax
    4845:	03 00                	add    (%rax),%eax
    4847:	00 80 e3 ff ff f0    	add    %al,-0xf00001d(%rax)
    484d:	03 00                	add    (%rax),%eax
    484f:	00 4d e4             	add    %cl,-0x1c(%rbp)
    4852:	ff                   	(bad)
    4853:	ff 18                	lcall  *(%rax)
    4855:	04 00                	add    $0x0,%al
    4857:	00 0d e5 ff ff 2c    	add    %cl,0x2cffffe5(%rip)        # 2d004842 <_end+0x2cff2662>
    485d:	04 00                	add    $0x0,%al
    485f:	00 4e e5             	add    %cl,-0x1b(%rsi)
    4862:	ff                   	(bad)
    4863:	ff 50 04             	call   *0x4(%rax)
    4866:	00 00                	add    %al,(%rax)
    4868:	88 e6                	mov    %ah,%dh
    486a:	ff                   	(bad)
    486b:	ff                   	(bad)
    486c:	7c 04                	jl     4872 <__GNU_EH_FRAME_HDR+0xd6>
    486e:	00 00                	add    %al,(%rax)
    4870:	58                   	pop    %rax
    4871:	e7 ff                	out    %eax,$0xff
    4873:	ff 9c 04 00 00 83 e7 	lcall  *-0x187d0000(%rsp,%rax,1)
    487a:	ff                   	(bad)
    487b:	ff b0 04 00 00 e3    	push   -0x1cfffffc(%rax)
    4881:	e7 ff                	out    %eax,$0xff
    4883:	ff f0                	push   %rax
    4885:	04 00                	add    $0x0,%al
    4887:	00 af e8 ff ff 30    	add    %ch,0x30ffffe8(%rdi)
    488d:	05 00 00 c5 f0       	add    $0xf0c50000,%eax
    4892:	ff                   	(bad)
    4893:	ff 80 05 00 00 f1    	incl   -0xefffffb(%rax)
    4899:	f0 ff                	lock (bad)
    489b:	ff 9c 05 00 00 d1 f2 	lcall  *-0xd2f0000(%rbp,%rax,1)
    48a2:	ff                   	(bad)
    48a3:	ff d0                	call   *%rax
    48a5:	05 00 00 44 f3       	add    $0xf3440000,%eax
    48aa:	ff                   	(bad)
    48ab:	ff                   	(bad)
    48ac:	fc                   	cld
    48ad:	05 00 00 b4 f3       	add    $0xf3b40000,%eax
    48b2:	ff                   	(bad)
    48b3:	ff 44 06 00          	incl   0x0(%rsi,%rax,1)
	...

Disassembly of section .eh_frame:

00000000000048b8 <__FRAME_END__-0x53c>:
    48b8:	14 00                	adc    $0x0,%al
    48ba:	00 00                	add    %al,(%rax)
    48bc:	00 00                	add    %al,(%rax)
    48be:	00 00                	add    %al,(%rax)
    48c0:	01 7a 52             	add    %edi,0x52(%rdx)
    48c3:	00 01                	add    %al,(%rcx)
    48c5:	78 10                	js     48d7 <__GNU_EH_FRAME_HDR+0x13b>
    48c7:	01 1b                	add    %ebx,(%rbx)
    48c9:	0c 07                	or     $0x7,%al
    48cb:	08 90 01 00 00 14    	or     %dl,0x14000001(%rax)
    48d1:	00 00                	add    %al,(%rax)
    48d3:	00 1c 00             	add    %bl,(%rax,%rax,1)
    48d6:	00 00                	add    %al,(%rax)
    48d8:	18 d9                	sbb    %bl,%cl
    48da:	ff                   	(bad)
    48db:	ff 2f                	ljmp   *(%rdi)
    48dd:	00 00                	add    %al,(%rax)
    48df:	00 00                	add    %al,(%rax)
    48e1:	44 07                	rex.R (bad)
    48e3:	10 00                	adc    %al,(%rax)
    48e5:	00 00                	add    %al,(%rax)
    48e7:	00 24 00             	add    %ah,(%rax,%rax,1)
    48ea:	00 00                	add    %al,(%rax)
    48ec:	34 00                	xor    $0x0,%al
    48ee:	00 00                	add    %al,(%rax)
    48f0:	30 d7                	xor    %dl,%bh
    48f2:	ff                   	(bad)
    48f3:	ff d0                	call   *%rax
    48f5:	01 00                	add    %eax,(%rax)
    48f7:	00 00                	add    %al,(%rax)
    48f9:	0e                   	(bad)
    48fa:	10 46 0e             	adc    %al,0xe(%rsi)
    48fd:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    4900:	0b 77 08             	or     0x8(%rdi),%esi
    4903:	80 00 3f             	addb   $0x3f,(%rax)
    4906:	1a 3b                	sbb    (%rbx),%bh
    4908:	2a 33                	sub    (%rbx),%dh
    490a:	24 22                	and    $0x22,%al
    490c:	00 00                	add    %al,(%rax)
    490e:	00 00                	add    %al,(%rax)
    4910:	1c 00                	sbb    $0x0,%al
    4912:	00 00                	add    %al,(%rax)
    4914:	5c                   	pop    %rsp
    4915:	00 00                	add    %al,(%rax)
    4917:	00 d1                	add    %dl,%cl
    4919:	d9 ff                	fcos
    491b:	ff 50 01             	call   *0x1(%rax)
    491e:	00 00                	add    %al,(%rax)
    4920:	00 41 0e             	add    %al,0xe(%rcx)
    4923:	10 83 02 03 00 01    	adc    %al,0x1000302(%rbx)
    4929:	0a 0e                	or     (%rsi),%cl
    492b:	08 41 0b             	or     %al,0xb(%rcx)
    492e:	00 00                	add    %al,(%rax)
    4930:	18 00                	sbb    %al,(%rax)
    4932:	00 00                	add    %al,(%rax)
    4934:	7c 00                	jl     4936 <__GNU_EH_FRAME_HDR+0x19a>
    4936:	00 00                	add    %al,(%rax)
    4938:	01 db                	add    %ebx,%ebx
    493a:	ff                   	(bad)
    493b:	ff 20                	jmp    *(%rax)
    493d:	00 00                	add    %al,(%rax)
    493f:	00 00                	add    %al,(%rax)
    4941:	44 0e                	rex.R (bad)
    4943:	10 54 0a 0e          	adc    %dl,0xe(%rdx,%rcx,1)
    4947:	08 41 0b             	or     %al,0xb(%rcx)
    494a:	00 00                	add    %al,(%rax)
    494c:	28 00                	sub    %al,(%rax)
    494e:	00 00                	add    %al,(%rax)
    4950:	98                   	cwtl
    4951:	00 00                	add    %al,(%rax)
    4953:	00 05 db ff ff 6f    	add    %al,0x6fffffdb(%rip)        # 70004934 <_end+0x6fff2754>
    4959:	00 00                	add    %al,(%rax)
    495b:	00 00                	add    %al,(%rax)
    495d:	41 0e                	rex.B (bad)
    495f:	10 86 02 41 0e 18    	adc    %al,0x180e4102(%rsi)
    4965:	83 03 44             	addl   $0x44,(%rbx)
    4968:	0e                   	(bad)
    4969:	40 02 61 0a          	add    0xa(%rcx),%spl
    496d:	0e                   	(bad)
    496e:	18 41 0e             	sbb    %al,0xe(%rcx)
    4971:	10 41 0e             	adc    %al,0xe(%rcx)
    4974:	08 41 0b             	or     %al,0xb(%rcx)
    4977:	00 20                	add    %ah,(%rax)
    4979:	00 00                	add    %al,(%rax)
    497b:	00 c4                	add    %al,%ah
    497d:	00 00                	add    %al,(%rax)
    497f:	00 48 db             	add    %cl,-0x25(%rax)
    4982:	ff                   	(bad)
    4983:	ff                   	(bad)
    4984:	ed                   	in     (%dx),%eax
    4985:	00 00                	add    %al,(%rax)
    4987:	00 00                	add    %al,(%rax)
    4989:	41 0e                	rex.B (bad)
    498b:	10 83 02 44 0e 20    	adc    %al,0x200e4402(%rbx)
    4991:	02 a4 0a 0e 10 41 0e 	add    0xe41100e(%rdx,%rcx,1),%ah
    4998:	08 41 0b             	or     %al,0xb(%rcx)
    499b:	00 2c 00             	add    %ch,(%rax,%rax,1)
    499e:	00 00                	add    %al,(%rax)
    49a0:	e8 00 00 00 11       	call   110049a5 <_end+0x10ff27c5>
    49a5:	dc ff                	fdivr  %st,%st(7)
    49a7:	ff                   	(bad)
    49a8:	3c 00                	cmp    $0x0,%al
    49aa:	00 00                	add    %al,(%rax)
    49ac:	00 4b 0e             	add    %cl,0xe(%rbx)
    49af:	10 8c 02 41 0e 18 86 	adc    %cl,-0x79e7f1bf(%rdx,%rax,1)
    49b6:	03 41 0e             	add    0xe(%rcx),%eax
    49b9:	20 83 04 6a 0e 18    	and    %al,0x180e6a04(%rbx)
    49bf:	41 0e                	rex.B (bad)
    49c1:	10 42 0e             	adc    %al,0xe(%rdx)
    49c4:	08 41 c3             	or     %al,-0x3d(%rcx)
    49c7:	c6                   	(bad)
    49c8:	cc                   	int3
    49c9:	00 00                	add    %al,(%rax)
    49cb:	00 18                	add    %bl,(%rax)
    49cd:	00 00                	add    %al,(%rax)
    49cf:	00 18                	add    %bl,(%rax)
    49d1:	01 00                	add    %eax,(%rax)
    49d3:	00 1d dc ff ff 71    	add    %bl,0x71ffffdc(%rip)        # 720049b5 <_end+0x71ff27d5>
    49d9:	00 00                	add    %al,(%rax)
    49db:	00 00                	add    %al,(%rax)
    49dd:	44 0e                	rex.R (bad)
    49df:	20 02                	and    %al,(%rdx)
    49e1:	60                   	(bad)
    49e2:	0a 0e                	or     (%rsi),%cl
    49e4:	08 41 0b             	or     %al,0xb(%rcx)
    49e7:	00 18                	add    %bl,(%rax)
    49e9:	00 00                	add    %al,(%rax)
    49eb:	00 34 01             	add    %dh,(%rcx,%rax,1)
    49ee:	00 00                	add    %al,(%rax)
    49f0:	72 dc                	jb     49ce <__GNU_EH_FRAME_HDR+0x232>
    49f2:	ff                   	(bad)
    49f3:	ff 48 00             	decl   0x0(%rax)
    49f6:	00 00                	add    %al,(%rax)
    49f8:	00 41 0e             	add    %al,0xe(%rcx)
    49fb:	10 83 02 78 0a 0e    	adc    %al,0xe0a7802(%rbx)
    4a01:	08 41 0b             	or     %al,0xb(%rcx)
    4a04:	44 00 00             	add    %r8b,(%rax)
    4a07:	00 50 01             	add    %dl,0x1(%rax)
    4a0a:	00 00                	add    %al,(%rax)
    4a0c:	9e                   	sahf
    4a0d:	dc ff                	fdivr  %st,%st(7)
    4a0f:	ff 24 01             	jmp    *(%rcx,%rax,1)
    4a12:	00 00                	add    %al,(%rax)
    4a14:	00 42 0e             	add    %al,0xe(%rdx)
    4a17:	10 8e 02 42 0e 18    	adc    %cl,0x180e4202(%rsi)
    4a1d:	8d 03                	lea    (%rbx),%eax
    4a1f:	42 0e                	rex.X (bad)
    4a21:	20 8c 04 41 0e 28 86 	and    %cl,-0x79d7f1bf(%rsp,%rax,1)
    4a28:	05 41 0e 30 83       	add    $0x83300e41,%eax
    4a2d:	06                   	(bad)
    4a2e:	44 0e                	rex.R (bad)
    4a30:	90                   	nop
    4a31:	01 03                	add    %eax,(%rbx)
    4a33:	0a 01                	or     (%rcx),%al
    4a35:	0a 0e                	or     (%rsi),%cl
    4a37:	30 41 0e             	xor    %al,0xe(%rcx)
    4a3a:	28 41 0e             	sub    %al,0xe(%rcx)
    4a3d:	20 42 0e             	and    %al,0xe(%rdx)
    4a40:	18 42 0e             	sbb    %al,0xe(%rdx)
    4a43:	10 42 0e             	adc    %al,0xe(%rdx)
    4a46:	08 41 0b             	or     %al,0xb(%rcx)
    4a49:	00 00                	add    %al,(%rax)
    4a4b:	00 24 00             	add    %ah,(%rax,%rax,1)
    4a4e:	00 00                	add    %al,(%rax)
    4a50:	98                   	cwtl
    4a51:	01 00                	add    %eax,(%rax)
    4a53:	00 7a dd             	add    %bh,-0x23(%rdx)
    4a56:	ff                   	(bad)
    4a57:	ff 64 00 00          	jmp    *0x0(%rax,%rax,1)
    4a5b:	00 00                	add    %al,(%rax)
    4a5d:	41 0e                	rex.B (bad)
    4a5f:	10 86 02 41 0e 18    	adc    %al,0x180e4102(%rsi)
    4a65:	83 03 44             	addl   $0x44,(%rbx)
    4a68:	0e                   	(bad)
    4a69:	20 02                	and    %al,(%rdx)
    4a6b:	5b                   	pop    %rbx
    4a6c:	0e                   	(bad)
    4a6d:	18 41 0e             	sbb    %al,0xe(%rcx)
    4a70:	10 41 0e             	adc    %al,0xe(%rcx)
    4a73:	08 18                	or     %bl,(%rax)
    4a75:	00 00                	add    %al,(%rax)
    4a77:	00 c0                	add    %al,%al
    4a79:	01 00                	add    %eax,(%rax)
    4a7b:	00 b6 dd ff ff 45    	add    %dh,0x45ffffdd(%rsi)
    4a81:	00 00                	add    %al,(%rax)
    4a83:	00 00                	add    %al,(%rax)
    4a85:	44 0e                	rex.R (bad)
    4a87:	20 79 0a             	and    %bh,0xa(%rcx)
    4a8a:	0e                   	(bad)
    4a8b:	08 41 0b             	or     %al,0xb(%rcx)
    4a8e:	00 00                	add    %al,(%rax)
    4a90:	10 00                	adc    %al,(%rax)
    4a92:	00 00                	add    %al,(%rax)
    4a94:	dc 01                	faddl  (%rcx)
    4a96:	00 00                	add    %al,(%rax)
    4a98:	df dd                	(bad)
    4a9a:	ff                   	(bad)
    4a9b:	ff 57 00             	call   *0x0(%rdi)
    4a9e:	00 00                	add    %al,(%rax)
    4aa0:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
    4aa4:	10 00                	adc    %al,(%rax)
    4aa6:	00 00                	add    %al,(%rax)
    4aa8:	f0 01 00             	lock add %eax,(%rax)
    4aab:	00 22                	add    %ah,(%rdx)
    4aad:	de ff                	fdivrp %st,%st(7)
    4aaf:	ff 22                	jmp    *(%rdx)
    4ab1:	00 00                	add    %al,(%rax)
    4ab3:	00 00                	add    %al,(%rax)
    4ab5:	44 0e                	rex.R (bad)
    4ab7:	10 10                	adc    %dl,(%rax)
    4ab9:	00 00                	add    %al,(%rax)
    4abb:	00 04 02             	add    %al,(%rdx,%rax,1)
    4abe:	00 00                	add    %al,(%rax)
    4ac0:	30 de                	xor    %bl,%dh
    4ac2:	ff                   	(bad)
    4ac3:	ff 1d 00 00 00 00    	lcall  *0x0(%rip)        # 4ac9 <__GNU_EH_FRAME_HDR+0x32d>
    4ac9:	00 00                	add    %al,(%rax)
    4acb:	00 28                	add    %ch,(%rax)
    4acd:	00 00                	add    %al,(%rax)
    4acf:	00 18                	add    %bl,(%rax)
    4ad1:	02 00                	add    (%rax),%al
    4ad3:	00 39                	add    %bh,(%rcx)
    4ad5:	de ff                	fdivrp %st,%st(7)
    4ad7:	ff 5c 00 00          	lcall  *0x0(%rax,%rax,1)
    4adb:	00 00                	add    %al,(%rax)
    4add:	42 0e                	rex.X (bad)
    4adf:	10 8c 02 41 0e 18 86 	adc    %cl,-0x79e7f1bf(%rdx,%rax,1)
    4ae6:	03 41 0e             	add    0xe(%rcx),%eax
    4ae9:	20 83 04 02 54 0e    	and    %al,0xe540204(%rbx)
    4aef:	18 41 0e             	sbb    %al,0xe(%rcx)
    4af2:	10 42 0e             	adc    %al,0xe(%rdx)
    4af5:	08 00                	or     %al,(%rax)
    4af7:	00 2c 00             	add    %ch,(%rax,%rax,1)
    4afa:	00 00                	add    %al,(%rax)
    4afc:	44 02 00             	add    (%rax),%r8b
    4aff:	00 69 de             	add    %ch,-0x22(%rcx)
    4b02:	ff                   	(bad)
    4b03:	ff 25 01 00 00 00    	jmp    *0x1(%rip)        # 4b0a <__GNU_EH_FRAME_HDR+0x36e>
    4b09:	41 0e                	rex.B (bad)
    4b0b:	10 86 02 41 0e 18    	adc    %al,0x180e4102(%rsi)
    4b11:	83 03 47             	addl   $0x47,(%rbx)
    4b14:	0e                   	(bad)
    4b15:	f0 40 03 14 01       	lock rex add (%rcx,%rax,1),%edx
    4b1a:	0a 0e                	or     (%rsi),%cl
    4b1c:	18 41 0e             	sbb    %al,0xe(%rcx)
    4b1f:	10 41 0e             	adc    %al,0xe(%rcx)
    4b22:	08 41 0b             	or     %al,0xb(%rcx)
    4b25:	00 00                	add    %al,(%rax)
    4b27:	00 10                	add    %dl,(%rax)
    4b29:	00 00                	add    %al,(%rax)
    4b2b:	00 74 02 00          	add    %dh,0x0(%rdx,%rax,1)
    4b2f:	00 5e df             	add    %bl,-0x21(%rsi)
    4b32:	ff                   	(bad)
    4b33:	ff 01                	incl   (%rcx)
    4b35:	00 00                	add    %al,(%rax)
    4b37:	00 00                	add    %al,(%rax)
    4b39:	00 00                	add    %al,(%rax)
    4b3b:	00 24 00             	add    %ah,(%rax,%rax,1)
    4b3e:	00 00                	add    %al,(%rax)
    4b40:	88 02                	mov    %al,(%rdx)
    4b42:	00 00                	add    %al,(%rax)
    4b44:	4b df ff             	rex.WXB (bad)
    4b47:	ff                   	(bad)
    4b48:	3b 00                	cmp    (%rax),%eax
    4b4a:	00 00                	add    %al,(%rax)
    4b4c:	00 41 0e             	add    %al,0xe(%rcx)
    4b4f:	10 86 02 41 0e 18    	adc    %al,0x180e4102(%rsi)
    4b55:	83 03 44             	addl   $0x44,(%rbx)
    4b58:	0e                   	(bad)
    4b59:	20 72 0e             	and    %dh,0xe(%rdx)
    4b5c:	18 41 0e             	sbb    %al,0xe(%rcx)
    4b5f:	10 41 0e             	adc    %al,0xe(%rcx)
    4b62:	08 00                	or     %al,(%rax)
    4b64:	24 00                	and    $0x0,%al
    4b66:	00 00                	add    %al,(%rax)
    4b68:	b0 02                	mov    $0x2,%al
    4b6a:	00 00                	add    %al,(%rax)
    4b6c:	5e                   	pop    %rsi
    4b6d:	df ff                	(bad)
    4b6f:	ff 52 00             	call   *0x0(%rdx)
    4b72:	00 00                	add    %al,(%rax)
    4b74:	00 41 0e             	add    %al,0xe(%rcx)
    4b77:	10 86 02 41 0e 18    	adc    %al,0x180e4102(%rsi)
    4b7d:	83 03 44             	addl   $0x44,(%rbx)
    4b80:	0e                   	(bad)
    4b81:	20 02                	and    %al,(%rdx)
    4b83:	49 0e                	rex.WB (bad)
    4b85:	18 41 0e             	sbb    %al,0xe(%rcx)
    4b88:	10 41 0e             	adc    %al,0xe(%rcx)
    4b8b:	08 24 00             	or     %ah,(%rax,%rax,1)
    4b8e:	00 00                	add    %al,(%rax)
    4b90:	d8 02                	fadds  (%rdx)
    4b92:	00 00                	add    %al,(%rax)
    4b94:	88 df                	mov    %bl,%bh
    4b96:	ff                   	(bad)
    4b97:	ff cd                	dec    %ebp
    4b99:	00 00                	add    %al,(%rax)
    4b9b:	00 00                	add    %al,(%rax)
    4b9d:	41 0e                	rex.B (bad)
    4b9f:	10 83 02 47 0e a0    	adc    %al,-0x5ff1b8fe(%rbx)
    4ba5:	80 01 02             	addb   $0x2,(%rcx)
    4ba8:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
    4ba9:	0a 0e                	or     (%rsi),%cl
    4bab:	10 41 0e             	adc    %al,0xe(%rcx)
    4bae:	08 41 0b             	or     %al,0xb(%rcx)
    4bb1:	00 00                	add    %al,(%rax)
    4bb3:	00 10                	add    %dl,(%rax)
    4bb5:	00 00                	add    %al,(%rax)
    4bb7:	00 00                	add    %al,(%rax)
    4bb9:	03 00                	add    (%rax),%eax
    4bbb:	00 2d e0 ff ff c0    	add    %ch,-0x3f000020(%rip)        # ffffffffc1004ba1 <_end+0xffffffffc0ff29c1>
    4bc1:	00 00                	add    %al,(%rax)
    4bc3:	00 00                	add    %al,(%rax)
    4bc5:	44 0e                	rex.R (bad)
    4bc7:	10 20                	adc    %ah,(%rax)
    4bc9:	00 00                	add    %al,(%rax)
    4bcb:	00 14 03             	add    %dl,(%rbx,%rax,1)
    4bce:	00 00                	add    %al,(%rax)
    4bd0:	d9 e0                	fchs
    4bd2:	ff                   	(bad)
    4bd3:	ff 41 00             	incl   0x0(%rcx)
    4bd6:	00 00                	add    %al,(%rax)
    4bd8:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
    4bdc:	4c 0e                	rex.WR (bad)
    4bde:	18 45 0e             	sbb    %al,0xe(%rbp)
    4be1:	20 5d 0e             	and    %bl,0xe(%rbp)
    4be4:	10 49 0a             	adc    %cl,0xa(%rcx)
    4be7:	0e                   	(bad)
    4be8:	08 41 0b             	or     %al,0xb(%rcx)
    4beb:	00 28                	add    %ch,(%rax)
    4bed:	00 00                	add    %al,(%rax)
    4bef:	00 38                	add    %bh,(%rax)
    4bf1:	03 00                	add    (%rax),%eax
    4bf3:	00 f6                	add    %dh,%dh
    4bf5:	e0 ff                	loopne 4bf6 <__GNU_EH_FRAME_HDR+0x45a>
    4bf7:	ff                   	(bad)
    4bf8:	3a 01                	cmp    (%rcx),%al
    4bfa:	00 00                	add    %al,(%rax)
    4bfc:	00 41 0e             	add    %al,0xe(%rcx)
    4bff:	10 86 02 41 0e 18    	adc    %al,0x180e4102(%rsi)
    4c05:	83 03 44             	addl   $0x44,(%rbx)
    4c08:	0e                   	(bad)
    4c09:	20 02                	and    %al,(%rdx)
    4c0b:	6f                   	outsl  %ds:(%rsi),(%dx)
    4c0c:	0a 0e                	or     (%rsi),%cl
    4c0e:	18 41 0e             	sbb    %al,0xe(%rcx)
    4c11:	10 41 0e             	adc    %al,0xe(%rcx)
    4c14:	08 41 0b             	or     %al,0xb(%rcx)
    4c17:	00 1c 00             	add    %bl,(%rax,%rax,1)
    4c1a:	00 00                	add    %al,(%rax)
    4c1c:	64 03 00             	add    %fs:(%rax),%eax
    4c1f:	00 04 e2             	add    %al,(%rdx,%riz,8)
    4c22:	ff                   	(bad)
    4c23:	ff d0                	call   *%rax
    4c25:	00 00                	add    %al,(%rax)
    4c27:	00 00                	add    %al,(%rax)
    4c29:	47 0e                	rex.RXB (bad)
    4c2b:	a0 01 02 44 0a 0e 08 	movabs 0xb41080e0a440201,%al
    4c32:	41 0b 
    4c34:	00 00                	add    %al,(%rax)
    4c36:	00 00                	add    %al,(%rax)
    4c38:	10 00                	adc    %al,(%rax)
    4c3a:	00 00                	add    %al,(%rax)
    4c3c:	84 03                	test   %al,(%rbx)
    4c3e:	00 00                	add    %al,(%rax)
    4c40:	b4 e2                	mov    $0xe2,%ah
    4c42:	ff                   	(bad)
    4c43:	ff 2b                	ljmp   *(%rbx)
    4c45:	00 00                	add    %al,(%rax)
    4c47:	00 00                	add    %al,(%rax)
    4c49:	44 0e                	rex.R (bad)
    4c4b:	10 3c 00             	adc    %bh,(%rax,%rax,1)
    4c4e:	00 00                	add    %al,(%rax)
    4c50:	98                   	cwtl
    4c51:	03 00                	add    (%rax),%eax
    4c53:	00 cb                	add    %cl,%bl
    4c55:	e2 ff                	loop   4c56 <__GNU_EH_FRAME_HDR+0x4ba>
    4c57:	ff 60 00             	jmp    *0x0(%rax)
    4c5a:	00 00                	add    %al,(%rax)
    4c5c:	00 42 0e             	add    %al,0xe(%rdx)
    4c5f:	10 8e 02 42 0e 18    	adc    %cl,0x180e4202(%rsi)
    4c65:	8d 03                	lea    (%rbx),%eax
    4c67:	42 0e                	rex.X (bad)
    4c69:	20 8c 04 41 0e 28 86 	and    %cl,-0x79d7f1bf(%rsp,%rax,1)
    4c70:	05 41 0e 30 83       	add    $0x83300e41,%eax
    4c75:	06                   	(bad)
    4c76:	02 47 0a             	add    0xa(%rdi),%al
    4c79:	0e                   	(bad)
    4c7a:	28 41 0e             	sub    %al,0xe(%rcx)
    4c7d:	20 42 0e             	and    %al,0xe(%rdx)
    4c80:	18 42 0e             	sbb    %al,0xe(%rdx)
    4c83:	10 42 0e             	adc    %al,0xe(%rdx)
    4c86:	08 41 0b             	or     %al,0xb(%rcx)
    4c89:	00 00                	add    %al,(%rax)
    4c8b:	00 3c 00             	add    %bh,(%rax,%rax,1)
    4c8e:	00 00                	add    %al,(%rax)
    4c90:	d8 03                	fadds  (%rbx)
    4c92:	00 00                	add    %al,(%rax)
    4c94:	eb e2                	jmp    4c78 <__GNU_EH_FRAME_HDR+0x4dc>
    4c96:	ff                   	(bad)
    4c97:	ff cc                	dec    %esp
    4c99:	00 00                	add    %al,(%rax)
    4c9b:	00 00                	add    %al,(%rax)
    4c9d:	42 0e                	rex.X (bad)
    4c9f:	10 8e 02 42 0e 18    	adc    %cl,0x180e4202(%rsi)
    4ca5:	8d 03                	lea    (%rbx),%eax
    4ca7:	42 0e                	rex.X (bad)
    4ca9:	20 8c 04 41 0e 28 86 	and    %cl,-0x79d7f1bf(%rsp,%rax,1)
    4cb0:	05 41 0e 30 83       	add    $0x83300e41,%eax
    4cb5:	06                   	(bad)
    4cb6:	02 b3 0a 0e 28 41    	add    0x41280e0a(%rbx),%dh
    4cbc:	0e                   	(bad)
    4cbd:	20 42 0e             	and    %al,0xe(%rdx)
    4cc0:	18 42 0e             	sbb    %al,0xe(%rdx)
    4cc3:	10 42 0e             	adc    %al,0xe(%rdx)
    4cc6:	08 41 0b             	or     %al,0xb(%rcx)
    4cc9:	00 00                	add    %al,(%rax)
    4ccb:	00 4c 00 00          	add    %cl,0x0(%rax,%rax,1)
    4ccf:	00 18                	add    %bl,(%rax)
    4cd1:	04 00                	add    $0x0,%al
    4cd3:	00 77 e3             	add    %dh,-0x1d(%rdi)
    4cd6:	ff                   	(bad)
    4cd7:	ff 16                	call   *(%rsi)
    4cd9:	08 00                	or     %al,(%rax)
    4cdb:	00 00                	add    %al,(%rax)
    4cdd:	42 0e                	rex.X (bad)
    4cdf:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
    4ce5:	8e 03                	mov    (%rbx),%es
    4ce7:	42 0e                	rex.X (bad)
    4ce9:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    4cef:	8c 05 41 0e 30 86    	mov    %es,-0x79cff1bf(%rip)        # ffffffff86305b36 <_end+0xffffffff862f3956>
    4cf5:	06                   	(bad)
    4cf6:	41 0e                	rex.B (bad)
    4cf8:	38 83 07 47 0e b0    	cmp    %al,-0x4ff1b8f9(%rbx)
    4cfe:	c1 02 03             	roll   $0x3,(%rdx)
    4d01:	49 05 0a 0e 38 41    	rex.WB add $0x41380e0a,%rax
    4d07:	0e                   	(bad)
    4d08:	30 41 0e             	xor    %al,0xe(%rcx)
    4d0b:	28 42 0e             	sub    %al,0xe(%rdx)
    4d0e:	20 42 0e             	and    %al,0xe(%rdx)
    4d11:	18 42 0e             	sbb    %al,0xe(%rdx)
    4d14:	10 42 0e             	adc    %al,0xe(%rdx)
    4d17:	08 41 0b             	or     %al,0xb(%rcx)
    4d1a:	00 00                	add    %al,(%rax)
    4d1c:	18 00                	sbb    %al,(%rax)
    4d1e:	00 00                	add    %al,(%rax)
    4d20:	68 04 00 00 3d       	push   $0x3d000004
    4d25:	eb ff                	jmp    4d26 <__GNU_EH_FRAME_HDR+0x58a>
    4d27:	ff 2c 00             	ljmp   *(%rax,%rax,1)
    4d2a:	00 00                	add    %al,(%rax)
    4d2c:	00 46 0e             	add    %al,0xe(%rsi)
    4d2f:	10 83 02 65 0e 08    	adc    %al,0x80e6502(%rbx)
    4d35:	00 00                	add    %al,(%rax)
    4d37:	00 30                	add    %dh,(%rax)
    4d39:	00 00                	add    %al,(%rax)
    4d3b:	00 84 04 00 00 4d eb 	add    %al,-0x14b30000(%rsp,%rax,1)
    4d42:	ff                   	(bad)
    4d43:	ff e0                	jmp    *%rax
    4d45:	01 00                	add    %eax,(%rax)
    4d47:	00 00                	add    %al,(%rax)
    4d49:	42 0e                	rex.X (bad)
    4d4b:	10 8c 02 41 0e 18 86 	adc    %cl,-0x79e7f1bf(%rdx,%rax,1)
    4d52:	03 41 0e             	add    0xe(%rcx),%eax
    4d55:	20 83 04 44 0e 40    	and    %al,0x400e4404(%rbx)
    4d5b:	02 ee                	add    %dh,%ch
    4d5d:	0a 0e                	or     (%rsi),%cl
    4d5f:	20 41 0e             	and    %al,0xe(%rcx)
    4d62:	18 41 0e             	sbb    %al,0xe(%rcx)
    4d65:	10 42 0e             	adc    %al,0xe(%rdx)
    4d68:	08 41 0b             	or     %al,0xb(%rcx)
    4d6b:	00 28                	add    %ch,(%rax)
    4d6d:	00 00                	add    %al,(%rax)
    4d6f:	00 b8 04 00 00 f9    	add    %bh,-0x6fffffc(%rax)
    4d75:	ec                   	in     (%dx),%al
    4d76:	ff                   	(bad)
    4d77:	ff 71 00             	push   0x0(%rcx)
    4d7a:	00 00                	add    %al,(%rax)
    4d7c:	00 41 0e             	add    %al,0xe(%rcx)
    4d7f:	10 83 02 5d 0a 0e    	adc    %al,0xe0a5d02(%rbx)
    4d85:	08 41 0b             	or     %al,0xb(%rcx)
    4d88:	66 0e                	data16 (bad)
    4d8a:	18 41 0e             	sbb    %al,0xe(%rcx)
    4d8d:	20 69 0e             	and    %ch,0xe(%rcx)
    4d90:	10 00                	adc    %al,(%rax)
    4d92:	00 00                	add    %al,(%rax)
    4d94:	00 00                	add    %al,(%rax)
    4d96:	00 00                	add    %al,(%rax)
    4d98:	44 00 00             	add    %r8b,(%rax)
    4d9b:	00 e4                	add    %ah,%ah
    4d9d:	04 00                	add    $0x0,%al
    4d9f:	00 40 ed             	add    %al,-0x13(%rax)
    4da2:	ff                   	(bad)
    4da3:	ff 65 00             	jmp    *0x0(%rbp)
    4da6:	00 00                	add    %al,(%rax)
    4da8:	00 46 0e             	add    %al,0xe(%rsi)
    4dab:	10 8f 02 49 0e 18    	adc    %cl,0x180e4902(%rdi)
    4db1:	8e 03                	mov    (%rbx),%es
    4db3:	45 0e                	rex.RB (bad)
    4db5:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
    4dbb:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff86305c05 <_end+0xffffffff862f3a25>
    4dc1:	06                   	(bad)
    4dc2:	48 0e                	rex.W (bad)
    4dc4:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
    4dca:	6e                   	outsb  %ds:(%rsi),(%dx)
    4dcb:	0e                   	(bad)
    4dcc:	38 41 0e             	cmp    %al,0xe(%rcx)
    4dcf:	30 41 0e             	xor    %al,0xe(%rcx)
    4dd2:	28 42 0e             	sub    %al,0xe(%rdx)
    4dd5:	20 42 0e             	and    %al,0xe(%rdx)
    4dd8:	18 42 0e             	sbb    %al,0xe(%rdx)
    4ddb:	10 42 0e             	adc    %al,0xe(%rdx)
    4dde:	08 00                	or     %al,(%rax)
    4de0:	10 00                	adc    %al,(%rax)
    4de2:	00 00                	add    %al,(%rax)
    4de4:	2c 05                	sub    $0x5,%al
    4de6:	00 00                	add    %al,(%rax)
    4de8:	68 ed ff ff 05       	push   $0x5ffffed
    4ded:	00 00                	add    %al,(%rax)
    4def:	00 00                	add    %al,(%rax)
    4df1:	00 00                	add    %al,(%rax)
	...

0000000000004df4 <__FRAME_END__>:
    4df4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000006de8 <__frame_dummy_init_array_entry>:
    6de8:	e0 22                	loopne 6e0c <_DYNAMIC+0x14>
    6dea:	00 00                	add    %al,(%rax)
    6dec:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000006df0 <__do_global_dtors_aux_fini_array_entry>:
    6df0:	90                   	nop
    6df1:	22 00                	and    (%rax),%al
    6df3:	00 00                	add    %al,(%rax)
    6df5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000006df8 <_DYNAMIC>:
    6df8:	01 00                	add    %eax,(%rax)
    6dfa:	00 00                	add    %al,(%rax)
    6dfc:	00 00                	add    %al,(%rax)
    6dfe:	00 00                	add    %al,(%rax)
    6e00:	1f                   	(bad)
    6e01:	01 00                	add    %eax,(%rax)
    6e03:	00 00                	add    %al,(%rax)
    6e05:	00 00                	add    %al,(%rax)
    6e07:	00 0c 00             	add    %cl,(%rax,%rax,1)
    6e0a:	00 00                	add    %al,(%rax)
    6e0c:	00 00                	add    %al,(%rax)
    6e0e:	00 00                	add    %al,(%rax)
    6e10:	00 20                	add    %ah,(%rax)
    6e12:	00 00                	add    %al,(%rax)
    6e14:	00 00                	add    %al,(%rax)
    6e16:	00 00                	add    %al,(%rax)
    6e18:	0d 00 00 00 00       	or     $0x0,%eax
    6e1d:	00 00                	add    %al,(%rax)
    6e1f:	00 58 3b             	add    %bl,0x3b(%rax)
    6e22:	00 00                	add    %al,(%rax)
    6e24:	00 00                	add    %al,(%rax)
    6e26:	00 00                	add    %al,(%rax)
    6e28:	19 00                	sbb    %eax,(%rax)
    6e2a:	00 00                	add    %al,(%rax)
    6e2c:	00 00                	add    %al,(%rax)
    6e2e:	00 00                	add    %al,(%rax)
    6e30:	e8 6d 00 00 00       	call   6ea2 <_DYNAMIC+0xaa>
    6e35:	00 00                	add    %al,(%rax)
    6e37:	00 1b                	add    %bl,(%rbx)
    6e39:	00 00                	add    %al,(%rax)
    6e3b:	00 00                	add    %al,(%rax)
    6e3d:	00 00                	add    %al,(%rax)
    6e3f:	00 08                	add    %cl,(%rax)
    6e41:	00 00                	add    %al,(%rax)
    6e43:	00 00                	add    %al,(%rax)
    6e45:	00 00                	add    %al,(%rax)
    6e47:	00 1a                	add    %bl,(%rdx)
    6e49:	00 00                	add    %al,(%rax)
    6e4b:	00 00                	add    %al,(%rax)
    6e4d:	00 00                	add    %al,(%rax)
    6e4f:	00 f0                	add    %dh,%al
    6e51:	6d                   	insl   (%dx),%es:(%rdi)
    6e52:	00 00                	add    %al,(%rax)
    6e54:	00 00                	add    %al,(%rax)
    6e56:	00 00                	add    %al,(%rax)
    6e58:	1c 00                	sbb    $0x0,%al
    6e5a:	00 00                	add    %al,(%rax)
    6e5c:	00 00                	add    %al,(%rax)
    6e5e:	00 00                	add    %al,(%rax)
    6e60:	08 00                	or     %al,(%rax)
    6e62:	00 00                	add    %al,(%rax)
    6e64:	00 00                	add    %al,(%rax)
    6e66:	00 00                	add    %al,(%rax)
    6e68:	f5                   	cmc
    6e69:	fe                   	(bad)
    6e6a:	ff 6f 00             	ljmp   *0x0(%rdi)
    6e6d:	00 00                	add    %al,(%rax)
    6e6f:	00 c0                	add    %al,%al
    6e71:	03 00                	add    (%rax),%eax
    6e73:	00 00                	add    %al,(%rax)
    6e75:	00 00                	add    %al,(%rax)
    6e77:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 6e7d <_DYNAMIC+0x85>
    6e7d:	00 00                	add    %al,(%rax)
    6e7f:	00 68 07             	add    %ch,0x7(%rax)
    6e82:	00 00                	add    %al,(%rax)
    6e84:	00 00                	add    %al,(%rax)
    6e86:	00 00                	add    %al,(%rax)
    6e88:	06                   	(bad)
    6e89:	00 00                	add    %al,(%rax)
    6e8b:	00 00                	add    %al,(%rax)
    6e8d:	00 00                	add    %al,(%rax)
    6e8f:	00 f0                	add    %dh,%al
    6e91:	03 00                	add    (%rax),%eax
    6e93:	00 00                	add    %al,(%rax)
    6e95:	00 00                	add    %al,(%rax)
    6e97:	00 0a                	add    %cl,(%rdx)
    6e99:	00 00                	add    %al,(%rax)
    6e9b:	00 00                	add    %al,(%rax)
    6e9d:	00 00                	add    %al,(%rax)
    6e9f:	00 98 01 00 00 00    	add    %bl,0x1(%rax)
    6ea5:	00 00                	add    %al,(%rax)
    6ea7:	00 0b                	add    %cl,(%rbx)
    6ea9:	00 00                	add    %al,(%rax)
    6eab:	00 00                	add    %al,(%rax)
    6ead:	00 00                	add    %al,(%rax)
    6eaf:	00 18                	add    %bl,(%rax)
    6eb1:	00 00                	add    %al,(%rax)
    6eb3:	00 00                	add    %al,(%rax)
    6eb5:	00 00                	add    %al,(%rax)
    6eb7:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 6ebd <_DYNAMIC+0xc5>
	...
    6ec5:	00 00                	add    %al,(%rax)
    6ec7:	00 03                	add    %al,(%rbx)
	...
    6ed1:	70 00                	jo     6ed3 <_DYNAMIC+0xdb>
    6ed3:	00 00                	add    %al,(%rax)
    6ed5:	00 00                	add    %al,(%rax)
    6ed7:	00 02                	add    %al,(%rdx)
    6ed9:	00 00                	add    %al,(%rax)
    6edb:	00 00                	add    %al,(%rax)
    6edd:	00 00                	add    %al,(%rax)
    6edf:	00 a0 02 00 00 00    	add    %ah,0x2(%rax)
    6ee5:	00 00                	add    %al,(%rax)
    6ee7:	00 14 00             	add    %dl,(%rax,%rax,1)
    6eea:	00 00                	add    %al,(%rax)
    6eec:	00 00                	add    %al,(%rax)
    6eee:	00 00                	add    %al,(%rax)
    6ef0:	07                   	(bad)
    6ef1:	00 00                	add    %al,(%rax)
    6ef3:	00 00                	add    %al,(%rax)
    6ef5:	00 00                	add    %al,(%rax)
    6ef7:	00 17                	add    %dl,(%rdi)
    6ef9:	00 00                	add    %al,(%rax)
    6efb:	00 00                	add    %al,(%rax)
    6efd:	00 00                	add    %al,(%rax)
    6eff:	00 90 1c 00 00 00    	add    %dl,0x1c(%rax)
    6f05:	00 00                	add    %al,(%rax)
    6f07:	00 07                	add    %al,(%rdi)
    6f09:	00 00                	add    %al,(%rax)
    6f0b:	00 00                	add    %al,(%rax)
    6f0d:	00 00                	add    %al,(%rax)
    6f0f:	00 a0 09 00 00 00    	add    %ah,0x9(%rax)
    6f15:	00 00                	add    %al,(%rax)
    6f17:	00 08                	add    %cl,(%rax)
    6f19:	00 00                	add    %al,(%rax)
    6f1b:	00 00                	add    %al,(%rax)
    6f1d:	00 00                	add    %al,(%rax)
    6f1f:	00 f0                	add    %dh,%al
    6f21:	12 00                	adc    (%rax),%al
    6f23:	00 00                	add    %al,(%rax)
    6f25:	00 00                	add    %al,(%rax)
    6f27:	00 09                	add    %cl,(%rcx)
    6f29:	00 00                	add    %al,(%rax)
    6f2b:	00 00                	add    %al,(%rax)
    6f2d:	00 00                	add    %al,(%rax)
    6f2f:	00 18                	add    %bl,(%rax)
    6f31:	00 00                	add    %al,(%rax)
    6f33:	00 00                	add    %al,(%rax)
    6f35:	00 00                	add    %al,(%rax)
    6f37:	00 fb                	add    %bh,%bl
    6f39:	ff                   	(bad)
    6f3a:	ff 6f 00             	ljmp   *0x0(%rdi)
    6f3d:	00 00                	add    %al,(%rax)
    6f3f:	00 00                	add    %al,(%rax)
    6f41:	00 00                	add    %al,(%rax)
    6f43:	08 00                	or     %al,(%rax)
    6f45:	00 00                	add    %al,(%rax)
    6f47:	00 fe                	add    %bh,%dh
    6f49:	ff                   	(bad)
    6f4a:	ff 6f 00             	ljmp   *0x0(%rdi)
    6f4d:	00 00                	add    %al,(%rax)
    6f4f:	00 50 09             	add    %dl,0x9(%rax)
    6f52:	00 00                	add    %al,(%rax)
    6f54:	00 00                	add    %al,(%rax)
    6f56:	00 00                	add    %al,(%rax)
    6f58:	ff                   	(bad)
    6f59:	ff                   	(bad)
    6f5a:	ff 6f 00             	ljmp   *0x0(%rdi)
    6f5d:	00 00                	add    %al,(%rax)
    6f5f:	00 01                	add    %al,(%rcx)
    6f61:	00 00                	add    %al,(%rax)
    6f63:	00 00                	add    %al,(%rax)
    6f65:	00 00                	add    %al,(%rax)
    6f67:	00 f0                	add    %dh,%al
    6f69:	ff                   	(bad)
    6f6a:	ff 6f 00             	ljmp   *0x0(%rdi)
    6f6d:	00 00                	add    %al,(%rax)
    6f6f:	00 00                	add    %al,(%rax)
    6f71:	09 00                	or     %eax,(%rax)
    6f73:	00 00                	add    %al,(%rax)
    6f75:	00 00                	add    %al,(%rax)
    6f77:	00 f9                	add    %bh,%cl
    6f79:	ff                   	(bad)
    6f7a:	ff 6f 00             	ljmp   *0x0(%rdi)
    6f7d:	00 00                	add    %al,(%rax)
    6f7f:	00 c2                	add    %al,%dl
	...

Disassembly of section .got:

0000000000006fd8 <.got>:
	...

Disassembly of section .got.plt:

0000000000007000 <_GLOBAL_OFFSET_TABLE_>:
    7000:	f8                   	clc
    7001:	6d                   	insl   (%dx),%es:(%rdi)
	...
    7016:	00 00                	add    %al,(%rax)
    7018:	36 20 00             	ss and %al,(%rax)
    701b:	00 00                	add    %al,(%rax)
    701d:	00 00                	add    %al,(%rax)
    701f:	00 46 20             	add    %al,0x20(%rsi)
    7022:	00 00                	add    %al,(%rax)
    7024:	00 00                	add    %al,(%rax)
    7026:	00 00                	add    %al,(%rax)
    7028:	56                   	push   %rsi
    7029:	20 00                	and    %al,(%rax)
    702b:	00 00                	add    %al,(%rax)
    702d:	00 00                	add    %al,(%rax)
    702f:	00 66 20             	add    %ah,0x20(%rsi)
    7032:	00 00                	add    %al,(%rax)
    7034:	00 00                	add    %al,(%rax)
    7036:	00 00                	add    %al,(%rax)
    7038:	76 20                	jbe    705a <_GLOBAL_OFFSET_TABLE_+0x5a>
    703a:	00 00                	add    %al,(%rax)
    703c:	00 00                	add    %al,(%rax)
    703e:	00 00                	add    %al,(%rax)
    7040:	86 20                	xchg   %ah,(%rax)
    7042:	00 00                	add    %al,(%rax)
    7044:	00 00                	add    %al,(%rax)
    7046:	00 00                	add    %al,(%rax)
    7048:	96                   	xchg   %eax,%esi
    7049:	20 00                	and    %al,(%rax)
    704b:	00 00                	add    %al,(%rax)
    704d:	00 00                	add    %al,(%rax)
    704f:	00 a6 20 00 00 00    	add    %ah,0x20(%rsi)
    7055:	00 00                	add    %al,(%rax)
    7057:	00 b6 20 00 00 00    	add    %dh,0x20(%rsi)
    705d:	00 00                	add    %al,(%rax)
    705f:	00 c6                	add    %al,%dh
    7061:	20 00                	and    %al,(%rax)
    7063:	00 00                	add    %al,(%rax)
    7065:	00 00                	add    %al,(%rax)
    7067:	00 d6                	add    %dl,%dh
    7069:	20 00                	and    %al,(%rax)
    706b:	00 00                	add    %al,(%rax)
    706d:	00 00                	add    %al,(%rax)
    706f:	00 e6                	add    %ah,%dh
    7071:	20 00                	and    %al,(%rax)
    7073:	00 00                	add    %al,(%rax)
    7075:	00 00                	add    %al,(%rax)
    7077:	00 f6                	add    %dh,%dh
    7079:	20 00                	and    %al,(%rax)
    707b:	00 00                	add    %al,(%rax)
    707d:	00 00                	add    %al,(%rax)
    707f:	00 06                	add    %al,(%rsi)
    7081:	21 00                	and    %eax,(%rax)
    7083:	00 00                	add    %al,(%rax)
    7085:	00 00                	add    %al,(%rax)
    7087:	00 16                	add    %dl,(%rsi)
    7089:	21 00                	and    %eax,(%rax)
    708b:	00 00                	add    %al,(%rax)
    708d:	00 00                	add    %al,(%rax)
    708f:	00 26                	add    %ah,(%rsi)
    7091:	21 00                	and    %eax,(%rax)
    7093:	00 00                	add    %al,(%rax)
    7095:	00 00                	add    %al,(%rax)
    7097:	00 36                	add    %dh,(%rsi)
    7099:	21 00                	and    %eax,(%rax)
    709b:	00 00                	add    %al,(%rax)
    709d:	00 00                	add    %al,(%rax)
    709f:	00 46 21             	add    %al,0x21(%rsi)
    70a2:	00 00                	add    %al,(%rax)
    70a4:	00 00                	add    %al,(%rax)
    70a6:	00 00                	add    %al,(%rax)
    70a8:	56                   	push   %rsi
    70a9:	21 00                	and    %eax,(%rax)
    70ab:	00 00                	add    %al,(%rax)
    70ad:	00 00                	add    %al,(%rax)
    70af:	00 66 21             	add    %ah,0x21(%rsi)
    70b2:	00 00                	add    %al,(%rax)
    70b4:	00 00                	add    %al,(%rax)
    70b6:	00 00                	add    %al,(%rax)
    70b8:	76 21                	jbe    70db <_GLOBAL_OFFSET_TABLE_+0xdb>
    70ba:	00 00                	add    %al,(%rax)
    70bc:	00 00                	add    %al,(%rax)
    70be:	00 00                	add    %al,(%rax)
    70c0:	86 21                	xchg   %ah,(%rcx)
    70c2:	00 00                	add    %al,(%rax)
    70c4:	00 00                	add    %al,(%rax)
    70c6:	00 00                	add    %al,(%rax)
    70c8:	96                   	xchg   %eax,%esi
    70c9:	21 00                	and    %eax,(%rax)
    70cb:	00 00                	add    %al,(%rax)
    70cd:	00 00                	add    %al,(%rax)
    70cf:	00 a6 21 00 00 00    	add    %ah,0x21(%rsi)
    70d5:	00 00                	add    %al,(%rax)
    70d7:	00 b6 21 00 00 00    	add    %dh,0x21(%rsi)
    70dd:	00 00                	add    %al,(%rax)
    70df:	00 c6                	add    %al,%dh
    70e1:	21 00                	and    %eax,(%rax)
    70e3:	00 00                	add    %al,(%rax)
    70e5:	00 00                	add    %al,(%rax)
    70e7:	00 d6                	add    %dl,%dh
    70e9:	21 00                	and    %eax,(%rax)
    70eb:	00 00                	add    %al,(%rax)
    70ed:	00 00                	add    %al,(%rax)
    70ef:	00 e6                	add    %ah,%dh
    70f1:	21 00                	and    %eax,(%rax)
    70f3:	00 00                	add    %al,(%rax)
    70f5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000007100 <__data_start>:
	...

0000000000007108 <__dso_handle>:
    7108:	08 71 00             	or     %dh,0x0(%rcx)
	...

0000000000007120 <mul.1>:
    7120:	04 00                	add    $0x0,%al
	...

0000000000007140 <t77>:
    7140:	0a 00                	or     (%rax),%al
    7142:	00 00                	add    %al,(%rax)
    7144:	4d 00 00             	rex.WRB add %r8b,(%r8)
	...

0000000000007220 <t126>:
    7220:	14 00                	adc    $0x0,%al
    7222:	00 00                	add    %al,(%rax)
    7224:	7e 00                	jle    7226 <t126+0x6>
	...

0000000000007300 <t184>:
    7300:	1e                   	(bad)
    7301:	00 00                	add    %al,(%rax)
    7303:	00 b8 00 00 00 00    	add    %bh,0x0(%rax)
	...

00000000000073e0 <t101>:
    73e0:	0f 00 00             	sldt   (%rax)
    73e3:	00 65 00             	add    %ah,0x0(%rbp)
	...

00000000000074c0 <t68>:
    74c0:	09 00                	or     %eax,(%rax)
    74c2:	00 00                	add    %al,(%rax)
    74c4:	44 00 00             	add    %r8b,(%rax)
	...

00000000000075a0 <t169>:
    75a0:	1b 00                	sbb    (%rax),%eax
    75a2:	00 00                	add    %al,(%rax)
    75a4:	a9 00 00 00 00       	test   $0x0,%eax
	...

0000000000007680 <t15>:
    7680:	02 00                	add    (%rax),%al
    7682:	00 00                	add    %al,(%rax)
    7684:	0f 00 00             	sldt   (%rax)
	...

0000000000007760 <t106>:
    7760:	10 00                	adc    %al,(%rax)
    7762:	00 00                	add    %al,(%rax)
    7764:	6a 00                	push   $0x0
	...

0000000000007840 <t88>:
    7840:	0c 00                	or     $0x0,%al
    7842:	00 00                	add    %al,(%rax)
    7844:	58                   	pop    %rax
	...

0000000000007920 <t25>:
    7920:	03 00                	add    (%rax),%eax
    7922:	00 00                	add    %al,(%rax)
    7924:	19 00                	sbb    %eax,(%rax)
	...

0000000000007a00 <t179>:
    7a00:	1d 00 00 00 b3       	sbb    $0xb3000000,%eax
	...

0000000000007ae0 <t153>:
    7ae0:	19 00                	sbb    %eax,(%rax)
    7ae2:	00 00                	add    %al,(%rax)
    7ae4:	99                   	cltd
	...

0000000000007bc0 <t123>:
    7bc0:	13 00                	adc    (%rax),%eax
    7bc2:	00 00                	add    %al,(%rax)
    7bc4:	7b 00                	jnp    7bc6 <t123+0x6>
	...

0000000000007ca0 <t83>:
    7ca0:	0b 00                	or     (%rax),%eax
    7ca2:	00 00                	add    %al,(%rax)
    7ca4:	53                   	push   %rbx
	...

0000000000007d80 <t94>:
    7d80:	0e                   	(bad)
    7d81:	00 00                	add    %al,(%rax)
    7d83:	00 5e 00             	add    %bl,0x0(%rsi)
	...

0000000000007e60 <t138>:
    7e60:	16                   	(bad)
    7e61:	00 00                	add    %al,(%rax)
    7e63:	00 8a 00 00 00 00    	add    %cl,0x0(%rdx)
	...

0000000000007f40 <t8>:
    7f40:	01 00                	add    %eax,(%rax)
    7f42:	00 00                	add    %al,(%rax)
    7f44:	08 00                	or     %al,(%rax)
	...

0000000000008020 <t132>:
    8020:	15 00 00 00 84       	adc    $0x84000000,%eax
	...

0000000000008100 <t144>:
    8100:	17                   	(bad)
    8101:	00 00                	add    %al,(%rax)
    8103:	00 90 00 00 00 00    	add    %dl,0x0(%rax)
	...

00000000000081e0 <t175>:
    81e0:	1c 00                	sbb    $0x0,%al
    81e2:	00 00                	add    %al,(%rax)
    81e4:	af                   	scas   %es:(%rdi),%eax
	...

00000000000082c0 <t61>:
    82c0:	08 00                	or     %al,(%rax)
    82c2:	00 00                	add    %al,(%rax)
    82c4:	3d 00 00 00 00       	cmp    $0x0,%eax
	...

00000000000083a0 <t43>:
    83a0:	05 00 00 00 2b       	add    $0x2b000000,%eax
	...

0000000000008480 <t112>:
    8480:	11 00                	adc    %eax,(%rax)
    8482:	00 00                	add    %al,(%rax)
    8484:	70 00                	jo     8486 <t112+0x6>
	...

0000000000008560 <t47>:
    8560:	06                   	(bad)
    8561:	00 00                	add    %al,(%rax)
    8563:	00 2f                	add    %ch,(%rdi)
	...

0000000000008640 <t34>:
    8640:	04 00                	add    $0x0,%al
    8642:	00 00                	add    %al,(%rax)
    8644:	22 00                	and    (%rax),%al
	...

0000000000008720 <t52>:
    8720:	07                   	(bad)
    8721:	00 00                	add    %al,(%rax)
    8723:	00 34 00             	add    %dh,(%rax,%rax,1)
	...

0000000000008800 <t90>:
    8800:	0d 00 00 00 5a       	or     $0x5a000000,%eax
	...

00000000000088e0 <t114>:
    88e0:	12 00                	adc    (%rax),%al
    88e2:	00 00                	add    %al,(%rax)
    88e4:	72 00                	jb     88e6 <t114+0x6>
	...

00000000000089c0 <t163>:
    89c0:	1a 00                	sbb    (%rax),%al
    89c2:	00 00                	add    %al,(%rax)
    89c4:	a3 00 00 00 00 00 00 	movabs %eax,0x0
    89cb:	00 00 
	...

0000000000008aa0 <node6>:
    8aa0:	04 03                	add    $0x3,%al
    8aa2:	00 00                	add    %al,(%rax)
    8aa4:	06                   	(bad)
	...

0000000000008ab0 <user_password>:
    8ab0:	66 59                	pop    %cx
    8ab2:	76 6b                	jbe    8b1f <t0+0x3f>
    8ab4:	75 66                	jne    8b1c <t0+0x3c>
    8ab6:	59                   	pop    %rcx
    8ab7:	6f                   	outsl  %ds:(%rsi),(%dx)
    8ab8:	38 4d 63             	cmp    %cl,0x63(%rbp)
    8abb:	56                   	push   %rsi
    8abc:	69 72 4b 76 37 63 69 	imul   $0x69633776,0x4b(%rdx),%esi
    8ac3:	52                   	push   %rdx
    8ac4:	00 00                	add    %al,(%rax)
	...

0000000000008ac8 <userid>:
    8ac8:	32 30                	xor    (%rax),%dh
    8aca:	32 31                	xor    (%rcx),%dh
    8acc:	32 30                	xor    (%rax),%dh
    8ace:	31 37                	xor    %esi,(%rdi)
    8ad0:	31 39                	xor    %edi,(%rcx)
	...

0000000000008ad4 <bomb_id>:
    8ad4:	37                   	(bad)
    8ad5:	17                   	(bad)
    8ad6:	79 78                	jns    8b50 <t0+0x70>
	...

0000000000008ae0 <t0>:
	...
    8ae8:	a0 fc 00 00 00 00 00 	movabs 0xfc,%al
    8aef:	00 00 
	...
    8afd:	00 00                	add    %al,(%rax)
    8aff:	00 40 ea             	add    %al,-0x16(%rax)
	...
    8b0e:	00 00                	add    %al,(%rax)
    8b10:	80 e1 00             	and    $0x0,%cl
    8b13:	00 00                	add    %al,(%rax)
    8b15:	00 00                	add    %al,(%rax)
    8b17:	00 00                	add    %al,(%rax)
    8b19:	d7                   	xlat   %ds:(%rbx)
    8b1a:	00 00                	add    %al,(%rax)
    8b1c:	00 00                	add    %al,(%rax)
    8b1e:	00 00                	add    %al,(%rax)
    8b20:	a0 cb 00 00 00 00 00 	movabs 0xcb,%al
    8b27:	00 00 
	...
    8b3d:	00 00                	add    %al,(%rax)
    8b3f:	00 20                	add    %ah,(%rax)
    8b41:	c1 00 00             	roll   $0x0,(%rax)
	...
    8b60:	20 b3 00 00 00 00    	and    %dh,0x0(%rbx)
	...
    8b6e:	00 00                	add    %al,(%rax)
    8b70:	20 ac 00 00 00 00 00 	and    %ch,0x0(%rax,%rax,1)
    8b77:	00 40 9d             	add    %al,-0x63(%rax)
    8b7a:	00 00                	add    %al,(%rax)
    8b7c:	00 00                	add    %al,(%rax)
    8b7e:	00 00                	add    %al,(%rax)
    8b80:	c0 8b 00 00 00 00 00 	rorb   $0x0,0x0(%rbx)
	...

0000000000008bc0 <t69>:
    8bc0:	00 00                	add    %al,(%rax)
    8bc2:	00 00                	add    %al,(%rax)
    8bc4:	45 00 00             	add    %r8b,(%r8)
    8bc7:	00 80 94 00 00 00    	add    %al,0x94(%rax)
	...
    8be5:	00 00                	add    %al,(%rax)
    8be7:	00 a0 8c 00 00 00    	add    %ah,0x8c(%rax)
	...

0000000000008ca0 <t70>:
    8ca0:	00 00                	add    %al,(%rax)
    8ca2:	00 00                	add    %al,(%rax)
    8ca4:	46 00 00             	rex.RX add %r8b,(%rax)
	...
    8d07:	00 80 8d 00 00 00    	add    %al,0x8d(%rax)
	...

0000000000008d80 <t71>:
    8d80:	00 00                	add    %al,(%rax)
    8d82:	00 00                	add    %al,(%rax)
    8d84:	47 00 00             	rex.RXB add %r8b,(%r8)
	...
    8dff:	00 60 8e             	add    %ah,-0x72(%rax)
	...

0000000000008e60 <t72>:
    8e60:	00 00                	add    %al,(%rax)
    8e62:	00 00                	add    %al,(%rax)
    8e64:	48 00 00             	rex.W add %al,(%rax)
	...
    8e87:	00 c0                	add    %al,%al
    8e89:	92                   	xchg   %eax,%edx
	...
    8ed6:	00 00                	add    %al,(%rax)
    8ed8:	40 8f 00             	rex pop (%rax)
	...

0000000000008f40 <t73>:
    8f40:	00 00                	add    %al,(%rax)
    8f42:	00 00                	add    %al,(%rax)
    8f44:	49 00 00             	rex.WB add %al,(%r8)
	...
    8fcf:	00 20                	add    %ah,(%rax)
    8fd1:	90                   	nop
	...

0000000000009020 <t74>:
    9020:	00 00                	add    %al,(%rax)
    9022:	00 00                	add    %al,(%rax)
    9024:	4a 00 00             	rex.WX add %al,(%rax)
    9027:	00 00                	add    %al,(%rax)
    9029:	91                   	xchg   %eax,%ecx
	...

0000000000009100 <t75>:
    9100:	00 00                	add    %al,(%rax)
    9102:	00 00                	add    %al,(%rax)
    9104:	4b 00 00             	rex.WXB add %al,(%r8)
	...
    918f:	00 e0                	add    %ah,%al
    9191:	91                   	xchg   %eax,%ecx
	...

00000000000091e0 <t76>:
    91e0:	00 00                	add    %al,(%rax)
    91e2:	00 00                	add    %al,(%rax)
    91e4:	4c 00 00             	rex.WR add %r8b,(%rax)
	...
    92a7:	00 40 71             	add    %al,0x71(%rax)
	...

00000000000092c0 <t124>:
    92c0:	00 00                	add    %al,(%rax)
    92c2:	00 00                	add    %al,(%rax)
    92c4:	7c 00                	jl     92c6 <t124+0x6>
	...
    9356:	00 00                	add    %al,(%rax)
    9358:	a0 93 00 00 00 00 00 	movabs 0x93,%al
    935f:	00 00 
	...

00000000000093a0 <t125>:
    93a0:	00 00                	add    %al,(%rax)
    93a2:	00 00                	add    %al,(%rax)
    93a4:	7d 00                	jge    93a6 <t125+0x6>
	...
    943e:	00 00                	add    %al,(%rax)
    9440:	20 72 00             	and    %dh,0x0(%rdx)
	...

0000000000009480 <t95>:
    9480:	00 00                	add    %al,(%rax)
    9482:	00 00                	add    %al,(%rax)
    9484:	5f                   	pop    %rdi
	...
    94c5:	00 00                	add    %al,(%rax)
    94c7:	00 e0                	add    %ah,%al
    94c9:	98                   	cwtl
	...
    950e:	00 00                	add    %al,(%rax)
    9510:	60                   	(bad)
    9511:	95                   	xchg   %eax,%ebp
	...

0000000000009560 <t180>:
    9560:	00 00                	add    %al,(%rax)
    9562:	00 00                	add    %al,(%rax)
    9564:	b4 00                	mov    $0x0,%ah
	...
    956e:	00 00                	add    %al,(%rax)
    9570:	40 96                	rex xchg %eax,%esi
	...

0000000000009640 <t181>:
    9640:	00 00                	add    %al,(%rax)
    9642:	00 00                	add    %al,(%rax)
    9644:	b5 00                	mov    $0x0,%ch
    9646:	00 00                	add    %al,(%rax)
    9648:	20 97 00 00 00 00    	and    %dl,0x0(%rdi)
	...

0000000000009720 <t182>:
    9720:	00 00                	add    %al,(%rax)
    9722:	00 00                	add    %al,(%rax)
    9724:	b6 00                	mov    $0x0,%dh
	...
    977e:	00 00                	add    %al,(%rax)
    9780:	00 98 00 00 00 00    	add    %bl,0x0(%rax)
	...

0000000000009800 <t183>:
    9800:	00 00                	add    %al,(%rax)
    9802:	00 00                	add    %al,(%rax)
    9804:	b7 00                	mov    $0x0,%bh
	...
    985e:	00 00                	add    %al,(%rax)
    9860:	00 73 00             	add    %dh,0x0(%rbx)
	...

00000000000098e0 <t96>:
    98e0:	00 00                	add    %al,(%rax)
    98e2:	00 00                	add    %al,(%rax)
    98e4:	60                   	(bad)
	...
    996d:	00 00                	add    %al,(%rax)
    996f:	00 c0                	add    %al,%al
    9971:	99                   	cltd
	...

00000000000099c0 <t97>:
    99c0:	00 00                	add    %al,(%rax)
    99c2:	00 00                	add    %al,(%rax)
    99c4:	61                   	(bad)
	...
    9a05:	00 00                	add    %al,(%rax)
    9a07:	00 a0 9a 00 00 00    	add    %ah,0x9a(%rax)
	...

0000000000009aa0 <t98>:
    9aa0:	00 00                	add    %al,(%rax)
    9aa2:	00 00                	add    %al,(%rax)
    9aa4:	62                   	(bad)
	...
    9b3d:	00 00                	add    %al,(%rax)
    9b3f:	00 80 9b 00 00 00    	add    %al,0x9b(%rax)
	...

0000000000009b80 <t99>:
    9b80:	00 00                	add    %al,(%rax)
    9b82:	00 00                	add    %al,(%rax)
    9b84:	63 00                	movsxd (%rax),%eax
	...
    9c16:	00 00                	add    %al,(%rax)
    9c18:	60                   	(bad)
    9c19:	9c                   	pushf
	...

0000000000009c60 <t100>:
    9c60:	00 00                	add    %al,(%rax)
    9c62:	00 00                	add    %al,(%rax)
    9c64:	64 00 00             	add    %al,%fs:(%rax)
	...
    9d07:	00 e0                	add    %ah,%al
    9d09:	73 00                	jae    9d0b <t100+0xab>
	...

0000000000009d40 <t9>:
    9d40:	00 00                	add    %al,(%rax)
    9d42:	00 00                	add    %al,(%rax)
    9d44:	09 00                	or     %eax,(%rax)
	...
    9d7e:	00 00                	add    %al,(%rax)
    9d80:	60                   	(bad)
    9d81:	a3 00 00 00 00 00 00 	movabs %eax,0x0
    9d88:	00 00 
	...
    9db6:	00 00                	add    %al,(%rax)
    9db8:	20 9e 00 00 00 00    	and    %bl,0x0(%rsi)
	...

0000000000009e20 <t62>:
    9e20:	00 00                	add    %al,(%rax)
    9e22:	00 00                	add    %al,(%rax)
    9e24:	3e 00 00             	ds add %al,(%rax)
	...
    9e7f:	00 00                	add    %al,(%rax)
    9e81:	9f                   	lahf
	...

0000000000009f00 <t63>:
    9f00:	00 00                	add    %al,(%rax)
    9f02:	00 00                	add    %al,(%rax)
    9f04:	3f                   	(bad)
	...
    9f45:	00 00                	add    %al,(%rax)
    9f47:	00 e0                	add    %ah,%al
    9f49:	9f                   	lahf
	...

0000000000009fe0 <t64>:
    9fe0:	00 00                	add    %al,(%rax)
    9fe2:	00 00                	add    %al,(%rax)
    9fe4:	40 00 00             	rex add %al,(%rax)
	...
    a07f:	00 c0                	add    %al,%al
    a081:	a0 00 00 00 00 00 00 	movabs 0x0,%al
    a088:	00 00 
	...

000000000000a0c0 <t65>:
    a0c0:	00 00                	add    %al,(%rax)
    a0c2:	00 00                	add    %al,(%rax)
    a0c4:	41 00 00             	add    %al,(%r8)
    a0c7:	00 a0 a1 00 00 00    	add    %ah,0xa1(%rax)
	...

000000000000a1a0 <t66>:
    a1a0:	00 00                	add    %al,(%rax)
    a1a2:	00 00                	add    %al,(%rax)
    a1a4:	42 00 00             	rex.X add %al,(%rax)
	...
    a22f:	00 80 a2 00 00 00    	add    %al,0xa2(%rax)
	...

000000000000a280 <t67>:
    a280:	00 00                	add    %al,(%rax)
    a282:	00 00                	add    %al,(%rax)
    a284:	43 00 00             	rex.XB add %al,(%r8)
	...
    a347:	00 c0                	add    %al,%al
    a349:	74 00                	je     a34b <t67+0xcb>
	...

000000000000a360 <t10>:
    a360:	00 00                	add    %al,(%rax)
    a362:	00 00                	add    %al,(%rax)
    a364:	0a 00                	or     (%rax),%al
	...
    a386:	00 00                	add    %al,(%rax)
    a388:	40 a4                	rex movsb %ds:(%rsi),%es:(%rdi)
	...

000000000000a440 <t11>:
    a440:	00 00                	add    %al,(%rax)
    a442:	00 00                	add    %al,(%rax)
    a444:	0b 00                	or     (%rax),%eax
	...
    a49e:	00 00                	add    %al,(%rax)
    a4a0:	80 a9 00 00 00 00 00 	subb   $0x0,0x0(%rcx)
	...
    a4cf:	00 20                	add    %ah,(%rax)
    a4d1:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
	...

000000000000a520 <t164>:
    a520:	00 00                	add    %al,(%rax)
    a522:	00 00                	add    %al,(%rax)
    a524:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
	...
    a569:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
	...

000000000000a600 <t165>:
    a600:	00 00                	add    %al,(%rax)
    a602:	00 00                	add    %al,(%rax)
    a604:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
	...
    a68d:	00 00                	add    %al,(%rax)
    a68f:	00 e0                	add    %ah,%al
    a691:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
	...

000000000000a6e0 <t166>:
    a6e0:	00 00                	add    %al,(%rax)
    a6e2:	00 00                	add    %al,(%rax)
    a6e4:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
	...
    a785:	00 00                	add    %al,(%rax)
    a787:	00 c0                	add    %al,%al
    a789:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
	...

000000000000a7c0 <t167>:
    a7c0:	00 00                	add    %al,(%rax)
    a7c2:	00 00                	add    %al,(%rax)
    a7c4:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
	...
    a85d:	00 00                	add    %al,(%rax)
    a85f:	00 a0 a8 00 00 00    	add    %ah,0xa8(%rax)
	...

000000000000a8a0 <t168>:
    a8a0:	00 00                	add    %al,(%rax)
    a8a2:	00 00                	add    %al,(%rax)
    a8a4:	a8 00                	test   $0x0,%al
	...
    a8de:	00 00                	add    %al,(%rax)
    a8e0:	a0 75 00 00 00 00 00 	movabs 0x75,%al
    a8e7:	00 00 
	...

000000000000a980 <t12>:
    a980:	00 00                	add    %al,(%rax)
    a982:	00 00                	add    %al,(%rax)
    a984:	0c 00                	or     $0x0,%al
	...
    aa1e:	00 00                	add    %al,(%rax)
    aa20:	60                   	(bad)
    aa21:	aa                   	stos   %al,%es:(%rdi)
	...

000000000000aa60 <t13>:
    aa60:	00 00                	add    %al,(%rax)
    aa62:	00 00                	add    %al,(%rax)
    aa64:	0d 00 00 00 00       	or     $0x0,%eax
	...
    aa85:	00 00                	add    %al,(%rax)
    aa87:	00 40 ab             	add    %al,-0x55(%rax)
	...

000000000000ab40 <t14>:
    ab40:	00 00                	add    %al,(%rax)
    ab42:	00 00                	add    %al,(%rax)
    ab44:	0e                   	(bad)
	...
    abcd:	00 00                	add    %al,(%rax)
    abcf:	00 80 76 00 00 00    	add    %al,0x76(%rax)
	...

000000000000ac20 <t84>:
    ac20:	00 00                	add    %al,(%rax)
    ac22:	00 00                	add    %al,(%rax)
    ac24:	54                   	push   %rsp
	...
    ac49:	ad                   	lods   %ds:(%rsi),%eax
	...

000000000000ad00 <t85>:
    ad00:	00 00                	add    %al,(%rax)
    ad02:	00 00                	add    %al,(%rax)
    ad04:	55                   	push   %rbp
	...
    ad45:	00 00                	add    %al,(%rax)
    ad47:	00 60 b1             	add    %ah,-0x4f(%rax)
	...
    ad96:	00 00                	add    %al,(%rax)
    ad98:	e0 ad                	loopne ad47 <t85+0x47>
	...

000000000000ade0 <t102>:
    ade0:	00 00                	add    %al,(%rax)
    ade2:	00 00                	add    %al,(%rax)
    ade4:	66 00 00             	data16 add %al,(%rax)
	...
    ae7f:	00 c0                	add    %al,%al
    ae81:	ae                   	scas   %es:(%rdi),%al
	...

000000000000aec0 <t103>:
    aec0:	00 00                	add    %al,(%rax)
    aec2:	00 00                	add    %al,(%rax)
    aec4:	67 00 00             	add    %al,(%eax)
    aec7:	00 a0 af 00 00 00    	add    %ah,0xaf(%rax)
	...

000000000000afa0 <t104>:
    afa0:	00 00                	add    %al,(%rax)
    afa2:	00 00                	add    %al,(%rax)
    afa4:	68 00 00 00 00       	push   $0x0
	...
    b02d:	00 00                	add    %al,(%rax)
    b02f:	00 80 b0 00 00 00    	add    %al,0xb0(%rax)
	...

000000000000b080 <t105>:
    b080:	00 00                	add    %al,(%rax)
    b082:	00 00                	add    %al,(%rax)
    b084:	69 00 00 00 00 00    	imul   $0x0,(%rax),%eax
	...
    b11e:	00 00                	add    %al,(%rax)
    b120:	60                   	(bad)
    b121:	77 00                	ja     b123 <t105+0xa3>
	...

000000000000b160 <t86>:
    b160:	00 00                	add    %al,(%rax)
    b162:	00 00                	add    %al,(%rax)
    b164:	56                   	push   %rsi
	...
    b1c5:	00 00                	add    %al,(%rax)
    b1c7:	00 40 b2             	add    %al,-0x4e(%rax)
	...

000000000000b240 <t87>:
    b240:	00 00                	add    %al,(%rax)
    b242:	00 00                	add    %al,(%rax)
    b244:	57                   	push   %rdi
	...
    b2e5:	00 00                	add    %al,(%rax)
    b2e7:	00 40 78             	add    %al,0x78(%rax)
	...

000000000000b320 <t16>:
    b320:	00 00                	add    %al,(%rax)
    b322:	00 00                	add    %al,(%rax)
    b324:	10 00                	adc    %al,(%rax)
	...
    b3ae:	00 00                	add    %al,(%rax)
    b3b0:	00 b4 00 00 00 00 00 	add    %dh,0x0(%rax,%rax,1)
	...

000000000000b400 <t17>:
    b400:	00 00                	add    %al,(%rax)
    b402:	00 00                	add    %al,(%rax)
    b404:	11 00                	adc    %eax,(%rax)
    b406:	00 00                	add    %al,(%rax)
    b408:	00 bb 00 00 00 00    	add    %bh,0x0(%rbx)
	...
    b476:	00 00                	add    %al,(%rax)
    b478:	e0 b4                	loopne b42e <t17+0x2e>
	...

000000000000b4e0 <t18>:
    b4e0:	00 00                	add    %al,(%rax)
    b4e2:	00 00                	add    %al,(%rax)
    b4e4:	12 00                	adc    (%rax),%al
	...
    b516:	00 00                	add    %al,(%rax)
    b518:	c0 b5 00 00 00 00 00 	shlb   $0x0,0x0(%rbp)
	...

000000000000b5c0 <t19>:
    b5c0:	00 00                	add    %al,(%rax)
    b5c2:	00 00                	add    %al,(%rax)
    b5c4:	13 00                	adc    (%rax),%eax
	...
    b64e:	00 00                	add    %al,(%rax)
    b650:	a0 b6 00 00 00 00 00 	movabs 0xb6,%al
    b657:	00 00 
	...

000000000000b6a0 <t20>:
    b6a0:	00 00                	add    %al,(%rax)
    b6a2:	00 00                	add    %al,(%rax)
    b6a4:	14 00                	adc    $0x0,%al
    b6a6:	00 00                	add    %al,(%rax)
    b6a8:	80 b7 00 00 00 00 00 	xorb   $0x0,0x0(%rdi)
	...

000000000000b780 <t21>:
    b780:	00 00                	add    %al,(%rax)
    b782:	00 00                	add    %al,(%rax)
    b784:	15 00 00 00 00       	adc    $0x0,%eax
	...
    b7e5:	00 00                	add    %al,(%rax)
    b7e7:	00 60 b8             	add    %ah,-0x48(%rax)
	...

000000000000b860 <t22>:
    b860:	00 00                	add    %al,(%rax)
    b862:	00 00                	add    %al,(%rax)
    b864:	16                   	(bad)
	...
    b8c5:	00 00                	add    %al,(%rax)
    b8c7:	00 40 b9             	add    %al,-0x47(%rax)
	...

000000000000b940 <t23>:
    b940:	00 00                	add    %al,(%rax)
    b942:	00 00                	add    %al,(%rax)
    b944:	17                   	(bad)
	...
    b965:	00 00                	add    %al,(%rax)
    b967:	00 20                	add    %ah,(%rax)
    b969:	ba 00 00 00 00       	mov    $0x0,%edx
	...

000000000000ba20 <t24>:
    ba20:	00 00                	add    %al,(%rax)
    ba22:	00 00                	add    %al,(%rax)
    ba24:	18 00                	sbb    %al,(%rax)
	...
    baae:	00 00                	add    %al,(%rax)
    bab0:	20 79 00             	and    %bh,0x0(%rcx)
	...

000000000000bb00 <t145>:
    bb00:	00 00                	add    %al,(%rax)
    bb02:	00 00                	add    %al,(%rax)
    bb04:	91                   	xchg   %eax,%ecx
	...
    bb35:	00 00                	add    %al,(%rax)
    bb37:	00 e0                	add    %ah,%al
    bb39:	bb 00 00 00 00       	mov    $0x0,%ebx
	...

000000000000bbe0 <t146>:
    bbe0:	00 00                	add    %al,(%rax)
    bbe2:	00 00                	add    %al,(%rax)
    bbe4:	92                   	xchg   %eax,%edx
	...
    bc45:	00 00                	add    %al,(%rax)
    bc47:	00 c0                	add    %al,%al
    bc49:	bc 00 00 00 00       	mov    $0x0,%esp
	...

000000000000bcc0 <t147>:
    bcc0:	00 00                	add    %al,(%rax)
    bcc2:	00 00                	add    %al,(%rax)
    bcc4:	93                   	xchg   %eax,%ebx
    bcc5:	00 00                	add    %al,(%rax)
    bcc7:	00 a0 bd 00 00 00    	add    %ah,0xbd(%rax)
	...

000000000000bda0 <t148>:
    bda0:	18 00                	sbb    %al,(%rax)
    bda2:	00 00                	add    %al,(%rax)
    bda4:	94                   	xchg   %eax,%esp
	...
    be3d:	00 00                	add    %al,(%rax)
    be3f:	00 80 be 00 00 00    	add    %al,0xbe(%rax)
	...

000000000000be80 <t176>:
    be80:	00 00                	add    %al,(%rax)
    be82:	00 00                	add    %al,(%rax)
    be84:	b0 00                	mov    $0x0,%al
	...
    bec6:	00 00                	add    %al,(%rax)
    bec8:	60                   	(bad)
    bec9:	bf 00 00 00 00       	mov    $0x0,%edi
	...

000000000000bf60 <t177>:
    bf60:	00 00                	add    %al,(%rax)
    bf62:	00 00                	add    %al,(%rax)
    bf64:	b1 00                	mov    $0x0,%cl
	...
    bff6:	00 00                	add    %al,(%rax)
    bff8:	40 c0 00 00          	rex rolb $0x0,(%rax)
	...

000000000000c040 <t178>:
    c040:	00 00                	add    %al,(%rax)
    c042:	00 00                	add    %al,(%rax)
    c044:	b2 00                	mov    $0x0,%dl
	...
    c0a6:	00 00                	add    %al,(%rax)
    c0a8:	00 7a 00             	add    %bh,0x0(%rdx)
	...

000000000000c120 <t115>:
    c120:	00 00                	add    %al,(%rax)
    c122:	00 00                	add    %al,(%rax)
    c124:	73 00                	jae    c126 <t115+0x6>
    c126:	00 00                	add    %al,(%rax)
    c128:	00 c2                	add    %al,%dl
	...

000000000000c200 <t116>:
    c200:	00 00                	add    %al,(%rax)
    c202:	00 00                	add    %al,(%rax)
    c204:	74 00                	je     c206 <t116+0x6>
	...
    c20e:	00 00                	add    %al,(%rax)
    c210:	60                   	(bad)
    c211:	c6 00 00             	movb   $0x0,(%rax)
	...
    c220:	e0 c2                	loopne c1e4 <t115+0xc4>
	...

000000000000c2e0 <t149>:
    c2e0:	00 00                	add    %al,(%rax)
    c2e2:	00 00                	add    %al,(%rax)
    c2e4:	95                   	xchg   %eax,%ebp
	...
    c3a5:	00 00                	add    %al,(%rax)
    c3a7:	00 c0                	add    %al,%al
    c3a9:	c3                   	ret
	...

000000000000c3c0 <t150>:
    c3c0:	00 00                	add    %al,(%rax)
    c3c2:	00 00                	add    %al,(%rax)
    c3c4:	96                   	xchg   %eax,%esi
	...
    c3cd:	00 00                	add    %al,(%rax)
    c3cf:	00 a0 c4 00 00 00    	add    %ah,0xc4(%rax)
	...

000000000000c4a0 <t151>:
    c4a0:	00 00                	add    %al,(%rax)
    c4a2:	00 00                	add    %al,(%rax)
    c4a4:	97                   	xchg   %eax,%edi
	...
    c545:	00 00                	add    %al,(%rax)
    c547:	00 80 c5 00 00 00    	add    %al,0xc5(%rax)
	...

000000000000c580 <t152>:
    c580:	00 00                	add    %al,(%rax)
    c582:	00 00                	add    %al,(%rax)
    c584:	98                   	cwtl
	...
    c5b5:	00 00                	add    %al,(%rax)
    c5b7:	00 e0                	add    %ah,%al
    c5b9:	7a 00                	jp     c5bb <t152+0x3b>
	...

000000000000c660 <t117>:
    c660:	00 00                	add    %al,(%rax)
    c662:	00 00                	add    %al,(%rax)
    c664:	75 00                	jne    c666 <t117+0x6>
	...
    c726:	00 00                	add    %al,(%rax)
    c728:	40 c7 00 00 00 00 00 	rex movl $0x0,(%rax)
	...

000000000000c740 <t118>:
    c740:	00 00                	add    %al,(%rax)
    c742:	00 00                	add    %al,(%rax)
    c744:	76 00                	jbe    c746 <t118+0x6>
	...
    c7ce:	00 00                	add    %al,(%rax)
    c7d0:	20 c8                	and    %cl,%al
	...

000000000000c820 <t119>:
    c820:	00 00                	add    %al,(%rax)
    c822:	00 00                	add    %al,(%rax)
    c824:	77 00                	ja     c826 <t119+0x6>
	...
    c866:	00 00                	add    %al,(%rax)
    c868:	00 c9                	add    %cl,%cl
	...

000000000000c900 <t120>:
    c900:	00 00                	add    %al,(%rax)
    c902:	00 00                	add    %al,(%rax)
    c904:	78 00                	js     c906 <t120+0x6>
	...
    c96e:	00 00                	add    %al,(%rax)
    c970:	e0 c9                	loopne c93b <t120+0x3b>
	...

000000000000c9e0 <t121>:
    c9e0:	00 00                	add    %al,(%rax)
    c9e2:	00 00                	add    %al,(%rax)
    c9e4:	79 00                	jns    c9e6 <t121+0x6>
	...
    ca7e:	00 00                	add    %al,(%rax)
    ca80:	c0 ca 00             	ror    $0x0,%dl
	...

000000000000cac0 <t122>:
    cac0:	00 00                	add    %al,(%rax)
    cac2:	00 00                	add    %al,(%rax)
    cac4:	7a 00                	jp     cac6 <t122+0x6>
	...
    cafe:	00 00                	add    %al,(%rax)
    cb00:	c0 7b 00 00          	sarb   $0x0,0x0(%rbx)
	...

000000000000cba0 <t78>:
    cba0:	00 00                	add    %al,(%rax)
    cba2:	00 00                	add    %al,(%rax)
    cba4:	4e 00 00             	rex.WRX add %r8b,(%rax)
    cba7:	00 a0 d2 00 00 00    	add    %ah,0xd2(%rax)
	...
    cbe5:	00 00                	add    %al,(%rax)
    cbe7:	00 80 cc 00 00 00    	add    %al,0xcc(%rax)
	...

000000000000cc80 <t79>:
    cc80:	00 00                	add    %al,(%rax)
    cc82:	00 00                	add    %al,(%rax)
    cc84:	4f 00 00             	rex.WRXB add %r8b,(%r8)
	...
    ccd7:	00 00                	add    %al,(%rax)
    ccd9:	d0 00                	rolb   (%rax)
	...
    cd1f:	00 60 cd             	add    %ah,-0x33(%rax)
	...

000000000000cd60 <t80>:
    cd60:	00 00                	add    %al,(%rax)
    cd62:	00 00                	add    %al,(%rax)
    cd64:	50                   	push   %rax
	...
    cdd5:	00 00                	add    %al,(%rax)
    cdd7:	00 40 ce             	add    %al,-0x32(%rax)
	...

000000000000ce40 <t81>:
    ce40:	00 00                	add    %al,(%rax)
    ce42:	00 00                	add    %al,(%rax)
    ce44:	51                   	push   %rcx
	...
    cecd:	00 00                	add    %al,(%rax)
    cecf:	00 20                	add    %ah,(%rax)
    ced1:	cf                   	iret
	...

000000000000cf20 <t82>:
    cf20:	00 00                	add    %al,(%rax)
    cf22:	00 00                	add    %al,(%rax)
    cf24:	52                   	push   %rdx
	...
    cf65:	00 00                	add    %al,(%rax)
    cf67:	00 a0 7c 00 00 00    	add    %ah,0x7c(%rax)
	...

000000000000d000 <t91>:
    d000:	00 00                	add    %al,(%rax)
    d002:	00 00                	add    %al,(%rax)
    d004:	5b                   	pop    %rbx
    d005:	00 00                	add    %al,(%rax)
    d007:	00 e0                	add    %ah,%al
    d009:	d0 00                	rolb   (%rax)
	...

000000000000d0e0 <t92>:
    d0e0:	00 00                	add    %al,(%rax)
    d0e2:	00 00                	add    %al,(%rax)
    d0e4:	5c                   	pop    %rsp
	...
    d16d:	00 00                	add    %al,(%rax)
    d16f:	00 c0                	add    %al,%al
    d171:	d1 00                	roll   (%rax)
	...

000000000000d1c0 <t93>:
    d1c0:	00 00                	add    %al,(%rax)
    d1c2:	00 00                	add    %al,(%rax)
    d1c4:	5d                   	pop    %rbp
	...
    d205:	00 00                	add    %al,(%rax)
    d207:	00 80 7d 00 00 00    	add    %al,0x7d(%rax)
	...

000000000000d2a0 <t133>:
    d2a0:	00 00                	add    %al,(%rax)
    d2a2:	00 00                	add    %al,(%rax)
    d2a4:	85 00                	test   %eax,(%rax)
	...
    d2f6:	00 00                	add    %al,(%rax)
    d2f8:	80 d3 00             	adc    $0x0,%bl
	...

000000000000d380 <t134>:
    d380:	00 00                	add    %al,(%rax)
    d382:	00 00                	add    %al,(%rax)
    d384:	86 00                	xchg   %al,(%rax)
	...
    d426:	00 00                	add    %al,(%rax)
    d428:	60                   	(bad)
    d429:	d4                   	(bad)
	...

000000000000d460 <t135>:
    d460:	00 00                	add    %al,(%rax)
    d462:	00 00                	add    %al,(%rax)
    d464:	87 00                	xchg   %eax,(%rax)
	...
    d4ee:	00 00                	add    %al,(%rax)
    d4f0:	40 d5                	rex (bad)
	...

000000000000d540 <t136>:
    d540:	00 00                	add    %al,(%rax)
    d542:	00 00                	add    %al,(%rax)
    d544:	88 00                	mov    %al,(%rax)
	...
    d566:	00 00                	add    %al,(%rax)
    d568:	20 d6                	and    %dl,%dh
	...

000000000000d620 <t137>:
    d620:	00 00                	add    %al,(%rax)
    d622:	00 00                	add    %al,(%rax)
    d624:	89 00                	mov    %eax,(%rax)
	...
    d666:	00 00                	add    %al,(%rax)
    d668:	60                   	(bad)
    d669:	7e 00                	jle    d66b <t137+0x4b>
	...

000000000000d700 <t1>:
    d700:	00 00                	add    %al,(%rax)
    d702:	00 00                	add    %al,(%rax)
    d704:	01 00                	add    %eax,(%rax)
	...
    d78e:	00 00                	add    %al,(%rax)
    d790:	e0 d7                	loopne d769 <t1+0x69>
	...

000000000000d7e0 <t2>:
    d7e0:	00 00                	add    %al,(%rax)
    d7e2:	00 00                	add    %al,(%rax)
    d7e4:	02 00                	add    (%rax),%al
	...
    d806:	00 00                	add    %al,(%rax)
    d808:	20 dd                	and    %bl,%ch
	...
    d826:	00 00                	add    %al,(%rax)
    d828:	c0 d8 00             	rcr    $0x0,%al
	...

000000000000d8c0 <t3>:
    d8c0:	00 00                	add    %al,(%rax)
    d8c2:	00 00                	add    %al,(%rax)
    d8c4:	03 00                	add    (%rax),%eax
	...
    d8e6:	00 00                	add    %al,(%rax)
    d8e8:	a0 d9 00 00 00 00 00 	movabs 0xd9,%al
    d8ef:	00 00 
	...

000000000000d9a0 <t4>:
    d9a0:	00 00                	add    %al,(%rax)
    d9a2:	00 00                	add    %al,(%rax)
    d9a4:	04 00                	add    $0x0,%al
	...
    da4e:	00 00                	add    %al,(%rax)
    da50:	80 da 00             	sbb    $0x0,%dl
	...

000000000000da80 <t5>:
    da80:	00 00                	add    %al,(%rax)
    da82:	00 00                	add    %al,(%rax)
    da84:	05 00 00 00 00       	add    $0x0,%eax
	...
    daf5:	00 00                	add    %al,(%rax)
    daf7:	00 60 db             	add    %ah,-0x25(%rax)
	...

000000000000db60 <t6>:
    db60:	00 00                	add    %al,(%rax)
    db62:	00 00                	add    %al,(%rax)
    db64:	06                   	(bad)
	...
    dc05:	00 00                	add    %al,(%rax)
    dc07:	00 40 dc             	add    %al,-0x24(%rax)
	...

000000000000dc40 <t7>:
    dc40:	00 00                	add    %al,(%rax)
    dc42:	00 00                	add    %al,(%rax)
    dc44:	07                   	(bad)
	...
    dcd5:	00 00                	add    %al,(%rax)
    dcd7:	00 40 7f             	add    %al,0x7f(%rax)
	...

000000000000dd20 <t127>:
    dd20:	00 00                	add    %al,(%rax)
    dd22:	00 00                	add    %al,(%rax)
    dd24:	7f 00                	jg     dd26 <t127+0x6>
	...
    dd46:	00 00                	add    %al,(%rax)
    dd48:	00 de                	add    %bl,%dh
	...

000000000000de00 <t128>:
    de00:	00 00                	add    %al,(%rax)
    de02:	00 00                	add    %al,(%rax)
    de04:	80 00 00             	addb   $0x0,(%rax)
	...
    de9f:	00 e0                	add    %ah,%al
    dea1:	de 00                	fiadds (%rax)
	...

000000000000dee0 <t129>:
    dee0:	00 00                	add    %al,(%rax)
    dee2:	00 00                	add    %al,(%rax)
    dee4:	81 00 00 00 00 00    	addl   $0x0,(%rax)
	...
    df26:	00 00                	add    %al,(%rax)
    df28:	c0 df 00             	rcr    $0x0,%bh
	...

000000000000dfc0 <t130>:
    dfc0:	00 00                	add    %al,(%rax)
    dfc2:	00 00                	add    %al,(%rax)
    dfc4:	82                   	(bad)
	...
    e02d:	00 00                	add    %al,(%rax)
    e02f:	00 a0 e0 00 00 00    	add    %ah,0xe0(%rax)
	...

000000000000e0a0 <t131>:
    e0a0:	00 00                	add    %al,(%rax)
    e0a2:	00 00                	add    %al,(%rax)
    e0a4:	83 00 00             	addl   $0x0,(%rax)
	...
    e0d7:	00 20                	add    %ah,(%rax)
    e0d9:	80 00 00             	addb   $0x0,(%rax)
	...

000000000000e180 <t139>:
    e180:	00 00                	add    %al,(%rax)
    e182:	00 00                	add    %al,(%rax)
    e184:	8b 00                	mov    (%rax),%eax
	...
    e20e:	00 00                	add    %al,(%rax)
    e210:	60                   	(bad)
    e211:	e2 00                	loop   e213 <t139+0x93>
	...

000000000000e260 <t140>:
    e260:	00 00                	add    %al,(%rax)
    e262:	00 00                	add    %al,(%rax)
    e264:	8c 00                	mov    %es,(%rax)
    e266:	00 00                	add    %al,(%rax)
    e268:	e0 e5                	loopne e24f <t139+0xcf>
	...
    e2d6:	00 00                	add    %al,(%rax)
    e2d8:	40 e3 00             	rex jrcxz e2db <t140+0x7b>
	...

000000000000e340 <t141>:
    e340:	00 00                	add    %al,(%rax)
    e342:	00 00                	add    %al,(%rax)
    e344:	8d 00                	lea    (%rax),%eax
	...
    e40e:	00 00                	add    %al,(%rax)
    e410:	20 e4                	and    %ah,%ah
	...

000000000000e420 <t142>:
    e420:	00 00                	add    %al,(%rax)
    e422:	00 00                	add    %al,(%rax)
    e424:	8e 00                	mov    (%rax),%es
	...
    e446:	00 00                	add    %al,(%rax)
    e448:	00 e5                	add    %ah,%ch
	...

000000000000e500 <t143>:
    e500:	00 00                	add    %al,(%rax)
    e502:	00 00                	add    %al,(%rax)
    e504:	8f 00                	pop    (%rax)
	...
    e56e:	00 00                	add    %al,(%rax)
    e570:	00 81 00 00 00 00    	add    %al,0x0(%rcx)
	...

000000000000e5e0 <t170>:
    e5e0:	00 00                	add    %al,(%rax)
    e5e2:	00 00                	add    %al,(%rax)
    e5e4:	aa                   	stos   %al,%es:(%rdi)
	...
    e5f5:	00 00                	add    %al,(%rax)
    e5f7:	00 c0                	add    %al,%al
    e5f9:	e6 00                	out    %al,$0x0
	...

000000000000e6c0 <t171>:
    e6c0:	00 00                	add    %al,(%rax)
    e6c2:	00 00                	add    %al,(%rax)
    e6c4:	ab                   	stos   %eax,%es:(%rdi)
	...
    e75d:	00 00                	add    %al,(%rax)
    e75f:	00 a0 e7 00 00 00    	add    %ah,0xe7(%rax)
	...

000000000000e7a0 <t172>:
    e7a0:	00 00                	add    %al,(%rax)
    e7a2:	00 00                	add    %al,(%rax)
    e7a4:	ac                   	lods   %ds:(%rsi),%al
	...
    e845:	00 00                	add    %al,(%rax)
    e847:	00 80 e8 00 00 00    	add    %al,0xe8(%rax)
	...

000000000000e880 <t173>:
    e880:	00 00                	add    %al,(%rax)
    e882:	00 00                	add    %al,(%rax)
    e884:	ad                   	lods   %ds:(%rsi),%eax
	...
    e90d:	00 00                	add    %al,(%rax)
    e90f:	00 60 e9             	add    %ah,-0x17(%rax)
	...

000000000000e960 <t174>:
    e960:	00 00                	add    %al,(%rax)
    e962:	00 00                	add    %al,(%rax)
    e964:	ae                   	scas   %es:(%rdi),%al
	...
    e985:	00 00                	add    %al,(%rax)
    e987:	00 e0                	add    %ah,%al
    e989:	81 00 00 00 00 00    	addl   $0x0,(%rax)
	...

000000000000ea40 <t35>:
    ea40:	00 00                	add    %al,(%rax)
    ea42:	00 00                	add    %al,(%rax)
    ea44:	23 00                	and    (%rax),%eax
    ea46:	00 00                	add    %al,(%rax)
    ea48:	20 f2                	and    %dh,%dl
	...
    ea66:	00 00                	add    %al,(%rax)
    ea68:	20 eb                	and    %ch,%bl
	...

000000000000eb20 <t53>:
    eb20:	00 00                	add    %al,(%rax)
    eb22:	00 00                	add    %al,(%rax)
    eb24:	35 00 00 00 00       	xor    $0x0,%eax
	...
    eb41:	ec                   	in     (%dx),%al
	...

000000000000ec00 <t54>:
    ec00:	00 00                	add    %al,(%rax)
    ec02:	00 00                	add    %al,(%rax)
    ec04:	36 00 00             	ss add %al,(%rax)
	...
    ec47:	00 e0                	add    %ah,%al
    ec49:	ec                   	in     (%dx),%al
	...

000000000000ece0 <t55>:
    ece0:	00 00                	add    %al,(%rax)
    ece2:	00 00                	add    %al,(%rax)
    ece4:	37                   	(bad)
	...
    ecf5:	00 00                	add    %al,(%rax)
    ecf7:	00 c0                	add    %al,%al
    ecf9:	ed                   	in     (%dx),%eax
	...

000000000000edc0 <t56>:
    edc0:	00 00                	add    %al,(%rax)
    edc2:	00 00                	add    %al,(%rax)
    edc4:	38 00                	cmp    %al,(%rax)
    edc6:	00 00                	add    %al,(%rax)
    edc8:	a0 ee 00 00 00 00 00 	movabs 0xee,%al
    edcf:	00 00 
	...

000000000000eea0 <t57>:
    eea0:	00 00                	add    %al,(%rax)
    eea2:	00 00                	add    %al,(%rax)
    eea4:	39 00                	cmp    %eax,(%rax)
	...
    ef3e:	00 00                	add    %al,(%rax)
    ef40:	80 ef 00             	sub    $0x0,%bh
	...

000000000000ef80 <t58>:
    ef80:	00 00                	add    %al,(%rax)
    ef82:	00 00                	add    %al,(%rax)
    ef84:	3a 00                	cmp    (%rax),%al
	...
    efc6:	00 00                	add    %al,(%rax)
    efc8:	60                   	(bad)
    efc9:	f0 00 00             	lock add %al,(%rax)
	...

000000000000f060 <t59>:
    f060:	00 00                	add    %al,(%rax)
    f062:	00 00                	add    %al,(%rax)
    f064:	3b 00                	cmp    (%rax),%eax
	...
    f0d6:	00 00                	add    %al,(%rax)
    f0d8:	40 f1                	rex int1
	...

000000000000f140 <t60>:
    f140:	00 00                	add    %al,(%rax)
    f142:	00 00                	add    %al,(%rax)
    f144:	3c 00                	cmp    $0x0,%al
	...
    f1ae:	00 00                	add    %al,(%rax)
    f1b0:	c0 82 00 00 00 00 00 	rolb   $0x0,0x0(%rdx)
	...

000000000000f220 <t36>:
    f220:	00 00                	add    %al,(%rax)
    f222:	00 00                	add    %al,(%rax)
    f224:	24 00                	and    $0x0,%al
	...
    f28e:	00 00                	add    %al,(%rax)
    f290:	00 f3                	add    %dh,%bl
	...

000000000000f300 <t37>:
    f300:	00 00                	add    %al,(%rax)
    f302:	00 00                	add    %al,(%rax)
    f304:	25 00 00 00 00       	and    $0x0,%eax
	...
    f31d:	00 00                	add    %al,(%rax)
    f31f:	00 40 f8             	add    %al,-0x8(%rax)
	...
    f39e:	00 00                	add    %al,(%rax)
    f3a0:	e0 f3                	loopne f395 <t37+0x95>
	...

000000000000f3e0 <t38>:
    f3e0:	00 00                	add    %al,(%rax)
    f3e2:	00 00                	add    %al,(%rax)
    f3e4:	26 00 00             	es add %al,(%rax)
    f3e7:	00 c0                	add    %al,%al
    f3e9:	f4                   	hlt
	...

000000000000f4c0 <t39>:
    f4c0:	00 00                	add    %al,(%rax)
    f4c2:	00 00                	add    %al,(%rax)
    f4c4:	27                   	(bad)
	...
    f51d:	00 00                	add    %al,(%rax)
    f51f:	00 a0 f5 00 00 00    	add    %ah,0xf5(%rax)
	...

000000000000f5a0 <t40>:
    f5a0:	00 00                	add    %al,(%rax)
    f5a2:	00 00                	add    %al,(%rax)
    f5a4:	28 00                	sub    %al,(%rax)
	...
    f5e6:	00 00                	add    %al,(%rax)
    f5e8:	80 f6 00             	xor    $0x0,%dh
	...

000000000000f680 <t41>:
    f680:	00 00                	add    %al,(%rax)
    f682:	00 00                	add    %al,(%rax)
    f684:	29 00                	sub    %eax,(%rax)
	...
    f6f6:	00 00                	add    %al,(%rax)
    f6f8:	60                   	(bad)
    f6f9:	f7 00 00 00 00 00    	testl  $0x0,(%rax)
	...

000000000000f760 <t42>:
    f760:	00 00                	add    %al,(%rax)
    f762:	00 00                	add    %al,(%rax)
    f764:	2a 00                	sub    (%rax),%al
	...
    f7ce:	00 00                	add    %al,(%rax)
    f7d0:	a0 83 00 00 00 00 00 	movabs 0x83,%al
    f7d7:	00 00 
	...

000000000000f840 <t107>:
    f840:	00 00                	add    %al,(%rax)
    f842:	00 00                	add    %al,(%rax)
    f844:	6b 00 00             	imul   $0x0,(%rax),%eax
	...
    f867:	00 20                	add    %ah,(%rax)
    f869:	f9                   	stc
	...

000000000000f920 <t108>:
    f920:	00 00                	add    %al,(%rax)
    f922:	00 00                	add    %al,(%rax)
    f924:	6c                   	insb   (%dx),%es:(%rdi)
	...
    f981:	fa                   	cli
	...

000000000000fa00 <t109>:
    fa00:	00 00                	add    %al,(%rax)
    fa02:	00 00                	add    %al,(%rax)
    fa04:	6d                   	insl   (%dx),%es:(%rdi)
	...
    fa45:	00 00                	add    %al,(%rax)
    fa47:	00 e0                	add    %ah,%al
    fa49:	fa                   	cli
	...

000000000000fae0 <t110>:
    fae0:	00 00                	add    %al,(%rax)
    fae2:	00 00                	add    %al,(%rax)
    fae4:	6e                   	outsb  %ds:(%rsi),(%dx)
	...
    fb55:	00 00                	add    %al,(%rax)
    fb57:	00 c0                	add    %al,%al
    fb59:	fb                   	sti
	...

000000000000fbc0 <t111>:
    fbc0:	00 00                	add    %al,(%rax)
    fbc2:	00 00                	add    %al,(%rax)
    fbc4:	6f                   	outsl  %ds:(%rsi),(%dx)
	...
    fc2d:	00 00                	add    %al,(%rax)
    fc2f:	00 80 84 00 00 00    	add    %al,0x84(%rax)
	...

000000000000fca0 <t26>:
    fca0:	00 00                	add    %al,(%rax)
    fca2:	00 00                	add    %al,(%rax)
    fca4:	1a 00                	sbb    (%rax),%al
	...
    fcc6:	00 00                	add    %al,(%rax)
    fcc8:	80 0b 01             	orb    $0x1,(%rbx)
	...
    fd2f:	00 40 06             	add    %al,0x6(%rax)
    fd32:	01 00                	add    %eax,(%rax)
	...
    fd48:	20 00                	and    %al,(%rax)
    fd4a:	01 00                	add    %eax,(%rax)
	...
    fd60:	80 fd 00             	cmp    $0x0,%ch
	...

000000000000fd80 <t44>:
    fd80:	00 00                	add    %al,(%rax)
    fd82:	00 00                	add    %al,(%rax)
    fd84:	2c 00                	sub    $0x0,%al
	...
    fdc6:	00 00                	add    %al,(%rax)
    fdc8:	60                   	(bad)
    fdc9:	fe 00                	incb   (%rax)
	...

000000000000fe60 <t45>:
    fe60:	00 00                	add    %al,(%rax)
    fe62:	00 00                	add    %al,(%rax)
    fe64:	2d 00 00 00 00       	sub    $0x0,%eax
	...
    ff05:	00 00                	add    %al,(%rax)
    ff07:	00 40 ff             	add    %al,-0x1(%rax)
	...

000000000000ff40 <t46>:
    ff40:	00 00                	add    %al,(%rax)
    ff42:	00 00                	add    %al,(%rax)
    ff44:	2e 00 00             	cs add %al,(%rax)
	...
    ffa7:	00 60 85             	add    %ah,-0x7b(%rax)
	...

0000000000010020 <t27>:
   10020:	00 00                	add    %al,(%rax)
   10022:	00 00                	add    %al,(%rax)
   10024:	1b 00                	sbb    (%rax),%eax
	...
   100be:	00 00                	add    %al,(%rax)
   100c0:	00 01                	add    %al,(%rcx)
   100c2:	01 00                	add    %eax,(%rax)
	...

0000000000010100 <t28>:
   10100:	00 00                	add    %al,(%rax)
   10102:	00 00                	add    %al,(%rax)
   10104:	1c 00                	sbb    $0x0,%al
	...
   1013e:	00 00                	add    %al,(%rax)
   10140:	e0 01                	loopne 10143 <t28+0x43>
   10142:	01 00                	add    %eax,(%rax)
	...

00000000000101e0 <t29>:
   101e0:	00 00                	add    %al,(%rax)
   101e2:	00 00                	add    %al,(%rax)
   101e4:	1d 00 00 00 00       	sbb    $0x0,%eax
	...
   10255:	00 00                	add    %al,(%rax)
   10257:	00 c0                	add    %al,%al
   10259:	02 01                	add    (%rcx),%al
	...

00000000000102c0 <t30>:
   102c0:	00 00                	add    %al,(%rax)
   102c2:	00 00                	add    %al,(%rax)
   102c4:	1e                   	(bad)
	...
   1034d:	00 00                	add    %al,(%rax)
   1034f:	00 a0 03 01 00 00    	add    %ah,0x103(%rax)
	...

00000000000103a0 <t31>:
   103a0:	00 00                	add    %al,(%rax)
   103a2:	00 00                	add    %al,(%rax)
   103a4:	1f                   	(bad)
	...
   103e5:	00 00                	add    %al,(%rax)
   103e7:	00 80 04 01 00 00    	add    %al,0x104(%rax)
	...

0000000000010480 <t32>:
   10480:	00 00                	add    %al,(%rax)
   10482:	00 00                	add    %al,(%rax)
   10484:	20 00                	and    %al,(%rax)
	...
   1054e:	00 00                	add    %al,(%rax)
   10550:	60                   	(bad)
   10551:	05 01 00 00 00       	add    $0x1,%eax
	...

0000000000010560 <t33>:
   10560:	00 00                	add    %al,(%rax)
   10562:	00 00                	add    %al,(%rax)
   10564:	21 00                	and    %eax,(%rax)
	...
   10586:	00 00                	add    %al,(%rax)
   10588:	40 86 00             	rex xchg %al,(%rax)
	...

0000000000010640 <t48>:
   10640:	00 00                	add    %al,(%rax)
   10642:	00 00                	add    %al,(%rax)
   10644:	30 00                	xor    %al,(%rax)
	...
   10656:	00 00                	add    %al,(%rax)
   10658:	20 07                	and    %al,(%rdi)
   1065a:	01 00                	add    %eax,(%rax)
	...

0000000000010720 <t49>:
   10720:	00 00                	add    %al,(%rax)
   10722:	00 00                	add    %al,(%rax)
   10724:	31 00                	xor    %eax,(%rax)
   10726:	00 00                	add    %al,(%rax)
   10728:	00 08                	add    %cl,(%rax)
   1072a:	01 00                	add    %eax,(%rax)
	...

0000000000010800 <t50>:
   10800:	00 00                	add    %al,(%rax)
   10802:	00 00                	add    %al,(%rax)
   10804:	32 00                	xor    (%rax),%al
	...
   10826:	00 00                	add    %al,(%rax)
   10828:	a0 0a 01 00 00 00 00 	movabs 0x10a,%al
   1082f:	00 00 
	...
   1083d:	00 00                	add    %al,(%rax)
   1083f:	00 c0                	add    %al,%al
   10841:	09 01                	or     %eax,(%rcx)
	...
   1086f:	00 e0                	add    %ah,%al
   10871:	08 01                	or     %al,(%rcx)
	...

00000000000108e0 <t51>:
   108e0:	00 00                	add    %al,(%rax)
   108e2:	00 00                	add    %al,(%rax)
   108e4:	33 00                	xor    (%rax),%eax
   108e6:	00 00                	add    %al,(%rax)
   108e8:	20 87 00 00 00 00    	and    %al,0x0(%rdi)
	...

00000000000109c0 <t89>:
   109c0:	00 00                	add    %al,(%rax)
   109c2:	00 00                	add    %al,(%rax)
   109c4:	59                   	pop    %rcx
	...
   10a71:	88 00                	mov    %al,(%rax)
	...

0000000000010aa0 <t113>:
   10aa0:	00 00                	add    %al,(%rax)
   10aa2:	00 00                	add    %al,(%rax)
   10aa4:	71 00                	jno    10aa6 <t113+0x6>
   10aa6:	00 00                	add    %al,(%rax)
   10aa8:	e0 88                	loopne 10a32 <t89+0x72>
	...

0000000000010b80 <t154>:
   10b80:	00 00                	add    %al,(%rax)
   10b82:	00 00                	add    %al,(%rax)
   10b84:	9a                   	(bad)
	...
   10bb5:	00 00                	add    %al,(%rax)
   10bb7:	00 60 0c             	add    %ah,0xc(%rax)
   10bba:	01 00                	add    %eax,(%rax)
	...

0000000000010c60 <t155>:
   10c60:	00 00                	add    %al,(%rax)
   10c62:	00 00                	add    %al,(%rax)
   10c64:	9b                   	fwait
	...
   10cbd:	00 00                	add    %al,(%rax)
   10cbf:	00 40 0d             	add    %al,0xd(%rax)
   10cc2:	01 00                	add    %eax,(%rax)
	...

0000000000010d40 <t156>:
   10d40:	00 00                	add    %al,(%rax)
   10d42:	00 00                	add    %al,(%rax)
   10d44:	9c                   	pushf
	...
   10d65:	00 00                	add    %al,(%rax)
   10d67:	00 20                	add    %ah,(%rax)
   10d69:	0e                   	(bad)
   10d6a:	01 00                	add    %eax,(%rax)
	...

0000000000010e20 <t157>:
   10e20:	00 00                	add    %al,(%rax)
   10e22:	00 00                	add    %al,(%rax)
   10e24:	9d                   	popf
	...
   10eb9:	0f 01 00             	sgdt   (%rax)
	...

0000000000010f00 <t158>:
   10f00:	00 00                	add    %al,(%rax)
   10f02:	00 00                	add    %al,(%rax)
   10f04:	9e                   	sahf
	...
   10f25:	00 00                	add    %al,(%rax)
   10f27:	00 e0                	add    %ah,%al
   10f29:	0f 01 00             	sgdt   (%rax)
	...

0000000000010fe0 <t159>:
   10fe0:	00 00                	add    %al,(%rax)
   10fe2:	00 00                	add    %al,(%rax)
   10fe4:	9f                   	lahf
	...
   11005:	00 00                	add    %al,(%rax)
   11007:	00 c0                	add    %al,%al
   11009:	10 01                	adc    %al,(%rcx)
	...

00000000000110c0 <t160>:
   110c0:	00 00                	add    %al,(%rax)
   110c2:	00 00                	add    %al,(%rax)
   110c4:	a0 00 00 00 00 00 00 	movabs 0x0,%al
   110cb:	00 00 
	...
   11115:	00 00                	add    %al,(%rax)
   11117:	00 a0 11 01 00 00    	add    %ah,0x111(%rax)
	...

00000000000111a0 <t161>:
   111a0:	00 00                	add    %al,(%rax)
   111a2:	00 00                	add    %al,(%rax)
   111a4:	a1 00 00 00 00 00 00 	movabs 0x0,%eax
   111ab:	00 00 
	...
   111c5:	00 00                	add    %al,(%rax)
   111c7:	00 80 12 01 00 00    	add    %al,0x112(%rax)
	...

0000000000011280 <t162>:
   11280:	00 00                	add    %al,(%rax)
   11282:	00 00                	add    %al,(%rax)
   11284:	a2 00 00 00 00 00 00 	movabs %al,0x0
   1128b:	00 00 
	...
   1130d:	00 00                	add    %al,(%rax)
   1130f:	00 c0                	add    %al,%al
   11311:	89 00                	mov    %eax,(%rax)
	...

0000000000011360 <node1>:
   11360:	27                   	(bad)
   11361:	02 00                	add    (%rax),%al
   11363:	00 01                	add    %al,(%rcx)
   11365:	00 00                	add    %al,(%rax)
   11367:	00 70 13             	add    %dh,0x13(%rax)
   1136a:	01 00                	add    %eax,(%rax)
   1136c:	00 00                	add    %al,(%rax)
	...

0000000000011370 <node2>:
   11370:	3b 03                	cmp    (%rbx),%eax
   11372:	00 00                	add    %al,(%rax)
   11374:	02 00                	add    (%rax),%al
   11376:	00 00                	add    %al,(%rax)
   11378:	80 13 01             	adcb   $0x1,(%rbx)
   1137b:	00 00                	add    %al,(%rax)
   1137d:	00 00                	add    %al,(%rax)
	...

0000000000011380 <node3>:
   11380:	3e 00 00             	ds add %al,(%rax)
   11383:	00 03                	add    %al,(%rbx)
   11385:	00 00                	add    %al,(%rax)
   11387:	00 90 13 01 00 00    	add    %dl,0x113(%rax)
   1138d:	00 00                	add    %al,(%rax)
	...

0000000000011390 <node4>:
   11390:	8e 02                	mov    (%rdx),%es
   11392:	00 00                	add    %al,(%rax)
   11394:	04 00                	add    $0x0,%al
   11396:	00 00                	add    %al,(%rax)
   11398:	a0 13 01 00 00 00 00 	movabs 0xf300000000000113,%al
   1139f:	00  

00000000000113a0 <node5>:
   113a0:	f3 00 00             	repz add %al,(%rax)
   113a3:	00 05 00 00 00 a0    	add    %al,-0x60000000(%rip)        # ffffffffa00113a9 <_end+0xffffffff9ffff1c9>
   113a9:	8a 00                	mov    (%rax),%al
	...

00000000000113c0 <host_table>:
   113c0:	5c                   	pop    %rsp
   113c1:	46 00 00             	rex.RX add %r8b,(%rax)
   113c4:	00 00                	add    %al,(%rax)
   113c6:	00 00                	add    %al,(%rax)
   113c8:	61                   	(bad)
   113c9:	46 00 00             	rex.RX add %r8b,(%rax)
	...

Disassembly of section .bss:

00000000000117c0 <stdout@GLIBC_2.2.5>:
	...

00000000000117d0 <stdin@GLIBC_2.2.5>:
	...

00000000000117e0 <stderr@GLIBC_2.2.5>:
	...

00000000000117e8 <completed.0>:
	...

00000000000117f0 <infile>:
	...

0000000000011800 <scratch>:
	...

0000000000011878 <num_input_strings>:
	...

0000000000011880 <input_strings>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 47 4e             	sub    %al,0x4e(%rdi)
   8:	55                   	push   %rbp
   9:	29 20                	sub    %esp,(%rax)
   b:	31 31                	xor    %esi,(%rcx)
   d:	2e 31 2e             	cs xor %ebp,(%rsi)
  10:	30 00                	xor    %al,(%rax)

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	2c 00                	sub    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	e9 22 00 00 00       	jmp    37 <__abi_tag-0x365>
  15:	00 00                	add    %al,(%rax)
  17:	00 50 01             	add    %dl,0x1(%rax)
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	1f                   	(bad)
   1:	06                   	(bad)
   2:	00 00                	add    %al,(%rax)
   4:	05 00 01 08 00       	add    $0x80100,%eax
   9:	00 00                	add    %al,(%rax)
   b:	00 0f                	add    %cl,(%rdi)
   d:	2c 02                	sub    $0x2,%al
   f:	00 00                	add    %al,(%rax)
  11:	1d 00 00 00 00       	sbb    $0x0,%eax
  16:	07                   	(bad)
  17:	00 00                	add    %al,(%rax)
  19:	00 e9                	add    %ch,%cl
  1b:	22 00                	and    (%rax),%al
  1d:	00 00                	add    %al,(%rax)
  1f:	00 00                	add    %al,(%rax)
  21:	00 50 01             	add    %dl,0x1(%rax)
	...
  2c:	00 00                	add    %al,(%rax)
  2e:	09 23                	or     %esp,(%rbx)
  30:	00 00                	add    %al,(%rax)
  32:	00 02                	add    %al,(%rdx)
  34:	d1 17                	rcll   (%rdi)
  36:	3a 00                	cmp    (%rax),%al
  38:	00 00                	add    %al,(%rax)
  3a:	05 08 07 46 00       	add    $0x460708,%eax
  3f:	00 00                	add    %al,(%rax)
  41:	05 04 07 4b 00       	add    $0x4b0704,%eax
  46:	00 00                	add    %al,(%rax)
  48:	10 08                	adc    %cl,(%rax)
  4a:	05 01 08 82 01       	add    $0x1820801,%eax
  4f:	00 00                	add    %al,(%rax)
  51:	05 02 07 0d 01       	add    $0x10d0702,%eax
  56:	00 00                	add    %al,(%rax)
  58:	05 01 06 84 01       	add    $0x1840601,%eax
  5d:	00 00                	add    %al,(%rax)
  5f:	05 02 05 90 01       	add    $0x1900502,%eax
  64:	00 00                	add    %al,(%rax)
  66:	11 04 05 69 6e 74 00 	adc    %eax,0x746e69(,%rax,1)
  6d:	05 08 05 67 00       	add    $0x670508,%eax
  72:	00 00                	add    %al,(%rax)
  74:	09 07                	or     %eax,(%rdi)
  76:	00 00                	add    %al,(%rax)
  78:	00 03                	add    %al,(%rbx)
  7a:	98                   	cwtl
  7b:	19 6d 00             	sbb    %ebp,0x0(%rbp)
  7e:	00 00                	add    %al,(%rax)
  80:	09 c2                	or     %eax,%edx
  82:	01 00                	add    %eax,(%rax)
  84:	00 03                	add    %al,(%rbx)
  86:	99                   	cltd
  87:	1b 6d 00             	sbb    0x0(%rbp),%ebp
  8a:	00 00                	add    %al,(%rax)
  8c:	07                   	(bad)
  8d:	91                   	xchg   %eax,%ecx
  8e:	00 00                	add    %al,(%rax)
  90:	00 05 01 06 8b 01    	add    %al,0x18b0601(%rip)        # 18b0697 <_end+0x189e4b7>
  96:	00 00                	add    %al,(%rax)
  98:	12 91 00 00 00 13    	adc    0x13000000(%rcx),%dl
  9e:	6a 01                	push   $0x1
  a0:	00 00                	add    %al,(%rax)
  a2:	d8 04 31             	fadds  (%rcx,%rsi,1)
  a5:	08 07                	or     %al,(%rdi)
  a7:	02 00                	add    (%rax),%al
  a9:	00 01                	add    %al,(%rcx)
  ab:	93                   	xchg   %eax,%ebx
  ac:	00 00                	add    %al,(%rax)
  ae:	00 33                	add    %dh,(%rbx)
  b0:	07                   	(bad)
  b1:	66 00 00             	data16 add %al,(%rax)
  b4:	00 00                	add    %al,(%rax)
  b6:	01 0f                	add    %ecx,(%rdi)
  b8:	00 00                	add    %al,(%rax)
  ba:	00 36                	add    %dh,(%rsi)
  bc:	09 8c 00 00 00 08 01 	or     %ecx,0x1080000(%rax,%rax,1)
  c3:	86 00                	xchg   %al,(%rax)
  c5:	00 00                	add    %al,(%rax)
  c7:	37                   	(bad)
  c8:	09 8c 00 00 00 10 01 	or     %ecx,0x1100000(%rax,%rax,1)
  cf:	cc                   	int3
  d0:	01 00                	add    %eax,(%rax)
  d2:	00 38                	add    %bh,(%rax)
  d4:	09 8c 00 00 00 18 01 	or     %ecx,0x1180000(%rax,%rax,1)
  db:	8a 02                	mov    (%rdx),%al
  dd:	00 00                	add    %al,(%rax)
  df:	39 09                	cmp    %ecx,(%rcx)
  e1:	8c 00                	mov    %es,(%rax)
  e3:	00 00                	add    %al,(%rax)
  e5:	20 01                	and    %al,(%rcx)
  e7:	ff 00                	incl   (%rax)
  e9:	00 00                	add    %al,(%rax)
  eb:	3a 09                	cmp    (%rcx),%cl
  ed:	8c 00                	mov    %es,(%rax)
  ef:	00 00                	add    %al,(%rax)
  f1:	28 01                	sub    %al,(%rcx)
  f3:	51                   	push   %rcx
  f4:	01 00                	add    %eax,(%rax)
  f6:	00 3b                	add    %bh,(%rbx)
  f8:	09 8c 00 00 00 30 01 	or     %ecx,0x1300000(%rax,%rax,1)
  ff:	34 00                	xor    $0x0,%al
 101:	00 00                	add    %al,(%rax)
 103:	3c 09                	cmp    $0x9,%al
 105:	8c 00                	mov    %es,(%rax)
 107:	00 00                	add    %al,(%rax)
 109:	38 01                	cmp    %al,(%rcx)
 10b:	9a                   	(bad)
 10c:	00 00                	add    %al,(%rax)
 10e:	00 3d 09 8c 00 00    	add    %bh,0x8c09(%rip)        # 8d1d <t70+0x7d>
 114:	00 40 01             	add    %al,0x1(%rax)
 117:	20 01                	and    %al,(%rcx)
 119:	00 00                	add    %al,(%rax)
 11b:	40 09 8c 00 00 00 48 	rex or %ecx,0x1480000(%rax,%rax,1)
 122:	01 
 123:	62 02                	(bad)
 125:	00 00                	add    %al,(%rax)
 127:	41 09 8c 00 00 00 50 	or     %ecx,0x1500000(%r8,%rax,1)
 12e:	01 
 12f:	da 01                	fiaddl (%rcx)
 131:	00 00                	add    %al,(%rax)
 133:	42 09 8c 00 00 00 58 	or     %ecx,0x1580000(%rax,%r8,1)
 13a:	01 
 13b:	79 01                	jns    13e <__abi_tag-0x25e>
 13d:	00 00                	add    %al,(%rax)
 13f:	44 16                	rex.R (bad)
 141:	20 02                	and    %al,(%rdx)
 143:	00 00                	add    %al,(%rax)
 145:	60                   	(bad)
 146:	01 1c 00             	add    %ebx,(%rax,%rax,1)
 149:	00 00                	add    %al,(%rax)
 14b:	46 14 25             	rex.RX adc $0x25,%al
 14e:	02 00                	add    (%rax),%al
 150:	00 68 01             	add    %ch,0x1(%rax)
 153:	7e 00                	jle    155 <__abi_tag-0x247>
 155:	00 00                	add    %al,(%rax)
 157:	48 07                	rex.W (bad)
 159:	66 00 00             	data16 add %al,(%rax)
 15c:	00 70 01             	add    %dh,0x1(%rax)
 15f:	34 01                	xor    $0x1,%al
 161:	00 00                	add    %al,(%rax)
 163:	49 07                	rex.WB (bad)
 165:	66 00 00             	data16 add %al,(%rax)
 168:	00 74 01 be          	add    %dh,-0x42(%rcx,%rax,1)
 16c:	00 00                	add    %al,(%rax)
 16e:	00 4a 0b             	add    %cl,0xb(%rdx)
 171:	74 00                	je     173 <__abi_tag-0x229>
 173:	00 00                	add    %al,(%rax)
 175:	78 01                	js     178 <__abi_tag-0x224>
 177:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 178:	00 00                	add    %al,(%rax)
 17a:	00 4d 12             	add    %cl,0x12(%rbp)
 17d:	51                   	push   %rcx
 17e:	00 00                	add    %al,(%rax)
 180:	00 80 01 a8 01 00    	add    %al,0x1a801(%rax)
 186:	00 4e 0f             	add    %cl,0xf(%rsi)
 189:	58                   	pop    %rax
 18a:	00 00                	add    %al,(%rax)
 18c:	00 82 01 2a 00 00    	add    %al,0x2a01(%rdx)
 192:	00 4f 08             	add    %cl,0x8(%rdi)
 195:	2a 02                	sub    (%rdx),%al
 197:	00 00                	add    %al,(%rax)
 199:	83 01 2e             	addl   $0x2e,(%rcx)
 19c:	01 00                	add    %eax,(%rax)
 19e:	00 51 0f             	add    %dl,0xf(%rcx)
 1a1:	3a 02                	cmp    (%rdx),%al
 1a3:	00 00                	add    %al,(%rax)
 1a5:	88 01                	mov    %al,(%rcx)
 1a7:	c2 00 00             	ret    $0x0
 1aa:	00 59 0d             	add    %bl,0xd(%rcx)
 1ad:	80 00 00             	addb   $0x0,(%rax)
 1b0:	00 90 01 b5 00 00    	add    %dl,0xb501(%rax)
 1b6:	00 5b 17             	add    %bl,0x17(%rbx)
 1b9:	44 02 00             	add    (%rax),%r8b
 1bc:	00 98 01 9d 01 00    	add    %bl,0x19d01(%rax)
 1c2:	00 5c 19 4e          	add    %bl,0x4e(%rcx,%rbx,1)
 1c6:	02 00                	add    (%rax),%al
 1c8:	00 a0 01 77 02 00    	add    %ah,0x27701(%rax)
 1ce:	00 5d 14             	add    %bl,0x14(%rbp)
 1d1:	25 02 00 00 a8       	and    $0xa8000002,%eax
 1d6:	01 f2                	add    %esi,%edx
 1d8:	00 00                	add    %al,(%rax)
 1da:	00 5e 09             	add    %bl,0x9(%rsi)
 1dd:	48 00 00             	rex.W add %al,(%rax)
 1e0:	00 b0 01 e7 01 00    	add    %dh,0x1e701(%rax)
 1e6:	00 5f 0a             	add    %bl,0xa(%rdi)
 1e9:	2e 00 00             	cs add %al,(%rax)
 1ec:	00 b8 01 3c 01 00    	add    %bh,0x13c01(%rax)
 1f2:	00 60 07             	add    %ah,0x7(%rax)
 1f5:	66 00 00             	data16 add %al,(%rax)
 1f8:	00 c0                	add    %al,%al
 1fa:	01 ee                	add    %ebp,%esi
 1fc:	01 00                	add    %eax,(%rax)
 1fe:	00 62 08             	add    %ah,0x8(%rdx)
 201:	53                   	push   %rbx
 202:	02 00                	add    (%rax),%al
 204:	00 c4                	add    %al,%ah
 206:	00 09                	add    %cl,(%rcx)
 208:	6e                   	outsb  %ds:(%rsi),(%dx)
 209:	01 00                	add    %eax,(%rax)
 20b:	00 05 07 19 9d 00    	add    %al,0x9d1907(%rip)        # 9d1b18 <_end+0x9bf938>
 211:	00 00                	add    %al,(%rax)
 213:	14 5f                	adc    $0x5f,%al
 215:	01 00                	add    %eax,(%rax)
 217:	00 04 2b             	add    %al,(%rbx,%rbp,1)
 21a:	0e                   	(bad)
 21b:	0a e1                	or     %cl,%ah
 21d:	00 00                	add    %al,(%rax)
 21f:	00 07                	add    %al,(%rdi)
 221:	1b 02                	sbb    (%rdx),%eax
 223:	00 00                	add    %al,(%rax)
 225:	07                   	(bad)
 226:	9d                   	popf
 227:	00 00                	add    %al,(%rax)
 229:	00 0b                	add    %cl,(%rbx)
 22b:	91                   	xchg   %eax,%ecx
 22c:	00 00                	add    %al,(%rax)
 22e:	00 3a                	add    %bh,(%rdx)
 230:	02 00                	add    (%rax),%al
 232:	00 0c 3a             	add    %cl,(%rdx,%rdi,1)
 235:	00 00                	add    %al,(%rax)
 237:	00 00                	add    %al,(%rax)
 239:	00 07                	add    %al,(%rdi)
 23b:	13 02                	adc    (%rdx),%eax
 23d:	00 00                	add    %al,(%rax)
 23f:	0a b2 00 00 00 07    	or     0x7000000(%rdx),%dh
 245:	3f                   	(bad)
 246:	02 00                	add    (%rax),%al
 248:	00 0a                	add    %cl,(%rdx)
 24a:	9a                   	(bad)
 24b:	01 00                	add    %eax,(%rax)
 24d:	00 07                	add    %al,(%rdi)
 24f:	49 02 00             	rex.WB add (%r8),%al
 252:	00 0b                	add    %cl,(%rbx)
 254:	91                   	xchg   %eax,%ecx
 255:	00 00                	add    %al,(%rax)
 257:	00 63 02             	add    %ah,0x2(%rbx)
 25a:	00 00                	add    %al,(%rax)
 25c:	0c 3a                	or     $0x3a,%al
 25e:	00 00                	add    %al,(%rax)
 260:	00 13                	add    %dl,(%rbx)
 262:	00 15 ec 00 00 00    	add    %dl,0xec(%rip)        # 354 <__abi_tag-0x48>
 268:	06                   	(bad)
 269:	89 0e                	mov    %ecx,(%rsi)
 26b:	6f                   	outsl  %ds:(%rsi),(%dx)
 26c:	02 00                	add    (%rax),%al
 26e:	00 07                	add    %al,(%rdi)
 270:	07                   	(bad)
 271:	02 00                	add    (%rax),%al
 273:	00 05 08 05 62 00    	add    %al,0x620508(%rip)        # 620781 <_end+0x60e5a1>
 279:	00 00                	add    %al,(%rax)
 27b:	05 08 07 41 00       	add    $0x410708,%eax
 280:	00 00                	add    %al,(%rax)
 282:	16                   	(bad)
 283:	ca 00 00             	lret   $0x0
 286:	00 01                	add    %al,(%rcx)
 288:	22 07                	and    (%rdi),%al
 28a:	6f                   	outsl  %ds:(%rsi),(%dx)
 28b:	02 00                	add    (%rax),%al
 28d:	00 09                	add    %cl,(%rcx)
 28f:	03 f0                	add    %eax,%esi
 291:	17                   	(bad)
 292:	01 00                	add    %eax,(%rax)
 294:	00 00                	add    %al,(%rax)
 296:	00 00                	add    %al,(%rax)
 298:	08 24 02             	or     %ah,(%rdx,%rax,1)
 29b:	00 00                	add    %al,(%rax)
 29d:	09 a8 02 00 00 06    	or     %ebp,0x6000002(%rax)
 2a3:	8c 00                	mov    %es,(%rax)
 2a5:	00 00                	add    %al,(%rax)
 2a7:	00 08                	add    %cl,(%rax)
 2a9:	1c 02                	sbb    $0x2,%al
 2ab:	00 00                	add    %al,(%rax)
 2ad:	08 b8 02 00 00 06    	or     %bh,0x6000002(%rax)
 2b3:	8c 00                	mov    %es,(%rax)
 2b5:	00 00                	add    %al,(%rax)
 2b7:	00 08                	add    %cl,(%rax)
 2b9:	14 02                	adc    $0x2,%al
 2bb:	00 00                	add    %al,(%rax)
 2bd:	07                   	(bad)
 2be:	c8 02 00 00          	enter  $0x2,$0x0
 2c2:	06                   	(bad)
 2c3:	8c 00                	mov    %es,(%rax)
 2c5:	00 00                	add    %al,(%rax)
 2c7:	00 08                	add    %cl,(%rax)
 2c9:	0c 02                	or     $0x2,%al
 2cb:	00 00                	add    %al,(%rax)
 2cd:	06                   	(bad)
 2ce:	d8 02                	fadds  (%rdx)
 2d0:	00 00                	add    %al,(%rax)
 2d2:	06                   	(bad)
 2d3:	8c 00                	mov    %es,(%rax)
 2d5:	00 00                	add    %al,(%rax)
 2d7:	00 08                	add    %cl,(%rax)
 2d9:	04 02                	add    $0x2,%al
 2db:	00 00                	add    %al,(%rax)
 2dd:	05 e8 02 00 00       	add    $0x2e8,%eax
 2e2:	06                   	(bad)
 2e3:	8c 00                	mov    %es,(%rax)
 2e5:	00 00                	add    %al,(%rax)
 2e7:	00 0d 70 00 00 00    	add    %cl,0x70(%rip)        # 35d <__abi_tag-0x3f>
 2ed:	0c 08                	or     $0x8,%al
 2ef:	fc                   	cld
 2f0:	01 00                	add    %eax,(%rax)
 2f2:	00 04 fe             	add    %al,(%rsi,%rdi,8)
 2f5:	02 00                	add    (%rax),%al
 2f7:	00 06                	add    %al,(%rsi)
 2f9:	8c 00                	mov    %es,(%rax)
 2fb:	00 00                	add    %al,(%rax)
 2fd:	00 17                	add    %dl,(%rdi)
 2ff:	58                   	pop    %rax
 300:	00 00                	add    %al,(%rax)
 302:	00 08                	add    %cl,(%rax)
 304:	08 07                	or     %al,(%rdi)
 306:	8c 00                	mov    %es,(%rax)
 308:	00 00                	add    %al,(%rax)
 30a:	0d d1 00 00 00       	or     $0xd1,%eax
 30f:	09 18                	or     %ebx,(%rax)
 311:	b7 01                	mov    $0x1,%bh
 313:	00 00                	add    %al,(%rax)
 315:	09 69 02             	or     %ebp,0x2(%rcx)
 318:	0d 23 03 00 00       	or     $0x323,%eax
 31d:	06                   	(bad)
 31e:	66 00 00             	data16 add %al,(%rax)
 321:	00 00                	add    %al,(%rax)
 323:	19 00                	sbb    %eax,(%rax)
 325:	00 00                	add    %al,(%rax)
 327:	00 06                	add    %al,(%rsi)
 329:	4c 01 0c 66          	add    %r9,(%rsi,%riz,2)
 32d:	00 00                	add    %al,(%rax)
 32f:	00 3b                	add    %bh,(%rbx)
 331:	03 00                	add    (%rax),%eax
 333:	00 06                	add    %al,(%rsi)
 335:	3b 03                	cmp    (%rbx),%eax
 337:	00 00                	add    %al,(%rax)
 339:	1a 00                	sbb    (%rax),%al
 33b:	07                   	(bad)
 33c:	98                   	cwtl
 33d:	00 00                	add    %al,(%rax)
 33f:	00 1b                	add    %bl,(%rbx)
 341:	3b 03                	cmp    (%rbx),%eax
 343:	00 00                	add    %al,(%rax)
 345:	1c 73                	sbb    $0x73,%al
 347:	01 00                	add    %eax,(%rax)
 349:	00 06                	add    %al,(%rsi)
 34b:	f6 0e 6f             	testb  $0x6f,(%rsi)
 34e:	02 00                	add    (%rax),%al
 350:	00 60 03             	add    %ah,0x3(%rax)
 353:	00 00                	add    %al,(%rax)
 355:	06                   	(bad)
 356:	40 03 00             	rex add (%rax),%eax
 359:	00 06                	add    %al,(%rsi)
 35b:	40 03 00             	rex add (%rax),%eax
 35e:	00 00                	add    %al,(%rax)
 360:	1d 85 02 00 00       	sbb    $0x285,%eax
 365:	01 24 05 66 00 00 00 	add    %esp,0x66(,%rax,1)
 36c:	e9 22 00 00 00       	jmp    393 <__abi_tag-0x9>
 371:	00 00                	add    %al,(%rax)
 373:	00 50 01             	add    %dl,0x1(%rax)
 376:	00 00                	add    %al,(%rax)
 378:	00 00                	add    %al,(%rax)
 37a:	00 00                	add    %al,(%rax)
 37c:	01 9c 12 06 00 00 0e 	add    %ebx,0xe000006(%rdx,%rdx,1)
 383:	72 02                	jb     387 <__abi_tag-0x15>
 385:	00 00                	add    %al,(%rax)
 387:	0e                   	(bad)
 388:	66 00 00             	data16 add %al,(%rax)
 38b:	00 18                	add    %bl,(%rax)
 38d:	00 00                	add    %al,(%rax)
 38f:	00 0c 00             	add    %cl,(%rax,%rax,1)
 392:	00 00                	add    %al,(%rax)
 394:	0e                   	(bad)
 395:	f7 01 00 00 1a 12    	testl  $0x121a0000,(%rcx)
 39b:	06                   	(bad)
 39c:	00 00                	add    %al,(%rax)
 39e:	53                   	push   %rbx
 39f:	00 00                	add    %al,(%rax)
 3a1:	00 49 00             	add    %cl,0x0(%rcx)
 3a4:	00 00                	add    %al,(%rax)
 3a6:	1e                   	(bad)
 3a7:	bc 01 00 00 01       	mov    $0x1000001,%esp
 3ac:	26 0b 8c 00 00 00 81 	es or  0x810000(%rax,%rax,1),%ecx
 3b3:	00 
 3b4:	00 00                	add    %al,(%rax)
 3b6:	75 00                	jne    3b8 <__abi_tag+0x1c>
 3b8:	00 00                	add    %al,(%rax)
 3ba:	04 0f                	add    $0xf,%al
 3bc:	23 00                	and    (%rax),%eax
 3be:	00 00                	add    %al,(%rax)
 3c0:	00 00                	add    %al,(%rax)
 3c2:	00 45 03             	add    %al,0x3(%rbp)
 3c5:	00 00                	add    %al,(%rax)
 3c7:	d9 03                	flds   (%rbx)
 3c9:	00 00                	add    %al,(%rax)
 3cb:	03 01                	add    (%rcx),%eax
 3cd:	54                   	push   %rsp
 3ce:	09 03                	or     %eax,(%rbx)
 3d0:	04 40                	add    $0x40,%al
 3d2:	00 00                	add    %al,(%rax)
 3d4:	00 00                	add    %al,(%rax)
 3d6:	00 00                	add    %al,(%rax)
 3d8:	00 02                	add    %al,(%rdx)
 3da:	24 23                	and    $0x23,%al
 3dc:	00 00                	add    %al,(%rax)
 3de:	00 00                	add    %al,(%rax)
 3e0:	00 00                	add    %al,(%rax)
 3e2:	0a 03                	or     (%rbx),%al
 3e4:	00 00                	add    %al,(%rax)
 3e6:	04 30                	add    $0x30,%al
 3e8:	23 00                	and    (%rax),%eax
 3ea:	00 00                	add    %al,(%rax)
 3ec:	00 00                	add    %al,(%rax)
 3ee:	00 17                	add    %dl,(%rdi)
 3f0:	06                   	(bad)
 3f1:	00 00                	add    %al,(%rax)
 3f3:	05 04 00 00 03       	add    $0x3000004,%eax
 3f8:	01 55 09             	add    %edx,0x9(%rbp)
 3fb:	03 80 40 00 00 00    	add    0x40(%rax),%eax
 401:	00 00                	add    %al,(%rax)
 403:	00 00                	add    %al,(%rax)
 405:	04 3c                	add    $0x3c,%al
 407:	23 00                	and    (%rax),%eax
 409:	00 00                	add    %al,(%rax)
 40b:	00 00                	add    %al,(%rax)
 40d:	00 17                	add    %dl,(%rdi)
 40f:	06                   	(bad)
 410:	00 00                	add    %al,(%rax)
 412:	24 04                	and    $0x4,%al
 414:	00 00                	add    %al,(%rax)
 416:	03 01                	add    (%rcx),%eax
 418:	55                   	push   %rbp
 419:	09 03                	or     %eax,(%rbx)
 41b:	c0 40 00 00          	rolb   $0x0,0x0(%rax)
 41f:	00 00                	add    %al,(%rax)
 421:	00 00                	add    %al,(%rax)
 423:	00 02                	add    %al,(%rdx)
 425:	41 23 00             	and    (%r8),%eax
 428:	00 00                	add    %al,(%rax)
 42a:	00 00                	add    %al,(%rax)
 42c:	00 fe                	add    %bh,%dh
 42e:	02 00                	add    (%rax),%al
 430:	00 02                	add    %al,(%rdx)
 432:	49 23 00             	and    (%r8),%rax
 435:	00 00                	add    %al,(%rax)
 437:	00 00                	add    %al,(%rax)
 439:	00 ee                	add    %ch,%dh
 43b:	02 00                	add    (%rax),%al
 43d:	00 02                	add    %al,(%rdx)
 43f:	4e 23 00             	rex.WRX and (%rax),%r8
 442:	00 00                	add    %al,(%rax)
 444:	00 00                	add    %al,(%rax)
 446:	00 e8                	add    %ch,%al
 448:	02 00                	add    (%rax),%al
 44a:	00 04 5a             	add    %al,(%rdx,%rbx,2)
 44d:	23 00                	and    (%rax),%eax
 44f:	00 00                	add    %al,(%rax)
 451:	00 00                	add    %al,(%rax)
 453:	00 17                	add    %dl,(%rdi)
 455:	06                   	(bad)
 456:	00 00                	add    %al,(%rax)
 458:	6a 04                	push   $0x4
 45a:	00 00                	add    %al,(%rax)
 45c:	03 01                	add    (%rcx),%eax
 45e:	55                   	push   %rbp
 45f:	09 03                	or     %eax,(%rbx)
 461:	f0 40 00 00          	lock rex add %al,(%rax)
 465:	00 00                	add    %al,(%rax)
 467:	00 00                	add    %al,(%rax)
 469:	00 02                	add    %al,(%rdx)
 46b:	5f                   	pop    %rdi
 46c:	23 00                	and    (%rax),%eax
 46e:	00 00                	add    %al,(%rax)
 470:	00 00                	add    %al,(%rax)
 472:	00 fe                	add    %bh,%dh
 474:	02 00                	add    (%rax),%al
 476:	00 02                	add    %al,(%rdx)
 478:	67 23 00             	and    (%eax),%eax
 47b:	00 00                	add    %al,(%rax)
 47d:	00 00                	add    %al,(%rax)
 47f:	00 d8                	add    %bl,%al
 481:	02 00                	add    (%rax),%al
 483:	00 02                	add    %al,(%rdx)
 485:	6c                   	insb   (%dx),%es:(%rdi)
 486:	23 00                	and    (%rax),%eax
 488:	00 00                	add    %al,(%rax)
 48a:	00 00                	add    %al,(%rax)
 48c:	00 e8                	add    %ch,%al
 48e:	02 00                	add    (%rax),%al
 490:	00 04 78             	add    %al,(%rax,%rdi,2)
 493:	23 00                	and    (%rax),%eax
 495:	00 00                	add    %al,(%rax)
 497:	00 00                	add    %al,(%rax)
 499:	00 17                	add    %dl,(%rdi)
 49b:	06                   	(bad)
 49c:	00 00                	add    %al,(%rax)
 49e:	b0 04                	mov    $0x4,%al
 4a0:	00 00                	add    %al,(%rax)
 4a2:	03 01                	add    (%rcx),%eax
 4a4:	55                   	push   %rbp
 4a5:	09 03                	or     %eax,(%rbx)
 4a7:	3d 40 00 00 00       	cmp    $0x40,%eax
 4ac:	00 00                	add    %al,(%rax)
 4ae:	00 00                	add    %al,(%rax)
 4b0:	02 7d 23             	add    0x23(%rbp),%bh
 4b3:	00 00                	add    %al,(%rax)
 4b5:	00 00                	add    %al,(%rax)
 4b7:	00 00                	add    %al,(%rax)
 4b9:	fe 02                	incb   (%rdx)
 4bb:	00 00                	add    %al,(%rax)
 4bd:	02 85 23 00 00 00    	add    0x23(%rbp),%al
 4c3:	00 00                	add    %al,(%rax)
 4c5:	00 c8                	add    %cl,%al
 4c7:	02 00                	add    (%rax),%al
 4c9:	00 02                	add    %al,(%rdx)
 4cb:	8a 23                	mov    (%rbx),%ah
 4cd:	00 00                	add    %al,(%rax)
 4cf:	00 00                	add    %al,(%rax)
 4d1:	00 00                	add    %al,(%rax)
 4d3:	e8 02 00 00 04       	call   40004da <_end+0x3fee2fa>
 4d8:	96                   	xchg   %eax,%esi
 4d9:	23 00                	and    (%rax),%eax
 4db:	00 00                	add    %al,(%rax)
 4dd:	00 00                	add    %al,(%rax)
 4df:	00 17                	add    %dl,(%rdi)
 4e1:	06                   	(bad)
 4e2:	00 00                	add    %al,(%rax)
 4e4:	f6 04 00 00          	testb  $0x0,(%rax,%rax,1)
 4e8:	03 01                	add    (%rcx),%eax
 4ea:	55                   	push   %rbp
 4eb:	09 03                	or     %eax,(%rbx)
 4ed:	4e                   	rex.WRX
 4ee:	40 00 00             	rex add %al,(%rax)
 4f1:	00 00                	add    %al,(%rax)
 4f3:	00 00                	add    %al,(%rax)
 4f5:	00 02                	add    %al,(%rdx)
 4f7:	9b                   	fwait
 4f8:	23 00                	and    (%rax),%eax
 4fa:	00 00                	add    %al,(%rax)
 4fc:	00 00                	add    %al,(%rax)
 4fe:	00 fe                	add    %bh,%dh
 500:	02 00                	add    (%rax),%al
 502:	00 02                	add    %al,(%rdx)
 504:	a3 23 00 00 00 00 00 	movabs %eax,0xb800000000000023
 50b:	00 b8 
 50d:	02 00                	add    (%rax),%al
 50f:	00 02                	add    %al,(%rdx)
 511:	a8 23                	test   $0x23,%al
 513:	00 00                	add    %al,(%rax)
 515:	00 00                	add    %al,(%rax)
 517:	00 00                	add    %al,(%rax)
 519:	e8 02 00 00 04       	call   4000520 <_end+0x3fee340>
 51e:	b4 23                	mov    $0x23,%ah
 520:	00 00                	add    %al,(%rax)
 522:	00 00                	add    %al,(%rax)
 524:	00 00                	add    %al,(%rax)
 526:	17                   	(bad)
 527:	06                   	(bad)
 528:	00 00                	add    %al,(%rax)
 52a:	3c 05                	cmp    $0x5,%al
 52c:	00 00                	add    %al,(%rax)
 52e:	03 01                	add    (%rcx),%eax
 530:	55                   	push   %rbp
 531:	09 03                	or     %eax,(%rbx)
 533:	20 41 00             	and    %al,0x0(%rcx)
 536:	00 00                	add    %al,(%rax)
 538:	00 00                	add    %al,(%rax)
 53a:	00 00                	add    %al,(%rax)
 53c:	02 b9 23 00 00 00    	add    0x23(%rcx),%bh
 542:	00 00                	add    %al,(%rax)
 544:	00 fe                	add    %bh,%dh
 546:	02 00                	add    (%rax),%al
 548:	00 02                	add    %al,(%rdx)
 54a:	c1 23 00             	shll   $0x0,(%rbx)
 54d:	00 00                	add    %al,(%rax)
 54f:	00 00                	add    %al,(%rax)
 551:	00 a8 02 00 00 02    	add    %ch,0x2000002(%rax)
 557:	c6                   	(bad)
 558:	23 00                	and    (%rax),%eax
 55a:	00 00                	add    %al,(%rax)
 55c:	00 00                	add    %al,(%rax)
 55e:	00 e8                	add    %ch,%al
 560:	02 00                	add    (%rax),%al
 562:	00 04 d2             	add    %al,(%rdx,%rdx,8)
 565:	23 00                	and    (%rax),%eax
 567:	00 00                	add    %al,(%rax)
 569:	00 00                	add    %al,(%rax)
 56b:	00 17                	add    %dl,(%rdi)
 56d:	06                   	(bad)
 56e:	00 00                	add    %al,(%rax)
 570:	82                   	(bad)
 571:	05 00 00 03 01       	add    $0x1030000,%eax
 576:	55                   	push   %rbp
 577:	09 03                	or     %eax,(%rbx)
 579:	5d                   	pop    %rbp
 57a:	40 00 00             	rex add %al,(%rax)
 57d:	00 00                	add    %al,(%rax)
 57f:	00 00                	add    %al,(%rax)
 581:	00 02                	add    %al,(%rdx)
 583:	d7                   	xlat   %ds:(%rbx)
 584:	23 00                	and    (%rax),%eax
 586:	00 00                	add    %al,(%rax)
 588:	00 00                	add    %al,(%rax)
 58a:	00 fe                	add    %bh,%dh
 58c:	02 00                	add    (%rax),%al
 58e:	00 02                	add    %al,(%rdx)
 590:	df 23                	fbld   (%rbx)
 592:	00 00                	add    %al,(%rax)
 594:	00 00                	add    %al,(%rax)
 596:	00 00                	add    %al,(%rax)
 598:	98                   	cwtl
 599:	02 00                	add    (%rax),%al
 59b:	00 02                	add    %al,(%rdx)
 59d:	e4 23                	in     $0x23,%al
 59f:	00 00                	add    %al,(%rax)
 5a1:	00 00                	add    %al,(%rax)
 5a3:	00 00                	add    %al,(%rax)
 5a5:	e8 02 00 00 04       	call   40005ac <_end+0x3fee3cc>
 5aa:	11 24 00             	adc    %esp,(%rax,%rax,1)
 5ad:	00 00                	add    %al,(%rax)
 5af:	00 00                	add    %al,(%rax)
 5b1:	00 23                	add    %ah,(%rbx)
 5b3:	03 00                	add    (%rax),%eax
 5b5:	00 c8                	add    %cl,%al
 5b7:	05 00 00 03 01       	add    $0x1030000,%eax
 5bc:	55                   	push   %rbp
 5bd:	09 03                	or     %eax,(%rbx)
 5bf:	06                   	(bad)
 5c0:	40 00 00             	rex add %al,(%rax)
 5c3:	00 00                	add    %al,(%rax)
 5c5:	00 00                	add    %al,(%rax)
 5c7:	00 04 1b             	add    %al,(%rbx,%rbx,1)
 5ca:	24 00                	and    $0x0,%al
 5cc:	00 00                	add    %al,(%rax)
 5ce:	00 00                	add    %al,(%rax)
 5d0:	00 10                	add    %dl,(%rax)
 5d2:	03 00                	add    (%rax),%eax
 5d4:	00 df                	add    %bl,%bh
 5d6:	05 00 00 03 01       	add    $0x1030000,%eax
 5db:	55                   	push   %rbp
 5dc:	01 38                	add    %edi,(%rax)
 5de:	00 04 2f             	add    %al,(%rdi,%rbp,1)
 5e1:	24 00                	and    $0x0,%al
 5e3:	00 00                	add    %al,(%rax)
 5e5:	00 00                	add    %al,(%rax)
 5e7:	00 23                	add    %ah,(%rbx)
 5e9:	03 00                	add    (%rax),%eax
 5eb:	00 fe                	add    %bh,%dh
 5ed:	05 00 00 03 01       	add    $0x1030000,%eax
 5f2:	55                   	push   %rbp
 5f3:	09 03                	or     %eax,(%rbx)
 5f5:	23 40 00             	and    0x0(%rax),%eax
 5f8:	00 00                	add    %al,(%rax)
 5fa:	00 00                	add    %al,(%rax)
 5fc:	00 00                	add    %al,(%rax)
 5fe:	1f                   	(bad)
 5ff:	39 24 00             	cmp    %esp,(%rax,%rax,1)
 602:	00 00                	add    %al,(%rax)
 604:	00 00                	add    %al,(%rax)
 606:	00 10                	add    %dl,(%rax)
 608:	03 00                	add    (%rax),%eax
 60a:	00 03                	add    %al,(%rbx)
 60c:	01 55 01             	add    %edx,0x1(%rbp)
 60f:	38 00                	cmp    %al,(%rax)
 611:	00 07                	add    %al,(%rdi)
 613:	8c 00                	mov    %es,(%rax)
 615:	00 00                	add    %al,(%rax)
 617:	20 4c 01 00          	and    %cl,0x0(%rcx,%rax,1)
 61b:	00 42 01             	add    %al,0x1(%rdx)
 61e:	00 00                	add    %al,(%rax)
 620:	0a 00                	or     (%rax),%al
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 0d 00 03 0e 3a    	add    %ecx,0x3a0e0300(%rip)        # 3a0e0306 <_end+0x3a0ce126>
   6:	21 04 3b             	and    %eax,(%rbx,%rdi,1)
   9:	0b 39                	or     (%rcx),%edi
   b:	0b 49 13             	or     0x13(%rcx),%ecx
   e:	38 0b                	cmp    %cl,(%rbx)
  10:	00 00                	add    %al,(%rax)
  12:	02 48 00             	add    0x0(%rax),%cl
  15:	7d 01                	jge    18 <__abi_tag-0x384>
  17:	7f 13                	jg     2c <__abi_tag-0x370>
  19:	00 00                	add    %al,(%rax)
  1b:	03 49 00             	add    0x0(%rcx),%ecx
  1e:	02 18                	add    (%rax),%bl
  20:	7e 18                	jle    3a <__abi_tag-0x362>
  22:	00 00                	add    %al,(%rax)
  24:	04 48                	add    $0x48,%al
  26:	01 7d 01             	add    %edi,0x1(%rbp)
  29:	7f 13                	jg     3e <__abi_tag-0x35e>
  2b:	01 13                	add    %edx,(%rbx)
  2d:	00 00                	add    %al,(%rax)
  2f:	05 24 00 0b 0b       	add    $0xb0b0024,%eax
  34:	3e 0b 03             	ds or  (%rbx),%eax
  37:	0e                   	(bad)
  38:	00 00                	add    %al,(%rax)
  3a:	06                   	(bad)
  3b:	05 00 49 13 00       	add    $0x134900,%eax
  40:	00 07                	add    %al,(%rdi)
  42:	0f 00 0b             	str    (%rbx)
  45:	21 08                	and    %ecx,(%rax)
  47:	49 13 00             	adc    (%r8),%rax
  4a:	00 08                	add    %cl,(%rax)
  4c:	2e 01 3f             	cs add %edi,(%rdi)
  4f:	19 03                	sbb    %eax,(%rbx)
  51:	0e                   	(bad)
  52:	3a 21                	cmp    (%rcx),%ah
  54:	07                   	(bad)
  55:	3b 0b                	cmp    (%rbx),%ecx
  57:	39 21                	cmp    %esp,(%rcx)
  59:	0d 27 19 3c 19       	or     $0x193c1927,%eax
  5e:	01 13                	add    %edx,(%rbx)
  60:	00 00                	add    %al,(%rax)
  62:	09 16                	or     %edx,(%rsi)
  64:	00 03                	add    %al,(%rbx)
  66:	0e                   	(bad)
  67:	3a 0b                	cmp    (%rbx),%cl
  69:	3b 0b                	cmp    (%rbx),%ecx
  6b:	39 0b                	cmp    %ecx,(%rbx)
  6d:	49 13 00             	adc    (%r8),%rax
  70:	00 0a                	add    %cl,(%rdx)
  72:	13 00                	adc    (%rax),%eax
  74:	03 0e                	add    (%rsi),%ecx
  76:	3c 19                	cmp    $0x19,%al
  78:	00 00                	add    %al,(%rax)
  7a:	0b 01                	or     (%rcx),%eax
  7c:	01 49 13             	add    %ecx,0x13(%rcx)
  7f:	01 13                	add    %edx,(%rbx)
  81:	00 00                	add    %al,(%rax)
  83:	0c 21                	or     $0x21,%al
  85:	00 49 13             	add    %cl,0x13(%rcx)
  88:	2f                   	(bad)
  89:	0b 00                	or     (%rax),%eax
  8b:	00 0d 2e 00 3f 19    	add    %cl,0x193f002e(%rip)        # 193f00bf <_end+0x193ddedf>
  91:	03 0e                	add    (%rsi),%ecx
  93:	3a 21                	cmp    (%rcx),%ah
  95:	08 3b                	or     %bh,(%rbx)
  97:	0b 39                	or     (%rcx),%edi
  99:	21 06                	and    %eax,(%rsi)
  9b:	27                   	(bad)
  9c:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
  9f:	00 00                	add    %al,(%rax)
  a1:	0e                   	(bad)
  a2:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
  a7:	21 01                	and    %eax,(%rcx)
  a9:	3b 21                	cmp    (%rcx),%esp
  ab:	24 39                	and    $0x39,%al
  ad:	0b 49 13             	or     0x13(%rcx),%ecx
  b0:	02 17                	add    (%rdi),%dl
  b2:	b7 42                	mov    $0x42,%bh
  b4:	17                   	(bad)
  b5:	00 00                	add    %al,(%rax)
  b7:	0f 11 01             	movups %xmm0,(%rcx)
  ba:	25 0e 13 0b 03       	and    $0x30b130e,%eax
  bf:	1f                   	(bad)
  c0:	1b 1f                	sbb    (%rdi),%ebx
  c2:	11 01                	adc    %eax,(%rcx)
  c4:	12 07                	adc    (%rdi),%al
  c6:	10 17                	adc    %dl,(%rdi)
  c8:	00 00                	add    %al,(%rax)
  ca:	10 0f                	adc    %cl,(%rdi)
  cc:	00 0b                	add    %cl,(%rbx)
  ce:	0b 00                	or     (%rax),%eax
  d0:	00 11                	add    %dl,(%rcx)
  d2:	24 00                	and    $0x0,%al
  d4:	0b 0b                	or     (%rbx),%ecx
  d6:	3e 0b 03             	ds or  (%rbx),%eax
  d9:	08 00                	or     %al,(%rax)
  db:	00 12                	add    %dl,(%rdx)
  dd:	26 00 49 13          	es add %cl,0x13(%rcx)
  e1:	00 00                	add    %al,(%rax)
  e3:	13 13                	adc    (%rbx),%edx
  e5:	01 03                	add    %eax,(%rbx)
  e7:	0e                   	(bad)
  e8:	0b 0b                	or     (%rbx),%ecx
  ea:	3a 0b                	cmp    (%rbx),%cl
  ec:	3b 0b                	cmp    (%rbx),%ecx
  ee:	39 0b                	cmp    %ecx,(%rbx)
  f0:	01 13                	add    %edx,(%rbx)
  f2:	00 00                	add    %al,(%rax)
  f4:	14 16                	adc    $0x16,%al
  f6:	00 03                	add    %al,(%rbx)
  f8:	0e                   	(bad)
  f9:	3a 0b                	cmp    (%rbx),%cl
  fb:	3b 0b                	cmp    (%rbx),%ecx
  fd:	39 0b                	cmp    %ecx,(%rbx)
  ff:	00 00                	add    %al,(%rax)
 101:	15 34 00 03 0e       	adc    $0xe030034,%eax
 106:	3a 0b                	cmp    (%rbx),%cl
 108:	3b 0b                	cmp    (%rbx),%ecx
 10a:	39 0b                	cmp    %ecx,(%rbx)
 10c:	49 13 3f             	adc    (%r15),%rdi
 10f:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 112:	00 00                	add    %al,(%rax)
 114:	16                   	(bad)
 115:	34 00                	xor    $0x0,%al
 117:	03 0e                	add    (%rsi),%ecx
 119:	3a 0b                	cmp    (%rbx),%cl
 11b:	3b 0b                	cmp    (%rbx),%ecx
 11d:	39 0b                	cmp    %ecx,(%rbx)
 11f:	49 13 3f             	adc    (%r15),%rdi
 122:	19 02                	sbb    %eax,(%rdx)
 124:	18 00                	sbb    %al,(%rax)
 126:	00 17                	add    %dl,(%rdi)
 128:	2e 00 3f             	cs add %bh,(%rdi)
 12b:	19 03                	sbb    %eax,(%rbx)
 12d:	0e                   	(bad)
 12e:	3a 0b                	cmp    (%rbx),%cl
 130:	3b 0b                	cmp    (%rbx),%ecx
 132:	39 0b                	cmp    %ecx,(%rbx)
 134:	27                   	(bad)
 135:	19 49 13             	sbb    %ecx,0x13(%rcx)
 138:	3c 19                	cmp    $0x19,%al
 13a:	00 00                	add    %al,(%rax)
 13c:	18 2e                	sbb    %ch,(%rsi)
 13e:	01 3f                	add    %edi,(%rdi)
 140:	19 03                	sbb    %eax,(%rbx)
 142:	0e                   	(bad)
 143:	3a 0b                	cmp    (%rbx),%cl
 145:	3b 05 39 0b 27 19    	cmp    0x19270b39(%rip),%eax        # 19270c84 <_end+0x1925eaa4>
 14b:	87 01                	xchg   %eax,(%rcx)
 14d:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 150:	01 13                	add    %edx,(%rbx)
 152:	00 00                	add    %al,(%rax)
 154:	19 2e                	sbb    %ebp,(%rsi)
 156:	01 3f                	add    %edi,(%rdi)
 158:	19 03                	sbb    %eax,(%rbx)
 15a:	0e                   	(bad)
 15b:	3a 0b                	cmp    (%rbx),%cl
 15d:	3b 05 39 0b 27 19    	cmp    0x19270b39(%rip),%eax        # 19270c9c <_end+0x1925eabc>
 163:	49 13 3c 19          	adc    (%r9,%rbx,1),%rdi
 167:	01 13                	add    %edx,(%rbx)
 169:	00 00                	add    %al,(%rax)
 16b:	1a 18                	sbb    (%rax),%bl
 16d:	00 00                	add    %al,(%rax)
 16f:	00 1b                	add    %bl,(%rbx)
 171:	37                   	(bad)
 172:	00 49 13             	add    %cl,0x13(%rcx)
 175:	00 00                	add    %al,(%rax)
 177:	1c 2e                	sbb    $0x2e,%al
 179:	01 3f                	add    %edi,(%rdi)
 17b:	19 03                	sbb    %eax,(%rbx)
 17d:	0e                   	(bad)
 17e:	3a 0b                	cmp    (%rbx),%cl
 180:	3b 0b                	cmp    (%rbx),%ecx
 182:	39 0b                	cmp    %ecx,(%rbx)
 184:	27                   	(bad)
 185:	19 49 13             	sbb    %ecx,0x13(%rcx)
 188:	3c 19                	cmp    $0x19,%al
 18a:	01 13                	add    %edx,(%rbx)
 18c:	00 00                	add    %al,(%rax)
 18e:	1d 2e 01 3f 19       	sbb    $0x193f012e,%eax
 193:	03 0e                	add    (%rsi),%ecx
 195:	3a 0b                	cmp    (%rbx),%cl
 197:	3b 0b                	cmp    (%rbx),%ecx
 199:	39 0b                	cmp    %ecx,(%rbx)
 19b:	27                   	(bad)
 19c:	19 49 13             	sbb    %ecx,0x13(%rcx)
 19f:	11 01                	adc    %eax,(%rcx)
 1a1:	12 07                	adc    (%rdi),%al
 1a3:	40 18 7a 19          	sbb    %dil,0x19(%rdx)
 1a7:	01 13                	add    %edx,(%rbx)
 1a9:	00 00                	add    %al,(%rax)
 1ab:	1e                   	(bad)
 1ac:	34 00                	xor    $0x0,%al
 1ae:	03 0e                	add    (%rsi),%ecx
 1b0:	3a 0b                	cmp    (%rbx),%cl
 1b2:	3b 0b                	cmp    (%rbx),%ecx
 1b4:	39 0b                	cmp    %ecx,(%rbx)
 1b6:	49 13 02             	adc    (%r10),%rax
 1b9:	17                   	(bad)
 1ba:	b7 42                	mov    $0x42,%bh
 1bc:	17                   	(bad)
 1bd:	00 00                	add    %al,(%rax)
 1bf:	1f                   	(bad)
 1c0:	48 01 7d 01          	add    %rdi,0x1(%rbp)
 1c4:	7f 13                	jg     1d9 <__abi_tag-0x1c3>
 1c6:	00 00                	add    %al,(%rax)
 1c8:	20 2e                	and    %ch,(%rsi)
 1ca:	00 3f                	add    %bh,(%rdi)
 1cc:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 1cf:	6e                   	outsb  %ds:(%rsi),(%dx)
 1d0:	0e                   	(bad)
 1d1:	03 0e                	add    (%rsi),%ecx
 1d3:	3a 0b                	cmp    (%rbx),%cl
 1d5:	3b 0b                	cmp    (%rbx),%ecx
 1d7:	00 00                	add    %al,(%rax)
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	0e                   	(bad)
   1:	01 00                	add    %eax,(%rax)
   3:	00 05 00 08 00 67    	add    %al,0x67000800(%rip)        # 67000809 <_end+0x66fee629>
   9:	00 00                	add    %al,(%rax)
   b:	00 01                	add    %al,(%rcx)
   d:	01 01                	add    %eax,(%rcx)
   f:	fb                   	sti
  10:	0e                   	(bad)
  11:	0d 00 01 01 01       	or     $0x1010100,%eax
  16:	01 00                	add    %eax,(%rax)
  18:	00 00                	add    %al,(%rax)
  1a:	01 00                	add    %eax,(%rax)
  1c:	00 01                	add    %al,(%rcx)
  1e:	01 01                	add    %eax,(%rcx)
  20:	1f                   	(bad)
  21:	05 07 00 00 00       	add    $0x7,%eax
  26:	18 00                	sbb    %al,(%rax)
  28:	00 00                	add    %al,(%rax)
  2a:	48 00 00             	rex.W add %al,(%rax)
  2d:	00 5a 00             	add    %bl,0x0(%rdx)
  30:	00 00                	add    %al,(%rax)
  32:	72 00                	jb     34 <__abi_tag-0x368>
  34:	00 00                	add    %al,(%rax)
  36:	02 01                	add    (%rcx),%al
  38:	1f                   	(bad)
  39:	02 0f                	add    (%rdi),%cl
  3b:	0b 00                	or     (%rax),%eax
	...
  45:	00 7f 00             	add    %bh,0x0(%rdi)
  48:	00 00                	add    %al,(%rax)
  4a:	01 88 00 00 00 02    	add    %ecx,0x2000000(%rax)
  50:	90                   	nop
  51:	00 00                	add    %al,(%rax)
  53:	00 03                	add    %al,(%rbx)
  55:	97                   	xchg   %eax,%edi
  56:	00 00                	add    %al,(%rax)
  58:	00 03                	add    %al,(%rbx)
  5a:	9e                   	sahf
  5b:	00 00                	add    %al,(%rax)
  5d:	00 04 a6             	add    %al,(%rsi,%riz,4)
  60:	00 00                	add    %al,(%rax)
  62:	00 00                	add    %al,(%rax)
  64:	af                   	scas   %es:(%rdi),%eax
  65:	00 00                	add    %al,(%rax)
  67:	00 00                	add    %al,(%rax)
  69:	b9 00 00 00 04       	mov    $0x4000000,%ecx
  6e:	c2 00 00             	ret    $0x0
  71:	00 00                	add    %al,(%rax)
  73:	05 01 00 09 02       	add    $0x2090001,%eax
  78:	e9 22 00 00 00       	jmp    9f <__abi_tag-0x2fd>
  7d:	00 00                	add    %al,(%rax)
  7f:	00 03                	add    %al,(%rbx)
  81:	24 01                	and    $0x1,%al
  83:	06                   	(bad)
  84:	01 05 05 06 21 19    	add    %eax,0x19210605(%rip)        # 1921068f <_end+0x191fe4af>
  8a:	05 08 06 01 05       	add    $0x5010608,%eax
  8f:	0a 06                	or     (%rsi),%al
  91:	c2 05 0d             	ret    $0xd05
  94:	06                   	(bad)
  95:	01 05 02 06 91 05    	add    %eax,0x5910602(%rip)        # 591069d <_end+0x58fe4bd>
  9b:	11 06                	adc    %eax,(%rsi)
  9d:	01 4a 74             	add    %ecx,0x74(%rdx)
  a0:	05 0f 58 05 05       	add    $0x505580f,%eax
  a5:	74 06                	je     ad <__abi_tag-0x2ef>
  a7:	03 0d 90 5a bb bd    	add    -0x4244a570(%rip),%ecx        # ffffffffbdbb5b3d <_end+0xffffffffbdba395d>
  ad:	05 0d 06 01 05       	add    $0x501060d,%eax
  b2:	05 06 83 59 5a       	add    $0x5a598306,%eax
  b7:	be 05 0d 06 01       	mov    $0x1060d05,%esi
  bc:	05 05 06 83 59       	add    $0x59830605,%eax
  c1:	59                   	pop    %rcx
  c2:	be 05 0d 06 01       	mov    $0x1060d05,%esi
  c7:	05 05 06 83 59       	add    $0x59830605,%eax
  cc:	59                   	pop    %rcx
  cd:	bd 05 0d 06 01       	mov    $0x1060d05,%ebp
  d2:	05 05 06 83 59       	add    $0x59830605,%eax
  d7:	59                   	pop    %rcx
  d8:	bd 05 0d 06 01       	mov    $0x1060d05,%ebp
  dd:	05 05 06 83 59       	add    $0x59830605,%eax
  e2:	59                   	pop    %rcx
  e3:	be 05 0d 06 01       	mov    $0x1060d05,%esi
  e8:	05 05 06 83 59       	add    $0x59830605,%eax
  ed:	5d                   	pop    %rbp
  ee:	05 01 06 13 05       	add    $0x5130601,%eax
  f3:	02 06                	add    (%rsi),%al
  f5:	03 bb 7f 74 05 09    	add    0x905747f(%rbx),%edi
  fb:	06                   	(bad)
  fc:	01 05 06 06 03 09    	add    %eax,0x9030606(%rip)        # 9030708 <_end+0x901e528>
 102:	08 2e                	or     %ch,(%rsi)
 104:	08 2f                	or     %ch,(%rdi)
 106:	05 02 a4 06 9e       	add    $0x9e06a402,%eax
 10b:	06                   	(bad)
 10c:	9f                   	lahf
 10d:	02 0a                	add    (%rdx),%cl
 10f:	00 01                	add    %al,(%rcx)
 111:	01                   	.byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	70 72                	jo     74 <__abi_tag-0x328>
   2:	69 6e 74 66 00 5f 5f 	imul   $0x5f5f0066,0x74(%rsi),%ebp
   9:	6f                   	outsl  %ds:(%rsi),(%dx)
   a:	66 66 5f             	data16 pop %di
   d:	74 00                	je     f <__abi_tag-0x38d>
   f:	5f                   	pop    %rdi
  10:	49                   	rex.WB
  11:	4f 5f                	rex.WRXB pop %r15
  13:	72 65                	jb     7a <__abi_tag-0x322>
  15:	61                   	(bad)
  16:	64 5f                	fs pop %rdi
  18:	70 74                	jo     8e <__abi_tag-0x30e>
  1a:	72 00                	jb     1c <__abi_tag-0x380>
  1c:	5f                   	pop    %rdi
  1d:	63 68 61             	movsxd 0x61(%rax),%ebp
  20:	69 6e 00 73 69 7a 65 	imul   $0x657a6973,0x0(%rsi),%ebp
  27:	5f                   	pop    %rdi
  28:	74 00                	je     2a <__abi_tag-0x372>
  2a:	5f                   	pop    %rdi
  2b:	73 68                	jae    95 <__abi_tag-0x307>
  2d:	6f                   	outsl  %ds:(%rsi),(%dx)
  2e:	72 74                	jb     a4 <__abi_tag-0x2f8>
  30:	62 75 66 00 5f 49 4f 	vmaxsh 0x9e(%rcx),%xmm19,%xmm9
  37:	5f                   	pop    %rdi
  38:	62 75 66 5f 62       	(bad)
  3d:	61                   	(bad)
  3e:	73 65                	jae    a5 <__abi_tag-0x2f7>
  40:	00 6c 6f 6e          	add    %ch,0x6e(%rdi,%rbp,2)
  44:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  49:	67 20 75 6e          	and    %dh,0x6e(%ebp)
  4d:	73 69                	jae    b8 <__abi_tag-0x2e4>
  4f:	67 6e                	outsb  %ds:(%esi),(%dx)
  51:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  56:	74 00                	je     58 <__abi_tag-0x344>
  58:	72 65                	jb     bf <__abi_tag-0x2dd>
  5a:	61                   	(bad)
  5b:	64 5f                	fs pop %rdi
  5d:	6c                   	insb   (%dx),%es:(%rdi)
  5e:	69 6e 65 00 6c 6f 6e 	imul   $0x6e6f6c00,0x65(%rsi),%ebp
  65:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  6a:	67 20 69 6e          	and    %ch,0x6e(%ecx)
  6e:	74 00                	je     70 <__abi_tag-0x32c>
  70:	70 68                	jo     da <__abi_tag-0x2c2>
  72:	61                   	(bad)
  73:	73 65                	jae    da <__abi_tag-0x2c2>
  75:	5f                   	pop    %rdi
  76:	64 65 66 75 73       	fs gs data16 jne ee <__abi_tag-0x2ae>
  7b:	65 64 00 5f 66       	gs add %bl,%fs:0x66(%rdi)
  80:	69 6c 65 6e 6f 00 5f 	imul   $0x495f006f,0x6e(%rbp,%riz,2),%ebp
  87:	49 
  88:	4f 5f                	rex.WRXB pop %r15
  8a:	72 65                	jb     f1 <__abi_tag-0x2ab>
  8c:	61                   	(bad)
  8d:	64 5f                	fs pop %rdi
  8f:	65 6e                	outsb  %gs:(%rsi),(%dx)
  91:	64 00 5f 66          	add    %bl,%fs:0x66(%rdi)
  95:	6c                   	insb   (%dx),%es:(%rdi)
  96:	61                   	(bad)
  97:	67 73 00             	addr32 jae 9a <__abi_tag-0x302>
  9a:	5f                   	pop    %rdi
  9b:	49                   	rex.WB
  9c:	4f 5f                	rex.WRXB pop %r15
  9e:	62 75 66 5f 65       	(bad)
  a3:	6e                   	outsb  %ds:(%rsi),(%dx)
  a4:	64 00 5f 63          	add    %bl,%fs:0x63(%rdi)
  a8:	75 72                	jne    11c <__abi_tag-0x280>
  aa:	5f                   	pop    %rdi
  ab:	63 6f 6c             	movsxd 0x6c(%rdi),%ebp
  ae:	75 6d                	jne    11d <__abi_tag-0x27f>
  b0:	6e                   	outsb  %ds:(%rsi),(%dx)
  b1:	00 5f 49             	add    %bl,0x49(%rdi)
  b4:	4f 5f                	rex.WRXB pop %r15
  b6:	63 6f 64             	movsxd 0x64(%rdi),%ebp
  b9:	65 63 76 74          	movsxd %gs:0x74(%rsi),%esi
  bd:	00 5f 6f             	add    %bl,0x6f(%rdi)
  c0:	6c                   	insb   (%dx),%es:(%rdi)
  c1:	64 5f                	fs pop %rdi
  c3:	6f                   	outsl  %ds:(%rsi),(%dx)
  c4:	66 66 73 65          	data16 data16 jae 12d <__abi_tag-0x26f>
  c8:	74 00                	je     ca <__abi_tag-0x2d2>
  ca:	69 6e 66 69 6c 65 00 	imul   $0x656c69,0x66(%rsi),%ebp
  d1:	69 6e 69 74 69 61 6c 	imul   $0x6c616974,0x69(%rsi),%ebp
  d8:	69 7a 65 5f 62 6f 6d 	imul   $0x6d6f625f,0x65(%rdx),%edi
  df:	62                   	(bad)
  e0:	00 5f 49             	add    %bl,0x49(%rdi)
  e3:	4f 5f                	rex.WRXB pop %r15
  e5:	6d                   	insl   (%dx),%es:(%rdi)
  e6:	61                   	(bad)
  e7:	72 6b                	jb     154 <__abi_tag-0x248>
  e9:	65 72 00             	gs jb  ec <__abi_tag-0x2b0>
  ec:	73 74                	jae    162 <__abi_tag-0x23a>
  ee:	64 69 6e 00 5f 66 72 	imul   $0x6572665f,%fs:0x0(%rsi),%ebp
  f5:	65 
  f6:	65 72 65             	gs jb  15e <__abi_tag-0x23e>
  f9:	73 5f                	jae    15a <__abi_tag-0x242>
  fb:	62 75 66 00 5f 49 4f 	vmaxsh 0x9e(%rcx),%xmm19,%xmm9
 102:	5f                   	pop    %rdi
 103:	77 72                	ja     177 <__abi_tag-0x225>
 105:	69 74 65 5f 70 74 72 	imul   $0x727470,0x5f(%rbp,%riz,2),%esi
 10c:	00 
 10d:	73 68                	jae    177 <__abi_tag-0x225>
 10f:	6f                   	outsl  %ds:(%rsi),(%dx)
 110:	72 74                	jb     186 <__abi_tag-0x216>
 112:	20 75 6e             	and    %dh,0x6e(%rbp)
 115:	73 69                	jae    180 <__abi_tag-0x21c>
 117:	67 6e                	outsb  %ds:(%esi),(%dx)
 119:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
 11e:	74 00                	je     120 <__abi_tag-0x27c>
 120:	5f                   	pop    %rdi
 121:	49                   	rex.WB
 122:	4f 5f                	rex.WRXB pop %r15
 124:	73 61                	jae    187 <__abi_tag-0x215>
 126:	76 65                	jbe    18d <__abi_tag-0x20f>
 128:	5f                   	pop    %rdi
 129:	62 61                	(bad)
 12b:	73 65                	jae    192 <__abi_tag-0x20a>
 12d:	00 5f 6c             	add    %bl,0x6c(%rdi)
 130:	6f                   	outsl  %ds:(%rsi),(%dx)
 131:	63 6b 00             	movsxd 0x0(%rbx),%ebp
 134:	5f                   	pop    %rdi
 135:	66 6c                	data16 insb (%dx),%es:(%rdi)
 137:	61                   	(bad)
 138:	67 73 32             	addr32 jae 16d <__abi_tag-0x22f>
 13b:	00 5f 6d             	add    %bl,0x6d(%rdi)
 13e:	6f                   	outsl  %ds:(%rsi),(%dx)
 13f:	64 65 00 5f 5f       	fs add %bl,%gs:0x5f(%rdi)
 144:	62 75                	(bad)
 146:	69 6c 74 69 6e 5f 70 	imul   $0x75705f6e,0x69(%rsp,%rsi,2),%ebp
 14d:	75 
 14e:	74 73                	je     1c3 <__abi_tag-0x1d9>
 150:	00 5f 49             	add    %bl,0x49(%rdi)
 153:	4f 5f                	rex.WRXB pop %r15
 155:	77 72                	ja     1c9 <__abi_tag-0x1d3>
 157:	69 74 65 5f 65 6e 64 	imul   $0x646e65,0x5f(%rbp,%riz,2),%esi
 15e:	00 
 15f:	5f                   	pop    %rdi
 160:	49                   	rex.WB
 161:	4f 5f                	rex.WRXB pop %r15
 163:	6c                   	insb   (%dx),%es:(%rdi)
 164:	6f                   	outsl  %ds:(%rsi),(%dx)
 165:	63 6b 5f             	movsxd 0x5f(%rbx),%ebp
 168:	74 00                	je     16a <__abi_tag-0x232>
 16a:	5f                   	pop    %rdi
 16b:	49                   	rex.WB
 16c:	4f 5f                	rex.WRXB pop %r15
 16e:	46                   	rex.RX
 16f:	49                   	rex.WB
 170:	4c                   	rex.WR
 171:	45 00 66 6f          	add    %r12b,0x6f(%r14)
 175:	70 65                	jo     1dc <__abi_tag-0x1c0>
 177:	6e                   	outsb  %ds:(%rsi),(%dx)
 178:	00 5f 6d             	add    %bl,0x6d(%rdi)
 17b:	61                   	(bad)
 17c:	72 6b                	jb     1e9 <__abi_tag-0x1b3>
 17e:	65 72 73             	gs jb  1f4 <__abi_tag-0x1a8>
 181:	00 75 6e             	add    %dh,0x6e(%rbp)
 184:	73 69                	jae    1ef <__abi_tag-0x1ad>
 186:	67 6e                	outsb  %ds:(%esi),(%dx)
 188:	65 64 20 63 68       	gs and %ah,%fs:0x68(%rbx)
 18d:	61                   	(bad)
 18e:	72 00                	jb     190 <__abi_tag-0x20c>
 190:	73 68                	jae    1fa <__abi_tag-0x1a2>
 192:	6f                   	outsl  %ds:(%rsi),(%dx)
 193:	72 74                	jb     209 <__abi_tag-0x193>
 195:	20 69 6e             	and    %ch,0x6e(%rcx)
 198:	74 00                	je     19a <__abi_tag-0x202>
 19a:	5f                   	pop    %rdi
 19b:	49                   	rex.WB
 19c:	4f 5f                	rex.WRXB pop %r15
 19e:	77 69                	ja     209 <__abi_tag-0x193>
 1a0:	64 65 5f             	fs gs pop %rdi
 1a3:	64 61                	fs (bad)
 1a5:	74 61                	je     208 <__abi_tag-0x194>
 1a7:	00 5f 76             	add    %bl,0x76(%rdi)
 1aa:	74 61                	je     20d <__abi_tag-0x18f>
 1ac:	62                   	(bad)
 1ad:	6c                   	insb   (%dx),%es:(%rdi)
 1ae:	65 5f                	gs pop %rdi
 1b0:	6f                   	outsl  %ds:(%rsi),(%dx)
 1b1:	66 66 73 65          	data16 data16 jae 21a <__abi_tag-0x182>
 1b5:	74 00                	je     1b7 <__abi_tag-0x1e5>
 1b7:	65 78 69             	gs js  223 <__abi_tag-0x179>
 1ba:	74 00                	je     1bc <__abi_tag-0x1e0>
 1bc:	69 6e 70 75 74 00 5f 	imul   $0x5f007475,0x70(%rsi),%ebp
 1c3:	5f                   	pop    %rdi
 1c4:	6f                   	outsl  %ds:(%rsi),(%dx)
 1c5:	66 66 36 34 5f       	data16 data16 ss xor $0x5f,%al
 1ca:	74 00                	je     1cc <__abi_tag-0x1d0>
 1cc:	5f                   	pop    %rdi
 1cd:	49                   	rex.WB
 1ce:	4f 5f                	rex.WRXB pop %r15
 1d0:	72 65                	jb     237 <__abi_tag-0x165>
 1d2:	61                   	(bad)
 1d3:	64 5f                	fs pop %rdi
 1d5:	62 61                	(bad)
 1d7:	73 65                	jae    23e <__abi_tag-0x15e>
 1d9:	00 5f 49             	add    %bl,0x49(%rdi)
 1dc:	4f 5f                	rex.WRXB pop %r15
 1de:	73 61                	jae    241 <__abi_tag-0x15b>
 1e0:	76 65                	jbe    247 <__abi_tag-0x155>
 1e2:	5f                   	pop    %rdi
 1e3:	65 6e                	outsb  %gs:(%rsi),(%dx)
 1e5:	64 00 5f 5f          	add    %bl,%fs:0x5f(%rdi)
 1e9:	70 61                	jo     24c <__abi_tag-0x150>
 1eb:	64 35 00 5f 75 6e    	fs xor $0x6e755f00,%eax
 1f1:	75 73                	jne    266 <__abi_tag-0x136>
 1f3:	65 64 32 00          	gs xor %fs:(%rax),%al
 1f7:	61                   	(bad)
 1f8:	72 67                	jb     261 <__abi_tag-0x13b>
 1fa:	76 00                	jbe    1fc <__abi_tag-0x1a0>
 1fc:	70 68                	jo     266 <__abi_tag-0x136>
 1fe:	61                   	(bad)
 1ff:	73 65                	jae    266 <__abi_tag-0x136>
 201:	5f                   	pop    %rdi
 202:	31 00                	xor    %eax,(%rax)
 204:	70 68                	jo     26e <__abi_tag-0x12e>
 206:	61                   	(bad)
 207:	73 65                	jae    26e <__abi_tag-0x12e>
 209:	5f                   	pop    %rdi
 20a:	32 00                	xor    (%rax),%al
 20c:	70 68                	jo     276 <__abi_tag-0x126>
 20e:	61                   	(bad)
 20f:	73 65                	jae    276 <__abi_tag-0x126>
 211:	5f                   	pop    %rdi
 212:	33 00                	xor    (%rax),%eax
 214:	70 68                	jo     27e <__abi_tag-0x11e>
 216:	61                   	(bad)
 217:	73 65                	jae    27e <__abi_tag-0x11e>
 219:	5f                   	pop    %rdi
 21a:	34 00                	xor    $0x0,%al
 21c:	70 68                	jo     286 <__abi_tag-0x116>
 21e:	61                   	(bad)
 21f:	73 65                	jae    286 <__abi_tag-0x116>
 221:	5f                   	pop    %rdi
 222:	35 00 70 68 61       	xor    $0x61687000,%eax
 227:	73 65                	jae    28e <__abi_tag-0x10e>
 229:	5f                   	pop    %rdi
 22a:	36 00 47 4e          	ss add %al,0x4e(%rdi)
 22e:	55                   	push   %rbp
 22f:	20 43 31             	and    %al,0x31(%rbx)
 232:	37                   	(bad)
 233:	20 31                	and    %dh,(%rcx)
 235:	31 2e                	xor    %ebp,(%rsi)
 237:	31 2e                	xor    %ebp,(%rsi)
 239:	30 20                	xor    %ah,(%rax)
 23b:	2d 6d 74 75 6e       	sub    $0x6e75746d,%eax
 240:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
 246:	72 69                	jb     2b1 <__abi_tag-0xeb>
 248:	63 20                	movsxd (%rax),%esp
 24a:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
 24f:	68 3d 78 38 36       	push   $0x3638783d
 254:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
 259:	67 67 64 62          	addr32 addr32 fs (bad)
 25d:	20 2d 4f 31 00 5f    	and    %ch,0x5f00314f(%rip)        # 5f0033b2 <_end+0x5eff11d2>
 263:	49                   	rex.WB
 264:	4f 5f                	rex.WRXB pop %r15
 266:	62 61                	(bad)
 268:	63 6b 75             	movsxd 0x75(%rbx),%ebp
 26b:	70 5f                	jo     2cc <__abi_tag-0xd0>
 26d:	62 61                	(bad)
 26f:	73 65                	jae    2d6 <__abi_tag-0xc6>
 271:	00 61 72             	add    %ah,0x72(%rcx)
 274:	67 63 00             	movsxd (%eax),%eax
 277:	5f                   	pop    %rdi
 278:	66 72 65             	data16 jb 2e0 <__abi_tag-0xbc>
 27b:	65 72 65             	gs jb  2e3 <__abi_tag-0xb9>
 27e:	73 5f                	jae    2df <__abi_tag-0xbd>
 280:	6c                   	insb   (%dx),%es:(%rdi)
 281:	69 73 74 00 6d 61 69 	imul   $0x69616d00,0x74(%rbx),%esi
 288:	6e                   	outsb  %ds:(%rsi),(%dx)
 289:	00 5f 49             	add    %bl,0x49(%rdi)
 28c:	4f 5f                	rex.WRXB pop %r15
 28e:	77 72                	ja     302 <__abi_tag-0x9a>
 290:	69 74 65 5f 62 61 73 	imul   $0x65736162,0x5f(%rbp,%riz,2),%esi
 297:	65 
	...

Disassembly of section .debug_line_str:

0000000000000000 <.debug_line_str>:
   0:	62                   	(bad)
   1:	6f                   	outsl  %ds:(%rsi),(%dx)
   2:	6d                   	insl   (%dx),%es:(%rdi)
   3:	62                   	(bad)
   4:	2e 63 00             	cs movsxd (%rax),%eax
   7:	2f                   	(bad)
   8:	6f                   	outsl  %ds:(%rsi),(%dx)
   9:	70 74                	jo     7f <__abi_tag-0x31d>
   b:	2f                   	(bad)
   c:	62                   	(bad)
   d:	6f                   	outsl  %ds:(%rsi),(%dx)
   e:	6d                   	insl   (%dx),%es:(%rdi)
   f:	62                   	(bad)
  10:	6c                   	insb   (%dx),%es:(%rdi)
  11:	61                   	(bad)
  12:	62                   	(bad)
  13:	2f                   	(bad)
  14:	73 72                	jae    88 <__abi_tag-0x314>
  16:	63 00                	movsxd (%rax),%eax
  18:	2f                   	(bad)
  19:	75 73                	jne    8e <__abi_tag-0x30e>
  1b:	72 2f                	jb     4c <__abi_tag-0x350>
  1d:	6c                   	insb   (%dx),%es:(%rdi)
  1e:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%rdx),%esp
  25:	78 38                	js     5f <__abi_tag-0x33d>
  27:	36 5f                	ss pop %rdi
  29:	36 34 2d             	ss xor $0x2d,%al
  2c:	70 63                	jo     91 <__abi_tag-0x30b>
  2e:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  33:	78 2d                	js     62 <__abi_tag-0x33a>
  35:	67 6e                	outsb  %ds:(%esi),(%dx)
  37:	75 2f                	jne    68 <__abi_tag-0x334>
  39:	31 31                	xor    %esi,(%rcx)
  3b:	2e 31 2e             	cs xor %ebp,(%rsi)
  3e:	30 2f                	xor    %ch,(%rdi)
  40:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  47:	00 2f                	add    %ch,(%rdi)
  49:	75 73                	jne    be <__abi_tag-0x2de>
  4b:	72 2f                	jb     7c <__abi_tag-0x320>
  4d:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  54:	2f                   	(bad)
  55:	62                   	(bad)
  56:	69 74 73 00 2f 75 73 	imul   $0x7273752f,0x0(%rbx,%rsi,2),%esi
  5d:	72 
  5e:	2f                   	(bad)
  5f:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  66:	2f                   	(bad)
  67:	62                   	(bad)
  68:	69 74 73 2f 74 79 70 	imul   $0x65707974,0x2f(%rbx,%rsi,2),%esi
  6f:	65 
  70:	73 00                	jae    72 <__abi_tag-0x32a>
  72:	2f                   	(bad)
  73:	75 73                	jne    e8 <__abi_tag-0x2b4>
  75:	72 2f                	jb     a6 <__abi_tag-0x2f6>
  77:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  7e:	00 73 74             	add    %dh,0x74(%rbx)
  81:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x7400
  88:	74 
  89:	79 70                	jns    fb <__abi_tag-0x2a1>
  8b:	65 73 2e             	gs jae bc <__abi_tag-0x2e0>
  8e:	68 00 73 74 72       	push   $0x72747300
  93:	75 63                	jne    f8 <__abi_tag-0x2a4>
  95:	74 5f                	je     f6 <__abi_tag-0x2a6>
  97:	46                   	rex.RX
  98:	49                   	rex.WB
  99:	4c                   	rex.WR
  9a:	45                   	rex.RB
  9b:	2e 68 00 73 74 64    	cs push $0x64747300
  a1:	69 6f 2e 68 00 70 68 	imul   $0x68700068,0x2e(%rdi),%ebp
  a8:	61                   	(bad)
  a9:	73 65                	jae    110 <__abi_tag-0x28c>
  ab:	73 2e                	jae    db <__abi_tag-0x2c1>
  ad:	68 00 73 75 70       	push   $0x70757300
  b2:	70 6f                	jo     123 <__abi_tag-0x279>
  b4:	72 74                	jb     12a <__abi_tag-0x272>
  b6:	2e 68 00 73 74 64    	cs push $0x64747300
  bc:	6c                   	insb   (%dx),%es:(%rdi)
  bd:	69 62 2e 68 00 3c 62 	imul   $0x623c0068,0x2e(%rdx),%esp
  c4:	75 69                	jne    12f <__abi_tag-0x26d>
  c6:	6c                   	insb   (%dx),%es:(%rdi)
  c7:	74 2d                	je     f6 <__abi_tag-0x2a6>
  c9:	69                   	.byte 0x69
  ca:	6e                   	outsb  %ds:(%rsi),(%dx)
  cb:	3e                   	ds
	...

Disassembly of section .debug_loclists:

0000000000000000 <.debug_loclists>:
   0:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
   1:	00 00                	add    %al,(%rax)
   3:	00 05 00 08 00 00    	add    %al,0x800(%rip)        # 809 <__abi_tag+0x46d>
	...
  15:	00 00                	add    %al,(%rax)
  17:	00 04 00             	add    %al,(%rax,%rax,1)
  1a:	1a 01                	sbb    (%rcx),%al
  1c:	55                   	push   %rbp
  1d:	04 1a                	add    $0x1a,%al
  1f:	82                   	(bad)
  20:	02 04 a3             	add    (%rbx,%riz,4),%al
  23:	01 55 9f             	add    %edx,-0x61(%rbp)
  26:	04 82                	add    $0x82,%al
  28:	02 95 02 01 55 04    	add    0x4550102(%rbp),%dl
  2e:	95                   	xchg   %eax,%ebp
  2f:	02 b2 02 04 a3 01    	add    0x1a30402(%rdx),%dh
  35:	55                   	push   %rbp
  36:	9f                   	lahf
  37:	04 b2                	add    $0xb2,%al
  39:	02 bc 02 01 55 04 bc 	add    -0x43fbaaff(%rdx,%rax,1),%bh
  40:	02 d0                	add    %al,%dl
  42:	02 04 a3             	add    (%rbx,%riz,4),%al
  45:	01 55 9f             	add    %edx,-0x61(%rbp)
	...
  50:	00 00                	add    %al,(%rax)
  52:	00 04 00             	add    %al,(%rax,%rax,1)
  55:	21 01                	and    %eax,(%rcx)
  57:	54                   	push   %rsp
  58:	04 21                	add    $0x21,%al
  5a:	36 01 53 04          	ss add %edx,0x4(%rbx)
  5e:	36 82                	ss (bad)
  60:	02 04 a3             	add    (%rbx,%riz,4),%al
  63:	01 54 9f 04          	add    %edx,0x4(%rdi,%rbx,4)
  67:	82                   	(bad)
  68:	02 95 02 01 54 04    	add    0x4540102(%rbp),%dl
  6e:	95                   	xchg   %eax,%ebp
  6f:	02 d0                	add    %al,%dl
  71:	02 01                	add    (%rcx),%al
  73:	53                   	push   %rbx
	...
  80:	00 04 5b             	add    %al,(%rbx,%rbx,2)
  83:	5f                   	pop    %rdi
  84:	01 50 04             	add    %edx,0x4(%rax)
  87:	79 7d                	jns    106 <__abi_tag-0x296>
  89:	01 50 04             	add    %edx,0x4(%rax)
  8c:	97                   	xchg   %eax,%edi
  8d:	01 9b 01 01 50 04    	add    %ebx,0x4500101(%rbx)
  93:	b5 01                	mov    $0x1,%ch
  95:	b9 01 01 50 04       	mov    $0x4500101,%ecx
  9a:	d3 01                	roll   %cl,(%rcx)
  9c:	d7                   	xlat   %ds:(%rbx)
  9d:	01 01                	add    %eax,(%rcx)
  9f:	50                   	push   %rax
  a0:	04 f1                	add    $0xf1,%al
  a2:	01 f5                	add    %esi,%ebp
  a4:	01 01                	add    %eax,(%rcx)
  a6:	50                   	push   %rax
	...
