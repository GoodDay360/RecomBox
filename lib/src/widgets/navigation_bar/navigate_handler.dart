import 'package:flutter/material.dart';

void navigateHander(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.pushNamed(
        context, 
        '/');
      break;
  }
}