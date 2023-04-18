import 'package:buttons/button_1.dart';
import 'package:buttons/button_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Buttons"),
      ),
      body: ListView(
        children: const [
          Item(
            detail: "Simple text button",
            button: Button1(),
          ),
          Item(
            detail: "Button with background image", 
            button: Button2(),
          ),
      ]),
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    Key? key,
    required this.detail,
    required this.button,
  }) : super(key: key);

  final Widget button;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 100, 157, 214),
              borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(detail)),
            ),
          ),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 40.0,
          ),
          child: SizedBox(
            height: 100,
            child: Center(child: button),
          )
        ),
        const Divider(
          thickness: 3.0,
        )
      ],
    );
  }
}
