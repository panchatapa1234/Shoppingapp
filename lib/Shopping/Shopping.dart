import 'package:flutter/material.dart';
import 'package:intern2/Shopping/Account.dart';
import 'package:intern2/Shopping/Secondscreen.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var img =
        "https://images.unsplash.com/photo-1513094735237-8f2714d57c13?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8ZmFzaGlvbiUyMHNob3BwaW5nfGVufDB8fDB8fHww&w=1000&q=80";
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
            child: Container(
                height: height * 1.0,
                width: width * 1.0,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 158, 244, 54),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(img)))),
          )),
      Positioned(
        top: height * 0.45,
        child: Container(
          child: Text(
            "Explore the world \nof Fashion",
            softWrap: true,
            style: TextStyle(
                fontSize: 40, fontStyle: FontStyle.italic, color: Colors.white),
          ),
        ),
      ),
      Positioned(
        bottom: height * 0.15,
        left: width * 0.335,
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Secondscreen()));
            },
            child: Text("Get Started")),
      ),
      Positioned(
        bottom: height * 0.06,
        left: width * 0.3,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Account()));
          },
          child: Text(
            "Create account",
            style: TextStyle(color: Colors.white),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.transparent,
              ),
              side: MaterialStateProperty.all(BorderSide(color: Colors.white))),
        ),
      ),
    ]));
  }
}
