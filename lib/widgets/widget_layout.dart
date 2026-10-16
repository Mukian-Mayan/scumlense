import 'package:flutter/material.dart';
import 'package:scumlens/widgets/my_Container.dart'; // adjust path

class WidgetLayout extends StatelessWidget {
  final MyContainer left;
  final List<MyContainer> right; // meant for 3 items
  final double? width, height;

  const WidgetLayout({
    super.key,
    this.left = const MyContainer(showTicks: false),
    this.right = const [
      MyContainer(fontScale: 0.75, imageFlex: 30),
      MyContainer(fontScale: 0.75, imageFlex: 30),
      MyContainer(fontScale: 0.75, imageFlex: 30),
    ],
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final gap = size.width * 0.02;

    return SizedBox(
      width: width ?? size.width * 0.9,
      height: height ?? size.height * 0.3,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: left),
          SizedBox(width: gap),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (int i = 0; i < right.length; i++) ...[
                  if (i > 0) SizedBox(height: gap),
                  Expanded(child: right[i]),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}