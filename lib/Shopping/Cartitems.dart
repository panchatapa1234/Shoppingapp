import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cartitems extends StatelessWidget {
  const Cartitems({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(children: [
      Card(
          elevation: 50,
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
          child: Container(
            height: height * 1.0,
            width: width * 1.0,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
          ))
    ]));
  }
}
