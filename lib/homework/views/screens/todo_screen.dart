import 'package:flutter/material.dart';

import '../../controllers/notes_controller.dart';
import '../../controllers/todos_controller.dart';
import '../../notifiers/notes_notifier.dart';
import '../../notifiers/todos_notifier.dart';
import '../widgets/task_container.dart';
import '../widgets/todo_alert_dialog.dart';

class ToDoScreen extends StatelessWidget {
  const ToDoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TodoController todoController = TodoNotifier.of(context);
    return NoteNotifier(
      noteController: NoteController(),
      child: ListenableBuilder(
        listenable: todoController,
        builder: (BuildContext context, Widget? child) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.blue,
              title: const Text(
                'ToDo',
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: false,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return TodoAlertDialog(
                            todoController: todoController,
                            isEdit: false,
                            index: 0,
                          );
                        },
                      );
                    },
                    child: const Text(
                      'Add todo',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            body: todoController.todosList.isEmpty
                ? const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('There are no todos'),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: todoController.todosList.length,
                    itemBuilder: (context, index) {
                      return CustomTaskContainer(
                        todoController: todoController,
                        index: index,
                      );
                    },
                  ),
          );
        },
      ),
    );
  }
}
