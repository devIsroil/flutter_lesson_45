import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lesson_45/homework/views/screens/todo_screen.dart';
import 'package:flutter_lesson_45/homework/views/screens/note_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Home",style: TextStyle(color: Colors.white),),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ToDoScreen()));
              },
              child: Text(
                "ToDo Page",
                style: TextStyle(fontSize: 24),
              )),
          SizedBox(height: 10,),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => NoteScreen()));
              },
              child: Text(
                "Notes Page",
                style: TextStyle(fontSize: 24),
              )),
        ],
      )),
    );
  }
}
