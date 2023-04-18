import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  const Button1({super.key});

 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Text('Flat Button'),
      ),
    );
  }
}
