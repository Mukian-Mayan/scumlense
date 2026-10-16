import 'package:flutter/material.dart';
import 'package:scumlens/Theme/app_theme.dart';
import 'package:scumlens/widgets/bottom_nav_bar.dart';
import 'package:scumlens/widgets/layout1.dart';
import 'package:scumlens/widgets/my_Container.dart';
import 'package:scumlens/widgets/widget_layout2.dart';

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

          const SizedBox(height: 15,)

WidgetLayout2(
  left: [
    MyContainer(
      imagePath: 'lib/assets/images/stats.jpeg',
      title: 'One',
      subtitle: 'Sub',
      fontScale: 0.75,
      imageFlex: 30,
    ),
    MyContainer(
      imagePath: 'lib/assets/images/code.png',
      title: 'Two',
      subtitle: 'Sub',
      fontScale: 0.75,
      imageFlex: 30,
    ),
    MyContainer(
      imagePath: 'lib/assets/images/jigsaw.jpeg',
      title: 'Three',
      subtitle: 'Sub',
      fontScale: 0.75,
      imageFlex: 30,
    ),
  ],
  right: [
    MyContainer(
      imagePath: 'lib/assets/images/stats.jpeg',
      title: 'One',
      subtitle: 'Sub',
      fontScale: 0.75,
      imageFlex: 30,
    ),
    MyContainer(
      imagePath: 'lib/assets/images/code.png',
      title: 'Two',
      subtitle: 'Sub',
      fontScale: 0.75,
      imageFlex: 30,
    ),
    MyContainer(
      imagePath: 'lib/assets/images/jigsaw.jpeg',
      title: 'Three',
      subtitle: 'Sub',
      fontScale: 0.75,
      imageFlex: 30,
    ),
  ],
),



          //main column

        ],
      ),
    );
  }
}


