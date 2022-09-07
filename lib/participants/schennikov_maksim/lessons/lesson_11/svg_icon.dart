import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  final String name;
  final String? semanticLabel;
  final Color? color;
  final double? size;

  const SvgIcon(
    this.name, {
    super.key,
    this.color,
    this.size,
    this.semanticLabel,
  });

  @override
  Widget build(BuildContext context) {
    final osString = Theme.of(context).platform == TargetPlatform.iOS ? 'ios/' : 'android/';
    final iconPath = 'assets/svg/icons/$osString$name.svg';
    final size = this.size ?? 28.w;
    return Semantics(
      label: semanticLabel ?? name,
      child: SvgPicture.asset(iconPath, color: color, width: size, height: size),
    );
  }
}
