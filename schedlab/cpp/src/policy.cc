#include "policy.h"
#include <cstdio>
#include <map>

typedef int task_id_t;

char task_name[5][15] = {"kTimer", "kTaskArrival", "kTaskFinish", "kIoRequest", "kIoEnd"};




struct TaskKey {
    task_id_t taskId;
    int deadline;
    int priority;
    int arrivalTime;
    TaskKey() = default;
    TaskKey(const Event::Task& _task)
        : taskId(_task.taskId), deadline(_task.deadline), arrivalTime(_task.arrivalTime)
    {
        priority = (_task.priority == Event::Task::Priority::kHigh);
    }
    int operator<(const TaskKey& other) const {
        return deadline - 1.15 * arrivalTime < other.deadline - 1.15 * other.arrivalTime || priority > other.priority;
    }
};

std::map<TaskKey, int> cpu_task;
std::map<TaskKey, int> io_task;

Action action { 0, 0 };

void pop_task(std::map<TaskKey, int>& task, int task_id) {
    for (auto it = task.begin(); it != task.end(); ++it) {
        if (it->first.taskId == task_id) {
            task.erase(it);
            break;
        }
    }
}

Action policy(const std::vector<Event>& events, int current_cpu,
                    int current_io) {

    // printf("<%d %d>", current_cpu, current_io);


    // 遍历所有事件，将到达的任务添加到队列中
    for (const auto& event : events) {
        // printf("Event Task=%s%d ", task_name[(unsigned int)event.type], event.task.taskId);

        if (event.type == Event::Type::kTaskArrival) {
            cpu_task.emplace(std::make_pair(TaskKey(event.task), event.task.taskId));

        } else if (event.type == Event::Type::kIoEnd) {
            cpu_task.emplace(std::make_pair(TaskKey(event.task), event.task.taskId));
            pop_task(io_task, event.task.taskId);

        } else if (event.type == Event::Type::kIoRequest) {
            io_task.emplace(std::make_pair(TaskKey(event.task), event.task.taskId));
            pop_task(cpu_task, event.task.taskId);

        } else if (event.type == Event::Type::kTaskFinish) {
            pop_task(cpu_task, event.task.taskId);

        } else {
            // Timer
        }
    }

    // printf("(%lu %lu)", io_task.size(), cpu_task.size());

    action = { current_cpu, current_io };

    if (!current_io && io_task.size()) {
        action.ioTask = io_task.begin()->first.taskId;
    }

    action.cpuTask = cpu_task.begin()->first.taskId;

    // printf("[%d %d]\n", action.cpuTask, action.ioTask);

    return action;
}

