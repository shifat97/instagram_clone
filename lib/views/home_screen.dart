import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/views/home_screen_header.dart';
import 'package:instagram_clone/views/home_screen_post.dart';
import 'package:instagram_clone/views/home_screen_story.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static final List<Widget> _pages = [
    SvgPicture.asset('assets/icons/tab_1.svg'),
    SvgPicture.asset('assets/icons/tab_2.svg'),
    SvgPicture.asset('assets/icons/tab_3.svg'),
    SvgPicture.asset('assets/icons/like.svg'),
    Container(
      height: 23,
      width: 23,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Image.asset(
          'assets/images/user.jpg',
          fit: BoxFit.cover,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: const Column(
          children: [
            HomeScreenHeader(),
            HomeScreenStory(),
            HomeScreenPost(),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.black.withOpacity(0.1),
                width: 2,
              ),
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            elevation: 10,
            onTap: (value) {},
            items: List.generate(_pages.length, (index) {
              return BottomNavigationBarItem(
                icon: _pages[index],
                label: '',
              );
            }),
          ),
        ),
      ),
    );
  }
}
