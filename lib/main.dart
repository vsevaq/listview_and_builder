import 'package:flutter/material.dart';
import 'package:listview_and_builder/my_posts.dart';
import 'my_stories.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List _posts = ['Post 1', 'Post 2', 'Post 3', 'Post 4', 'Post 5', 'Post 6'];

  final List _stories = ['Story 1', 'Story 2', 'Story 3', 'Story 4', 'Story 5', 'Story 6', 'Story 7', 'Story 8'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [

              // instagram stories
              Container(
                height: 120,
                color: Colors.yellow[100],
                child: ListView.builder(
                    itemCount: _stories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MyStories(
                        storiesText: _stories[index],
                      );
                    }),
              ),

              // instagram posts
              Expanded(
                child: ListView.builder(
                    itemCount: _posts.length,
                    itemBuilder: (context, index) {
                      return MyPost(postText: _posts[index]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
