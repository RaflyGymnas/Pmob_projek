import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:projek_pmob/Page/Lokasi.dart';
import 'package:projek_pmob/Page/Profile.dart';
import 'package:projek_pmob/Page/bookmark.dart';
import 'package:projek_pmob/Page/dashboard.dart';
import 'package:floating_navbar/floating_navbar.dart';

class NavBar extends StatefulWidget {
  int Index = 0;
  List Page = [dashboardpage(), const lokasi(), bookmark(), const Profile()];

  NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.Page[widget.Index],
      bottomNavigationBar: FloatingNavBar(
        resizeToAvoidBottomInset: false,
        color: Colors.lightBlue,
        selectedIconColor: Colors.white,
        unselectedIconColor: Colors.white.withOpacity(0.6),
        items: [
          FloatingNavBarItem(
              iconData: Icons.home_outlined,
              page: dashboardpage(),
              title: 'Home'),
          FloatingNavBarItem(
              iconData: Icons.share_location, page: lokasi(), title: 'Lokasi'),
          FloatingNavBarItem(
              iconData: Icons.bookmark, page: bookmark(), title: 'Ditandai'),
          FloatingNavBarItem(
              iconData: Icons.person_2,
              page: Profile(),
              title: 'Profil'),
        ],
        horizontalPadding: 20.0,
        hapticFeedback: true,
        showTitle: true,
      ),
    );
  }
}
