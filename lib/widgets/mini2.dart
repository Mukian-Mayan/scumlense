import 'package:flutter/material.dart';
import 'package:scumlens/Theme/app_theme.dart';

class Mini2 extends StatefulWidget {
  final String text;

  const Mini2({super.key, required this.text});

  @override
  State<Mini2> createState() => _MiniContainerState();
}

class _MiniContainerState extends State<Mini2> {
  @override
  Widget build(BuildContext context) {
    final SW = MediaQuery.of(context).size.width;
    final SH = MediaQuery.of(context).size.height;

    return Container(
      height: SH * 0.047,
      //width: SW * 0.2,
      decoration: BoxDecoration(
        color: AppTheme.black,
        borderRadius: BorderRadius.circular(SW * 0.03),
        //boxShadow: [BoxShadow(color: AppTheme., offset: Offset(-5, 0))],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
          child: Text(
            widget.text,
            style: TextStyle(
              color: AppTheme.white,
              fontSize: SW * 0.05,
              fontFamily: 'LeagueSpartan',
            ),
          ),
        ),
      ),
    );
  }
}
