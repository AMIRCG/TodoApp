// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Add_Task extends StatelessWidget {
  const Add_Task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            TextField(
              decoration: InputDecoration(
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
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
