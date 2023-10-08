import 'package:flutter/material.dart';
import 'package:intern2/Shopping/Cartitems.dart';
import 'package:intern2/Shopping/Grid.dart';
import 'package:intern2/Shopping/Profile.dart';
import 'package:intern2/Shopping/Shopping.dart';

class Secondscreen extends StatelessWidget {
  List<String> images = [
    'https://99designs-blog.imgix.net/blog/wp-content/uploads/2016/12/attachment_89561603-e1513587105243.jpg?auto=format&q=60&fit=max&w=930',
    'https://www.fanclubclothing.com/cdn/shop/products/je_ne_sais_quoi_tee_stock_2_grande.jpg?v=1614702540',
    'https://i.etsystatic.com/41959190/r/il/7a79a4/4794669469/il_fullxfull.4794669469_7y3f.jpg',
  ];
  var img =
      'https://i.pinimg.com/736x/ef/c1/9b/efc19bc5d00af9f07b7699aeed5d0a9b.jpg';
  Secondscreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text("Home"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Shopping()));
              },
            ),
            ListTile(
              title: const Text("Profile"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
            ListTile(
              title: const Text("History"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Privacy Policy"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Help"),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search),
          ),
        ],
        title: Text("Search Screen"),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(img))),
              child: ListView(
                children: [
                  ListTile(
                    title: const Text(
                      "Shopping Page\n       Tap ",
                      selectionColor: Colors.red,
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Grid()));
                    },
                  ),
                ],
              ))));
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Shorts',
    'Hoodies',
    'T-Shirts',
    'Denims',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  WidgetbuildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fashion in searchTerms) {
      if (fashion.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fashion);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fashion in searchTerms) {
      if (fashion.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fashion);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget? buildLeading(BuildContext context) {
    throw UnimplementedError();
  }
}
