import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

var logger = Logger();

const Color redColor = Color(0xFFED2E38);
const Color blackColor = Color(0xFF000000);
const Color greenColor = Color(0xFF009639);
const Color whiteColor = Color(0xFFFFFFFF);

MaterialColor kPrimaryColorLightSwatch = MaterialColor(
  0xffFC6011,
  <int, Color>{
    50: const Color(0xff009639).withOpacity(.05),
    100: const Color(0xff009639).withOpacity(.1),
    200: const Color(0xff009639).withOpacity(.2),
    300: const Color(0xff009639).withOpacity(.3),
    400: const Color(0xff009639).withOpacity(.4),
    500: const Color(0xff009639).withOpacity(.5),
    600: const Color(0xff009639).withOpacity(.6),
    700: const Color(0xff009639).withOpacity(.7),
    800: const Color(0xff009639).withOpacity(.8),
    900: const Color(0xff009639).withOpacity(.9),
  },
);
