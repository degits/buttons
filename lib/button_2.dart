import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  const Button2({super.key});

  final String imageUrl =
      "https://images.unsplash.com/photo-1501696461415-6bd6660c6742?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=40";
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10.0),
      clipBehavior: Clip.antiAlias,
      child: Ink.image(
        image: NetworkImage(imageUrl),
        fit: BoxFit.cover,
        width: 200.0,
        height: 200.0,
        child: InkWell(
          onTap: () {
            // Handle the click event here
            print('Image clicked!');
          },
          splashColor: Colors.white.withOpacity(0.5),
          highlightColor: Colors.transparent,
        ),
      ),
    );
  }
}
