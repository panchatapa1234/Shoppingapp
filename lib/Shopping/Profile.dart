import 'package:flutter/material.dart';
import 'package:intern2/Shopping/Date.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var img =
        "https://i.pinimg.com/originals/0b/09/f0/0b09f04dec077e4c41a88f7b43eef7a9.jpg";
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 242, 238, 238),
        appBar: AppBar(
          title: Text("My Profile"),
          titleTextStyle: TextStyle(
              color: const Color.fromARGB(255, 243, 242, 242),
              fontSize: 30,
              fontWeight: FontWeight.bold),
          backgroundColor: Color.fromARGB(255, 235, 106, 202),
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              Card(
                elevation: 50,
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                child: Container(
                    height: height * 0.6,
                    width: width * 1.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 132, 241, 152),
                    ),
                    child: Column(children: [
                      Container(
                          height: height * 0.3,
                          width: width * 0.8,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 86, 54, 244),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(img)))),
                      Container(
                        height: height * 0.1,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 233, 232, 158),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Input Name",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide.none),
                              fillColor: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.1),
                              filled: true,
                              prefixIcon: Icon(Icons.person)),
                          obscureText: false,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Date()));
                          },
                          child: Text(
                            "Enter Date Of Birth",
                            style: TextStyle(fontSize: 20),
                          )),
                    ])),
              )
            ]))));
  }
}
