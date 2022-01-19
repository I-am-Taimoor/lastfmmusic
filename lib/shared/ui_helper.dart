import 'package:flutter/material.dart';

const Widget horizontalSpaceStandard = SizedBox(width: 10.0);
const Widget verticalSpaceStandard = SizedBox(height: 10.0);

const Widget horizontalSpaceTiny = SizedBox(width: 4.0);
const Widget horizontalSpaceSmall = SizedBox(width: 8.0);
const Widget horizontalSpaceRegular = SizedBox(width: 16.0);
const Widget horizontalSpaceMedium = SizedBox(width: 24.0);
const Widget horizontalSpaceLarge = SizedBox(width: 48.0);

const Widget verticalSpaceTiny = SizedBox(height: 4.0);
const Widget verticalSpaceSmall = SizedBox(height: 16.0);
const Widget verticalSpaceRegular = SizedBox(height: 20.0);
const Widget verticalSpaceMedium = SizedBox(height: 24.0);
const Widget verticalSpaceLarge = SizedBox(height: 48.0);

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenWidthPercentage(BuildContext context, {double percentage = 1}) =>
    screenWidth(context) * percentage;
double screenHeightPercentage(BuildContext context, {double percentage = 1}) =>
    screenHeight(context) * percentage;
