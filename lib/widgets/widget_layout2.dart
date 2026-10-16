import 'package:flutter/material.dart';
import 'package:scumlens/widgets/my_Container.dart';

class WidgetLayout2 extends StatelessWidget {
  final List<List<Widget>> columns;
  final double? width, height;

  const WidgetLayout2({
    super.key,
    this.columns = const [
      [MyContainer(showTicks: false)],
      [MyContainer.compact(), MyContainer.compact(), MyContainer.compact()],
    ],
    this.width,
    this.height, required List<MyContainer> left,
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
          for (int c = 0; c < columns.length; c++) ...[
            if (c > 0) SizedBox(width: gap),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (int i = 0; i < columns[c].length; i++) ...[
                    if (i > 0) SizedBox(height: gap),
                    Expanded(child: columns[c][i]),
                  ],
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}