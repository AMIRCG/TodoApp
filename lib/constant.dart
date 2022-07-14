import 'package:flutter/material.dart';

InputDecoration kInputDecorationCustomTextField = InputDecoration(
  hintText: 'New Task',
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: Colors.grey, width: 1.5),
  ), //enabled Border
  focusedBorder: OutlineInputBorder(
    gapPadding: 5.9,
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: Colors.blue, width: 1.5),
  ), //focused Border
);
