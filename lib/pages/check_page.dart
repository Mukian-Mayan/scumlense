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

          const SizedBox(height: 25),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Mini2(text: 'Link'),

              const SizedBox(),

              Mini2(text: 'message'),
              Mini2(text: 'File'),
              Mini2(text: 'app'),
            ],
          ),

          const SizedBox(height: 10),

          Container(
            height: SH * 0.063,
            width: SW * 0.87,
            decoration: BoxDecoration(
              color: AppTheme.white,
              borderRadius: BorderRadius.circular(SW * 0.03),
              boxShadow: [
                BoxShadow(color: AppTheme.black, offset: Offset(-5, 0)),
              ],
            ),
            child: Text(
              'paste link here or message',
              style: TextStyle(color: AppTheme.charcoal.withOpacity(0.2)),
            ),
          ),

          const SizedBox(height: 25),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'see all',
                  style: TextStyle(
                    color: AppTheme.black.withOpacity(0.5),
                    fontSize: SW * 0.047,
                    fontFamily: 'LeagueSpartan',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'auto check',
                  style: TextStyle(
                    color: AppTheme.black.withOpacity(0.6),
                    fontSize: SW * 0.047,
                    fontFamily: 'LeagueSpartan',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
