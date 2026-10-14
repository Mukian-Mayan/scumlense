import 'package:flutter/material.dart';
import 'package:scumlens/Theme/app_theme.dart';
import 'package:scumlens/widgets/bottom_nav_bar.dart';
import 'package:scumlens/widgets/layout1.dart';
import 'package:scumlens/widgets/mini2.dart';

class CheckPage extends StatelessWidget {
  const CheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SW = MediaQuery.of(context).size.width;
    final SH = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppTheme.primary,
      bottomNavigationBar: BottomNavBar(selectedIndex: 1),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Layout1(
            pageName: 'check',
            imageString: 'lib/assets/images/check.png',
            bgColor: AppTheme.charcoal,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Mini2(text: 'Link'),
            
                const SizedBox(),
                
                Mini2(text: 'message'),
                Mini2(text: 'File'),
                Mini2(text: 'app'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
