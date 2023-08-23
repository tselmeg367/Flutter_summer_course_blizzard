import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/add_post_screen.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});
  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  int _page = 0; //page solihod ashgildag
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: onPageChanged,
          children: [
            HomeScreen(),
            AddPostScreen(),
            ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        showUnselectedLabels: false,
        currentIndex: _page,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                //hilbar if (== ni if ? ni unen baival : ni hudal baibal)
              ),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Profiles',
          ),
        ],
        onTap: navigationTapped,
      ),
    );
  }
}
