import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle textStyle({
  Color? color,
  double? size,
  String? family,
  FontWeight? weight,
  List<Shadow>? shadow,
  double height = 1.3,
  bool? isDecorated = false,
  bool? isItalic = false,
}) {
  return TextStyle(
    inherit: true,
    color: color ?? Colors.black,
    fontSize: (size ?? 14).sp,
    fontFamily: family ?? "Cairo",
    fontWeight: weight ?? FontWeight.w400,
    height: height,
    fontStyle: isItalic! ? FontStyle.italic : FontStyle.normal,
    decoration: isDecorated! ? TextDecoration.underline : TextDecoration.none,
    shadows: shadow,
  );
}
