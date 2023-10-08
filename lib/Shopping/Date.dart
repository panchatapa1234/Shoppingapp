import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Date extends StatelessWidget {
  const Date({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime(3000, 2, 10, 1);
    return CupertinoPageScaffold(
        child: Center(
            child: CupertinoButton(
                child: const Text("Enter Your DOB"),
                onPressed: () {
                  showCupertinoModalPopup(
                      context: context,
                      builder: (BuildContext context) => SizedBox(
                          height: 250,
                          child: CupertinoDatePicker(
                            backgroundColor: Colors.white,
                            initialDateTime: dateTime,
                            onDateTimeChanged: (DateTime newTime) {
                              setState(() => dateTime = newTime);
                            },
                            use24hFormat: true,
                          )));
                })));
  }

  void setState(DateTime Function() param0) {}
}
