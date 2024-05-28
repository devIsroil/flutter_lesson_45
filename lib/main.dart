import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homework/controllers/notes_controller.dart';
import 'homework/controllers/todos_controller.dart';
import 'homework/notifiers/notes_notifier.dart';
import 'homework/notifiers/todos_notifier.dart';
import 'homework/views/screens/main_page.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return TodoNotifier(
      todoController: TodoController(),
      child: NoteNotifier(
        noteController: NoteController(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
         // home: HomeScreen(),
          home: MainPage(),
        ),
      ),
    );
  }
}
































// import 'package:flutter/material.dart';
// import 'package:flutter_lesson_45/practise/controllers/settings_controller.dart';
// import 'package:flutter_lesson_45/practise/notifier/settings_notifier.dart';
// import 'package:flutter_lesson_45/practise/views/screens/todo_screen.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SettingsNotifier(
//       settingsController: SettingsController(),
//       child: Builder(builder: (context) {
//         return ListenableBuilder(
//             listenable: SettingsNotifier.of(context),
//             builder: (context, child) {
//               return MaterialApp(
//                 debugShowCheckedModeBanner: false,
//                 darkTheme: ThemeData.dark(),
//                 themeMode: SettingsNotifier.of(context).settings.themeMode,
//                 home: const HomeScreen(),
//               );
//             }
//         );
//       }),
//     );
//   }
// }

