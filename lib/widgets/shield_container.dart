import 'package:flutter/material.dart';
import 'package:scumlens/Theme/app_theme.dart';

class ShieldContainer extends StatefulWidget {
  const ShieldContainer({super.key});

  @override
  State<ShieldContainer> createState() => _ShieldContainerState();
}

class _ShieldContainerState extends State<ShieldContainer> {
  @override
  Widget build(BuildContext context) {
    final SH = MediaQuery.of(context).size.height;
    final SW = MediaQuery.of(context).size.width;
    return Container(
      width: SW * 0.95,
      height: SH * 0.28,
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 10, bottom: 10),
        child: Row(
          children: [
            // column 1 for %age
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '28',
                      style: TextStyle(
                        color: AppTheme.charcoal,
                        fontSize: SW * 0.2,
                        fontFamily: 'BebasNeue',
                      ),
                    ),
                    Text(
                      '%',
                      style: TextStyle(
                        color: AppTheme.charcoal,
                        fontSize: SW * 0.08,
                        fontFamily: 'BebasNeue',
                      ),
                    ),
                  ],
                ),

                //cont SizedBox(),
                Transform.translate(
                  offset: const Offset(0, -25),
                  child: Text(
                    'protected',
                    style: TextStyle(
                      color: AppTheme.charcoal,
                      fontSize: SW * 0.06,
                      fontFamily: 'BebasNeue',
                    ),
                  ),
                ),
              ],
            ),

            //column 2 circular responsive button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: SW * 0.4,
                    height: SH * 0.25,
                    color: AppTheme.green,
                  ),

                  const SizedBox(height: 2),

                  Text(
                    'scanning , checking , synchronising',
                    style: TextStyle(
                      color: AppTheme.charcoal,
                      fontSize: SW * 0.025,
                      fontFamily: 'LeagueSpartan',
                    ),
                  ),
                  //Positioned(                      ),
                ],
              ),
            ),

            //column 3 settings and other stats
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.settings, size: SW * 0.06),
                /*ListTile(
                        leading: Text('Uptime'),
                        trailing: Text('54:09:52'),
                      ),*/

                //row1
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'uptime: ',
                      style: TextStyle(
                        color: AppTheme.charcoal,
                        fontSize: SW * 0.03,
                        fontFamily: 'LeagueSpartan',
                      ),
                    ),
                    Text(
                      '00:00:00',
                      style: TextStyle(
                        color: AppTheme.charcoal,
                        fontSize: SW * 0.05,
                        fontFamily: 'BebasNeue',
                      ),
                    ),
                  ],
                ),

                //row 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Real Time: ',
                      style: TextStyle(
                        color: AppTheme.charcoal,
                        fontSize: SW * 0.03,
                        fontFamily: 'LeagueSpartan',
                      ),
                    ),
                    Text(
                      'ON',
                      style: TextStyle(
                        color: AppTheme.charcoal,
                        fontSize: SW * 0.05,
                        fontFamily: 'BebasNeue',
                      ),
                    ),
                  ],
                ),

                //row 3
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mode: ',
                      style: TextStyle(
                        color: AppTheme.charcoal,
                        fontSize: SW * 0.03,
                        fontFamily: 'LeagueSpartan',
                      ),
                    ),
                    Text(
                      'balanced',
                      style: TextStyle(
                        color: AppTheme.charcoal,
                        fontSize: SW * 0.05,
                        fontFamily: 'BebasNeue',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
