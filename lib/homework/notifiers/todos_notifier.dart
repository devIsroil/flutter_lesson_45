import 'package:flutter/material.dart';

import '../controllers/todos_controller.dart';

class TodoNotifier extends InheritedWidget {
  final TodoController todoController;

  const TodoNotifier({
    super.key,
    required this.todoController,
    required super.child,
  });

  @override
  bool updateShouldNotify(covariant TodoNotifier oldWidget) {
    return oldWidget.todoController != todoController;
  }

  static TodoController of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<TodoNotifier>()!
        .todoController;
  }
}