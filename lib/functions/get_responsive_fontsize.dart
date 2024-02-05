// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < 600)
    return width / 400;
  else if (width < 900)
    return width / 700;
  else
    return width / 1000;
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  double responsiveFontSize = fontSize * scaleFactor;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}
