
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../chat/discussions_page.dart';
import '../create_poste _page.dart';
import '../home_page.dart';
import '../home_services.dart';
import '../profile_user_page.dart';
import '../setting_page.dart';
import 'package:badges/badges.dart' as badges;

class CustomBottomNavigationBarDiscussion extends StatefulWidget {
  @override
  _CustomBottomNavigationBarDiscussionState createState() =>
      _CustomBottomNavigationBarDiscussionState();
}

class _CustomBottomNavigationBarDiscussionState extends State<CustomBottomNavigationBarDiscussion> {
  int selectedIndex = 3;

  final List<Widget> pages = [
    HomePage(),
    HomeService(),
    CreatePoste(),
    DiscussionPage(),
    ProfilUser(),



  ];

  int messageNotifications = 2;
  int notificationCount = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAC7C3),
      body: pages[selectedIndex],
      bottomNavigationBar: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: GNav(
          backgroundColor: Color(0xFFFAC7C3),
          tabBackgroundColor: Colors.pink,
          padding: EdgeInsets.all(8.0),
          gap: 10,
          tabs: [
            GButton(
              icon: CupertinoIcons.house,
              text: 'Accueil',
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
            ),
            GButton(
              icon: CupertinoIcons.square_stack,
              text: 'Services',
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),
            GButton(
              icon: CupertinoIcons.plus_square,
              text: 'Publier',
              onPressed: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
            ),
            GButton(
              icon: CupertinoIcons.money_euro_circle,
              text: 'Banque',
              // onPressed: () {
              //   setState(() {
              //     selectedIndex = 3;
              //   });
              // },
            ),

            GButton(
              icon: CupertinoIcons.map_pin_ellipse,
              text: 'Mobilité',
              // onPressed: () {
              //   setState(() {
              //     selectedIndex = 7;
              //   });
              // },
            ),

            GButton(
              icon: CupertinoIcons.bubble_left_bubble_right,
              text: 'Message',
              onPressed: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
            ),
            GButton(
              icon: CupertinoIcons.bell_circle,
              text: 'Notification',
              // onPressed: () {
              //   setState(() {
              //     selectedIndex = 4;
              //   });
              // },
            ),

            GButton(
              icon: CupertinoIcons.profile_circled,
              text: 'Profil',
              onPressed: () {
                setState(() {
                  selectedIndex = 4;
                });
              },
            ),

          ],
        ),
      ),
    );
  }
}