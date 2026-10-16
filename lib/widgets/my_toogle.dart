import 'package:flutter/material.dart';
import 'package:scumlens/Theme/app_theme.dart';

class MyToogle extends StatefulWidget {
  final bool initialValue;


  final ValueChanged<bool>? onTap;


  final double? width;
  final double? height;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? thumbColor;
  final Duration duration;

  const MyToogle({
    super.key,
    this.initialValue = false,
    this.onTap,
    this.width,
    this.height,
    this.activeColor,
    this.inactiveColor,
    this.thumbColor,
    this.duration = const Duration(milliseconds: 200),
  });

  @override
  State<MyToogle> createState() => _ToggleState();
}

class _ToggleState extends State<MyToogle> {
  late bool isOn = widget.initialValue;

  @override
  Widget build(BuildContext context) {
    final SW = MediaQuery.of(context).size.width;
    final SH = MediaQuery.of(context).size.height;

    final w = widget.width ?? SW * 0.14;
    final h = widget.height ?? SH * 0.035;
    final padding = h * 0.1;

    return GestureDetector(
      onTap: () {
        setState(() => isOn = !isOn);
        widget.onTap?.call(isOn);
      },
      child: AnimatedContainer(
        duration: widget.duration,
        width: w,
        height: h,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: isOn
              ? (widget.activeColor ?? AppTheme.green)
              : (widget.inactiveColor ?? AppTheme.charcoal.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(h),
        ),
        child: AnimatedAlign(
          duration: widget.duration,
          alignment: isOn ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            width: h - padding * 2,
            height: h - padding * 2,
            decoration: BoxDecoration(
              color: widget.thumbColor ?? AppTheme.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
