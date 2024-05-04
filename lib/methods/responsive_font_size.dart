import 'package:flutter/material.dart';

double getRespnsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScalFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8; // min value for font size
  double upperLimit = fontSize * 1.2; // max value for font size
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScalFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400; // width for mobile
  } else if (width < 900) {
    return width / 700; // width for tablet
  } else {
    return width / 1000; // width for desktop
  }
}
