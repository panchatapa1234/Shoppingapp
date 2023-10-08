import 'package:flutter/material.dart';

class Hoodies extends StatelessWidget {
  const Hoodies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          'Hoodies',
          selectionColor: Colors.black,
        ),
      ),
    );
  }
}
