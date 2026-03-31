import 'package:flutter/material.dart';

int lastIndex = 0;

void navigateHander(BuildContext context, int index) {
  if (lastIndex == index) return;
  switch (index) {
    case 0:
      Navigator.pushNamed(
        context, '/'
      );
      break;
  }

  lastIndex = index;
}