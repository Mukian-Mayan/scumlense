import 'package:flutter/material.dart';
import 'package:scumlens/Theme/app_theme.dart';

class Mini1 extends StatefulWidget {
  final String digit;
  final String text;
  final Color offsetColor;

  const Mini1({
    super.key,
    required this.offsetColor,
    required this.digit,
    required this.text,
  });

  @override
  State<Mini1> createState() => _MiniContainerState();
}

class _MiniContainerState extends State<Mini1> {
  @override
  Widget build(BuildContext context) {
    final SW = MediaQuery.of(context).size.width;
    final SH = MediaQuery.of(context).size.height;

    return Container(
      height: SH * 0.063,
      width: SW * 0.25,
      decoration: BoxDecoration(
        color: AppTheme.black,
        borderRadius: BorderRadius.circular(SW * 0.03),
        boxShadow: [BoxShadow(color: widget.offsetColor, offset: Offset(-5, 0))],
      ),
      child: Column(
        children: [
          Text(
            widget.digit,
            style: TextStyle(
              color: AppTheme.white,
              fontSize: SW * 0.05,
              fontFamily: 'BebasNeue',
            ),
          ),

          Transform.translate(
            offset: const Offset(0, -8),
            child: Text(
              widget.text,
              style: TextStyle(
                color: AppTheme.white,
                fontSize: SW * 0.05,
                fontFamily: 'LeagueSpartan',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
