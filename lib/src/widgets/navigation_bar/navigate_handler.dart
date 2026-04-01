import 'package:flutter/material.dart';

int lastIndex = 0;

void navigateHander(BuildContext context, int index) {
  if (lastIndex == index) return;
  debugPrint(lastIndex.toString());
  debugPrint(index.toString());
  switch (index) {
    case 0:
      Navigator.pushNamed(
        context, '/'
      );
      break;
    case 1:
      Navigator.pushNamed(
        context, '/search'
      );
      break;
  }

  lastIndex = index;
}