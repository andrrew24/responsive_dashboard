// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.tablet)
    return width / 600;
  else if (width < SizeConfig.desktop)
    return width / 800;
  else
    return width / 1800;
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  double responsiveFontSize = fontSize * scaleFactor;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}
