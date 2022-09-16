import 'package:flutter/material.dart';

class MyStories extends StatelessWidget {
  final String storiesText;

  MyStories({required this.storiesText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.purple,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            storiesText,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
