// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:new_app/constant/colors.dart';
import 'package:new_app/pages/userspages/accueil.dart';
import 'package:new_app/pages/userspages/employes.dart';
import 'package:new_app/pages/userspages/employeurs.dart';
import 'package:new_app/pages/userspages/profile.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  final PageController _pageController = PageController();

  int currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: GNav(
            onTabChange: (index) {
              // navigate to the tabed page
              _pageController.jumpToPage(index);
              setState(() {
                currentPage = index;
              });
            },

            haptic: true, // haptic feedback
            tabBorderRadius: 15,
            duration: Duration(milliseconds: 400), // tab animation duration
            gap: 8, // the tab button gap between icon and text
            color: Colors.grey.shade400, // unselected icon color
            activeColor: mainColor, // selected icon and text color
            padding: EdgeInsets.symmetric(
                horizontal: 20, vertical: 15), // navigation bar padding
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Accueil',
              ),
              GButton(
                icon: Icons.business_sharp,
                text: 'Employeurs',
              ),
              GButton(
                icon: Icons.person,
                text: 'Employés',
              ),
              GButton(
                icon: Icons.person_2,
                text: 'Profile',
              )
            ]),
        body: PageView(
          onPageChanged: (index) {},
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: [
            Accueil(),
            Employeurs(),
            Employes(),
            Profile(),
          ],
        ),
      ),
    );
  }
}
