import 'package:flutter/material.dart';
import 'package:scumlens/Theme/app_theme.dart';
import 'package:scumlens/widgets/bottom_nav_bar.dart';
import 'package:scumlens/widgets/input_search_bar.dart';
import 'package:scumlens/widgets/layout1.dart';
import 'package:scumlens/widgets/mini2.dart';
import 'package:scumlens/widgets/my_Container.dart';
import 'package:scumlens/widgets/my_toogle.dart';
import 'package:scumlens/widgets/widget_layout.dart';

class CheckPage extends StatelessWidget {
  const CheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SW = MediaQuery.of(context).size.width;
    final SH = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,

      backgroundColor: AppTheme.primary,
      bottomNavigationBar: BottomNavBar(selectedIndex: 1),

      body: SingleChildScrollView(
        child: Column(
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

            InputSearchBar(),

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

                  Row(
                    children: [
                      Text(
                        'auto check',
                        style: TextStyle(
                          color: AppTheme.black.withOpacity(0.6),
                          fontSize: SW * 0.047,
                          fontFamily: 'LeagueSpartan',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(width: 5),

                      MyToogle(),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            WidgetLayout(
              left: MyContainer(
                imagePath: 'lib/assets/images/filemanager.png',
                title: 'recents',
                showTicks: false,
              ),
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

            const SizedBox(height: 15),

            MyContainer(
              description:
                  'This is to aid Procecutions on direct link and qrcode oppenings',
              imagePath: 'lib/assets/images/key.png',
              title: 'Link / Qr code check',
              subtitle: 'pre-link Safety check',
              color: AppTheme.black,
              isRead: false,
              tickInCircle: false,
              onTap: () {},
            ),

            const SizedBox(height: 15),

            MyContainer(
              //description: 'This is to aid Procecutions on direct link and qrcode oppenings',
              imagePath: 'lib/assets/images/files.png',
              title: 'File Check',
              subtitle: 'extension and disguise check',
              color: AppTheme.black,
              isRead: false,
              tickInCircle: false,
              onTap: () {},
            ),
            const SizedBox(height: 15),

            MyContainer(
              //description: 'This is to aid Procecutions on direct link and qrcode oppenings',
              imagePath: 'lib/assets/images/messages.png',
              title: 'SMS, message Check',
              subtitle: 'mobile money, loans, transactions, jobscums, ',
              color: AppTheme.black,
              isRead: false,
              tickInCircle: false,
              onTap: () {},
            ),

            Text('hello', style: TextStyle(fontSize: 70, color: Colors.amber)),

            //main column
          ],
        ),
      ),
    );
  }
}
