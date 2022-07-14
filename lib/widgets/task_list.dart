// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:todo_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/Models/TaskData.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.taskList[index];
            return TaskTile(
              taskTitle: task.name!,
              isChecked: task.isDone,
              checkBoxCallBack: () {
                taskData.taskUpdate(task);
              },
              deleteBoxCallBack: () {
                taskData.taskDelete(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
//taskData == Provider.of<TaskData>(context)
//taskTitle: widget.tasks![index].name!,