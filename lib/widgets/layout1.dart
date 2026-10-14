import 'package:flutter/material.dart';
import 'package:scumlens/Theme/app_theme.dart';

class Layout1 extends StatelessWidget {
  final Color bgColor;
  final String imageString;
  final String pageName;

  const Layout1({super.key, required this.bgColor, required this.imageString, required this.pageName});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: screenWidth * double.infinity,
              height: screenHeight * 0.3,
              decoration: BoxDecoration(
                color: AppTheme.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(screenWidth * 0.15),
                  bottomRight: Radius.circular(screenWidth * 0.15),
                ),
              ),
            ),
            Container(
              width: screenWidth * double.infinity,
              height: screenHeight * 0.289,
              clipBehavior: Clip.antiAlias,

              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(screenWidth * 0.15),
                  bottomRight: Radius.circular(screenWidth * 0.15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          imageString,

                          //height: 20,
                          //width: 20,
                          //fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: screenWidth * 0.05,
                          left: screenWidth * 0.09,
                          child: Text(
                            pageName,
                            style: TextStyle(
                              fontFamily: 'hidayatullah',
                              fontSize: screenWidth * 0.1,
                              color: AppTheme.white,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: screenWidth * 0.09,
                          right: screenWidth * 0.09,
                          child: Icon(
                            Icons.apps_rounded,
                            color: AppTheme.white,
                            size: screenWidth * 0.07,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
