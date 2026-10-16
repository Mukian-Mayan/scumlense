import 'package:flutter/material.dart';
import 'package:scumlens/Theme/app_theme.dart';

class InputSearchBar extends StatelessWidget {
  const InputSearchBar({super.key});

  @override
  Widget build(BuildContext context) {

    final SW = MediaQuery.of(context).size.width;
    final SH = MediaQuery.of(context).size.height;
    return Container(
            height: SH * 0.063,
            width: SW * 0.87,
            decoration: BoxDecoration(
              color: AppTheme.white,
              borderRadius: BorderRadius.circular(SW * 0.03),
              boxShadow: [
                BoxShadow(color: AppTheme.black, offset: Offset(-5, 0)),
              ],
            ),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              style: TextStyle(color: AppTheme.charcoal),
              decoration: InputDecoration(
                isDense: true,
                hintText: 'paste link here or message',
                hintStyle: TextStyle(color: AppTheme.charcoal.withOpacity(0.2)),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: SW * 0.04,
                  vertical: SH * 0.02,
                ),
                suffixIcon: Icon(Icons.search, color: AppTheme.black),
              ),
            ),
          );
  }
}