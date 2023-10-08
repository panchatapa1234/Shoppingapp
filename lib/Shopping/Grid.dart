import 'package:flutter/material.dart';
import 'package:intern2/Shopping/Cartitems.dart';
import 'package:intern2/Shopping/Hoodies.dart';

class Grid extends StatefulWidget {
  const Grid({super.key});

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  var img1 =
      'https://images.unsplash.com/photo-1557788095-fb14c7c24bc6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFzaGlvbiUyMGdpcmxzfGVufDB8fDB8fHww&w=1000&q=80';
  var img2 =
      'https://assets.tatacliq.com/medias/sys_master/images/47137146732574.jpg';
  var img3 =
      'https://yourclassylook.com/wp-content/uploads/2022/06/IMG_1085.jpg';
  var img4 =
      'https://media.istockphoto.com/id/1172803283/photo/young-beautiful-girl-dressed-in-retro-vintage-style-in-the-old-european-city.jpg?s=612x612&w=0&k=20&c=fd2lowIw4pZXEIoTnonnj-KyITrwPhGMlnaRYJdCDSQ=';
  var img5 =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu_Zos4sRKctRCgrVeTQu4xsyOXorHNY8InQ&usqp=CAU';
  var img6 =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzWMpjGhX6wjp72sKx3C_MlecKCAzIS9TH1w&usqp=CAU';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Here'),
        backgroundColor: Color.fromARGB(255, 176, 67, 142),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Cartitems()));
              },
              icon: Icon(
                Icons.shopping_cart_checkout_sharp,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        child: GridView(
          children: [
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(img1), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Hoodies()));
                        },
                        icon: Icon(
                          Icons.add_box_rounded,
                          color: Colors.white,
                        ))
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(img2), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20))),
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(img3), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20))),
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(img4), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20))),
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(img5), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20))),
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(img6), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20))),
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(img1), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20))),
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(img1), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20))),
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(img1), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20))),
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(img1), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20))),
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(img1), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20))),
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(img1), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20))),
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(img1), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20))),
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(img1), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20))),
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(img1), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20))),
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(img1), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20))),
          ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        ),
      ),
    );
  }
}
