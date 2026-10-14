import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:scumlens/Theme/app_theme.dart';
import 'package:scumlens/pages/check_page.dart';
import 'package:scumlens/pages/report_page.dart';
import 'package:scumlens/pages/shield_page.dart';

class BottomNavBar extends StatefulWidget {
  final int selectedIndex;
  const BottomNavBar({super.key, required this.selectedIndex});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  void _handleTabChange(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ShieldPage()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CheckPage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ReportPage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    //final screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    //final SW = screenWidth * 0.05;

    return SafeArea(
      child: Container(
        //width: screenWidth * 0.2,
        //color: AppTheme.black.withOpacity(0.001),
        color: Colors.transparent,

        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, bottom: 10),
          child: Container(
            //width: screenWidth * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                40,
                //topLeft: Radius.circular(40),
                //topRight: Radius.circular(40),
              ),
              color: AppTheme.black.withOpacity(0.2),
              boxShadow: [
                BoxShadow(
                  color: AppTheme.black.withValues(alpha: 0.15),
                  blurRadius: 5,
                  offset: const Offset(2, 2),
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 15,
              ),
              child: GNav(
                //Padding = const EdgeInsets.all(25),
                
                selectedIndex: widget.selectedIndex,
                backgroundColor: Colors.transparent,
                textStyle: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontFamily: 'LeagueSpartan',
                  fontWeight: FontWeight.w400,
                  color: AppTheme.white,
                ),
                gap: 7,
                padding: const EdgeInsets.all(8),
                activeColor: AppTheme.white,
                color: AppTheme.white,
                tabBackgroundColor: AppTheme.black,
                //tabBorder: Border(BorderSide top = BorderSide.none),
                onTabChange: (index) => _handleTabChange(context, index),
                tabs: const [
                  GButton(icon: Icons.shield_outlined, text: 'Shield'),
                  GButton(icon: Icons.search, text: 'Check'),
                  GButton(icon: Icons.report, text: 'Report'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
