import 'package:flutter/material.dart';

void main() {
  // Center is a widget, Text is a widget
  runApp(
    MyApp(name: 'Hoang', age: 18,), // Hwo to send arguments/params to this Widget
  );
}

// You can define your own Widget
class MyApp extends StatelessWidget {
  String name;
  int age;
  MyApp({required this.name, required this.age});
  //StatelessWidget: widget which donot have "state"(property which has been changed <-> User Interface)
  @override
  Widget build(BuildContext context) {
    // build: abstract method from parent class(StatlessWidget)
    return MaterialApp(
        title: "This is my first app",
        home: Scaffold(
          body: Center(
            child: Text(
              "Hello $name, age: $age",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),
              textDirection: TextDirection.ltr,
            ),
          ),
        )
    );
  }
}
