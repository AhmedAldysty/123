import 'package:boycott/Shared/Components/sized_config.dart';
import 'package:boycott/Shared/Components/text_style.dart';
import 'package:boycott/Shared/Costant/colors.dart';
import 'package:flutter/material.dart';

Widget customContainerButton({
  Function()? ontapped,
  double? height,
  double? width,
  double? raduis,
  String? text,
  double? textSize,
  FontWeight? weight,
  bool? isDisable = false,
}) {
  return InkWell(
    onTap: ontapped,
    focusColor: Colors.transparent,
    hoverColor: Colors.transparent,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    child: Container(
      height: height ?? getHeight(45),
      width: width ?? getWidth(285),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: redColor.withOpacity(0.1), width: 1.5),
          borderRadius: BorderRadius.circular(raduis ?? 10),
          gradient: LinearGradient(colors: [
            redColor,
            redColor.withOpacity(0.2),
          ], begin: Alignment.centerRight, end: Alignment.centerLeft)),
      child: Text(text!,
          style: textStyle(
            color: Colors.white,
            size: textSize ?? 16,
            weight: weight ?? FontWeight.w400,
          )),
    ),
  );
}
