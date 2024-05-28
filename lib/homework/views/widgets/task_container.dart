import 'package:flutter/material.dart';
import 'package:flutter_lesson_45/homework/views/widgets/todo_alert_dialog.dart';

import '../../controllers/todos_controller.dart';
import 'icon_button.dart';

class CustomTaskContainer extends StatelessWidget {
  final int index;
  final TodoController todoController;

  const CustomTaskContainer(
      {super.key, required this.index, required this.todoController});

  @override
  Widget build(BuildContext context) {
    bool isDone = todoController.todosList[index].isDone;

    return Padding(
      padding: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    todoController.toggleDone(todoId: index);
                  },
                  icon: Icon(
                    isDone ? Icons.check_circle : Icons.circle,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      todoController.todosList[index].todoTitle,
                      style: TextStyle(
                        decoration:
                        isDone ? TextDecoration.lineThrough : null,
                      ),
                    ),
                    Text(
                      todoController.todosList[index].todoCreatedDate
                          .toString()
                          .split(' ')[0],
                      style: TextStyle(
                        decoration:
                        isDone ? TextDecoration.lineThrough : null,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 5,),
            Expanded(
              child: Text(
                todoController.todosList[index].todoContent,
                style: TextStyle(
                  decoration: isDone ? TextDecoration.lineThrough : null,
                ),
              ),
            ),
            Row(
              children: [
                CustomIconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => TodoAlertDialog(
                        todoController: todoController,
                        isEdit: true,
                        index: index,
                      ),
                    );
                  },
                  icon: Icons.edit,
                ),
                CustomIconButton(
                  onPressed: () {
                    todoController.deleteTodo(todoIndex: index);
                  },
                  icon: Icons.delete,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
