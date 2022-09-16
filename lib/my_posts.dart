import 'package:flutter/material.dart';

class MyPost extends StatelessWidget {
  final String postText;

  MyPost({required this.postText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 250,
        color: Colors.green,
        child: Center(
          child: Text(
            postText,
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),
      ),
    );
  }
}
