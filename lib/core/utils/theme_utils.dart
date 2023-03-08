import 'package:flutter/material.dart';

Color whiteIfDark(BuildContext context) =>
    Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black;
