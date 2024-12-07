import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/views/home_screen_header.dart';
import 'package:instagram_clone/views/home_screen_post.dart';
import 'package:instagram_clone/views/home_screen_story.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            HomeScreenHeader(),
            HomeScreenStory(),
            HomeScreenPost(),
          ],
        ),
      ),
    );
  }
}
