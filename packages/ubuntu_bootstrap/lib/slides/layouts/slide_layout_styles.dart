import 'package:flutter/material.dart';

TextStyle titleStyle(BuildContext context) {
  return TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w300,
    color: Theme.of(context).colorScheme.onSurface,
  );
}

TextStyle bodyStyle(BuildContext context) {
  return TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    height: 1.5,
    color: Theme.of(context).colorScheme.onSurface,
  );
}

String slideAsset(String name) => 'assets/slides/$name';
String slideIcon(String name) => slideAsset('icons/$name');
String slideScreenshot(String name) => slideAsset('screenshots/$name');
