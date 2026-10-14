import 'package:flutter/material.dart';
import 'package:scumlens/Theme/app_theme.dart';
import 'package:scumlens/widgets/bottom_nav_bar.dart';
import 'package:scumlens/widgets/layout1.dart';
import 'package:scumlens/widgets/mini1.dart';
import 'package:scumlens/widgets/shield_container.dart';

class ShieldPage extends StatelessWidget {
  const ShieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SW = MediaQuery.of(context).size.width;
    final SH = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppTheme.primary,
      bottomNavigationBar: BottomNavBar(selectedIndex: 0),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Layout1(
            pageName: 'Shield',
            imageString: 'lib/assets/images/shield.png',
            bgColor: AppTheme.black,
          ),

          const SizedBox(height: 25),

          ShieldContainer(),

          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Mini1(
                digit: '12',
                text: 'checked',
                offsetColor: AppTheme.green,
              ),

              const SizedBox(width: 15),

              Mini1(
                digit: '18',
                text: 'Blocked',
                offsetColor: AppTheme.blue.withOpacity(0.7),
              ),

              const SizedBox(width: 15),

              Mini1(
                digit: '3',
                text: 'Threats',
                offsetColor: AppTheme.red,
              ),
            ],
          ),

          const SizedBox(height: 15),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: SW * 0.06),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Live Feed',
                  style: TextStyle(
                    color: AppTheme.black.withOpacity(0.5),
                    fontSize: SW * 0.05,
                    fontFamily: 'LeagueSpartan',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'see all',
                  style: TextStyle(
                    color: AppTheme.black.withOpacity(0.6),
                    fontSize: SW * 0.05,
                    fontFamily: 'LeagueSpartan',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          //more divs
          Container(
            height: SH * 0.063,
            width: SW * 0.87,
            decoration: BoxDecoration(
              color: AppTheme.white,
              borderRadius: BorderRadius.circular(SW * 0.03),
              boxShadow: [
                BoxShadow(color: AppTheme.blue, offset: Offset(-5, 0)),
              ],
            ),
            child: ListTile(
              
              //titleAlignment: ListTileTitleAlignment.center,
              //tileColor: AppTheme.green,
              minVerticalPadding: 10,
              title: Text(
                'mtn.momo.promo.discount',
                style: TextStyle(
                  color: AppTheme.black,
                  //fontSize: SW * 0.05,
                  fontFamily: 'LeagueSpartan',
                ),
              ),
              subtitle: Text('WhatsappLink mtnPromo'),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: SW * 0.2,
                    height: 20,
                    decoration: BoxDecoration(
                      color: AppTheme.blue.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(SW * 0.015),
                    ),
                    child: Center(
                      child: Text(
                        'Suspect',
                        style: TextStyle(
                          color: AppTheme.white,
                          //fontSize: SW * 0.05,
                          fontFamily: 'LeagueSpartan',
                        ),
                      ),
                    ),
                  ),
                  Text('now'),
                ],
              ),
            ),
          ),

          //column continued
        ],
      ),
    );
  }
}
