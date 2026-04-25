import 'package:flutter/material.dart';


void navigateHander(BuildContext context, int index) {
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
    case 2:
      Navigator.pushNamed(
        context, '/favorite'
      );
      break;
    case 3:
      Navigator.pushNamed(
        context, '/download'
      );
      break;
    default:
      break;
  }
}