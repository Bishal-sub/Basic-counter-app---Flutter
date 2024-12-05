import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int score = 0001;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My application"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
          child: Text("Score:$score",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 30,
              ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          {
            setState(() {
              score = score + 2;
            });
          }
        },
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }
}
