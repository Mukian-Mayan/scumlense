import 'package:flutter/material.dart';
import 'package:scumlens/Theme/app_theme.dart';
import 'package:scumlens/widgets/bottom_nav_bar.dart';
import 'package:scumlens/widgets/layout1.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;


    return Scaffold(
      backgroundColor: AppTheme.primary,
      bottomNavigationBar: BottomNavBar(selectedIndex: 2),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Layout1(
            pageName: 'Report',
            imageString: 'lib/assets/images/report.png',
            bgColor: AppTheme.grey,
          ),
        ],
      ),
    );
  }
}


