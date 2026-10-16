import 'package:flutter/material.dart';
import 'package:scumlens/Theme/app_theme.dart';

class MyContainer extends StatelessWidget {
  final String? imagePath;
  final String description, title, subtitle;
  final Color? color, textColor;
  final bool isRead, tickInCircle, showTicks;
  final VoidCallback? onTap;
  final double? width, height;
  final double fontScale; // 1 = normal, 0.75 = compact
  final int imageFlex;    // % of the card left open for the image

  const MyContainer({
    super.key,
    this.imagePath,
    this.description = '',
    this.title = '',
    this.subtitle = '',
    this.color,
    this.textColor,
    this.isRead = false,
    this.tickInCircle = false,
    this.showTicks = true,
    this.onTap,
    this.width,
    this.height,
    this.fontScale = 1,
    this.imageFlex = 45,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final SW = size.width, SH = size.height;
    final txt = textColor ?? AppTheme.white;

    Widget line(String s, double fs, FontWeight w, double op, int lines) =>
        s.isEmpty
            ? const SizedBox.shrink()
            : Text(
                s,
                textAlign: TextAlign.right,
                maxLines: lines,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: w,
                  color: txt.withOpacity(op),
                  fontSize: SW * fs * fontScale,
                  fontFamily: 'LeagueSpartan',
                ),
              );

    Widget ticks = Icon(
      Icons.done_all,
      size: SW * 0.045 * fontScale,
      color: isRead ? AppTheme.blue : Colors.grey,
    );
    if (tickInCircle) {
      ticks = CircleAvatar(
        radius: SW * 0.03 * fontScale,
        backgroundColor: AppTheme.white,
        child: ticks,
      );
    }

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        width: width ?? SW * 0.9,
        height: height ?? SH * 0.2,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: color ?? AppTheme.charcoal.withOpacity(0.1),
          borderRadius: BorderRadius.circular(SW * 0.03),
          image: imagePath == null
              ? null
              : DecorationImage(
                  image: AssetImage(imagePath!),
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                ),
        ),
        child: Container(
          padding: EdgeInsets.all(SW * 0.04 * fontScale),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              stops: const [0.35, 1],
              colors: [Colors.transparent, Colors.black.withOpacity(0.65)],
            ),
          ),
          child: Row(
            children: [
              Spacer(flex: imageFlex),
              Expanded(
                flex: 100 - imageFlex,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    line(title, 0.045, FontWeight.w700, 1, 2),
                    line(subtitle, 0.035, FontWeight.w400, 0.7, 2),
                    if (description.isNotEmpty) ...[
                      SizedBox(height: SH * 0.03),
                      line(description, 0.03, FontWeight.w400, 0.8, 3),
                    ],
                    if (showTicks) ...[
                      SizedBox(height: SH * 0.01),
                      ticks,
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*class MyContainer extends StatelessWidget {
  final String? imagePath;
  final String description, title, subtitle;
  final Color? color, textColor;
  final bool isRead, tickInCircle;
  final VoidCallback? onTap;
  final double? width, height;

  const MyContainer({
    super.key,
    this.imagePath,
    this.description = '',
    this.title = '',
    this.subtitle = '',
    this.color,
    this.textColor,
    this.isRead = false,
    this.tickInCircle = false,
    this.onTap,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final SW = size.width, SH = size.height;
    final txt = textColor ?? AppTheme.white;

    Text line(String s, double fs, FontWeight w, double op, int lines) => Text(
      s,
      textAlign: TextAlign.right,
      maxLines: lines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: w,
        color: txt.withOpacity(op),
        fontSize: SW * fs,
        fontFamily: 'LeagueSpartan',
      ),
    );

    Widget ticks = Icon(
      Icons.done_all,
      size: SW * 0.045,
      color: isRead ? AppTheme.blue : Colors.grey,
    );
    if (tickInCircle) {
      ticks = CircleAvatar(
        radius: SW * 0.03,
        backgroundColor: AppTheme.white,
        child: ticks,
      );
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? SW * 0.9,
        height: height ?? SH * 0.2,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: color ?? AppTheme.charcoal.withOpacity(0.1),
          borderRadius: BorderRadius.circular(SW * 0.03),
          image: imagePath == null
              ? null
              : DecorationImage(
                  image: AssetImage(imagePath!),
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                ),
        ),
        child: Container(
          padding: EdgeInsets.all(SW * 0.04),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              stops: const [0.35, 1],
              colors: [Colors.transparent, Colors.black.withOpacity(0.65)],
            ),
          ),
          child: Row(
            children: [
              const Spacer(flex: 45),
              Expanded(
                flex: 55,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    line(title, 0.045, FontWeight.w700, 1, 2),
                    line(subtitle, 0.035, FontWeight.w400, 0.7, 2),
                    SizedBox(height: SH * 0.03),
                    line(description, 0.03, FontWeight.w400, 0.8, 3),
                    //const Spacer(),
                    ticks,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

*/