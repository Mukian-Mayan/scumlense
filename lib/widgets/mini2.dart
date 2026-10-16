import 'package:flutter/material.dart';
import 'package:scumlens/Theme/app_theme.dart';

class Mini2 extends StatefulWidget {
  final String text;
  final bool initiallySelected;
  final ValueChanged<bool>? onChanged;

  const Mini2({
    super.key,
    required this.text,
    this.initiallySelected = false,
    this.onChanged,
  });

  @override
  State<Mini2> createState() => _MiniContainerState();
}

class _MiniContainerState extends State<Mini2> {
  late bool isSelected = widget.initiallySelected;

  @override
  Widget build(BuildContext context) {
    final SW = MediaQuery.of(context).size.width;
    final SH = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        setState(() => isSelected = !isSelected);
        widget.onChanged?.call(isSelected);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: SH * 0.047,
        decoration: BoxDecoration(
          color: isSelected ? AppTheme.green : AppTheme.white,
          borderRadius: BorderRadius.circular(SW * 0.03),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            child: Text(
              widget.text,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: isSelected
                    ? AppTheme.white
                    : AppTheme.charcoal.withOpacity(0.6),
                fontSize: SW * 0.05,
                fontFamily: 'LeagueSpartan',
              ),
            ),
          ),
        ),
      ),
    );
  }
}