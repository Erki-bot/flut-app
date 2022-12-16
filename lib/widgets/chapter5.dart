import 'package:flutter/material.dart';
import 'package:flut_app/colors.dart' as couleur;

class Chapter5 extends StatelessWidget {
  final SnackBar menuSnackBar = const SnackBar(
      duration: Duration(milliseconds: 500),
      content: Text("Menu button pressed"));
  final SnackBar alertSnackBar = const SnackBar(
      duration: Duration(milliseconds: 500),
      content: Text("Alert button pressed"));
  final SnackBar fabSnackBar = const SnackBar(
      duration: Duration(milliseconds: 500),
      content: Text("Floating action button pressed"));
  final SnackBar searchSnackBar = const SnackBar(
      duration: Duration(milliseconds: 500),
      content: Text("Search button pressed"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: couleur.bleu,
        shadowColor: Colors.black,
        elevation: 10,
        title: const Text(
          "Knowledge test",
          style: TextStyle(fontSize: 24),
        ),
        leading: IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(menuSnackBar);
          },
          disabledColor: Colors.white,
          tooltip: "Menu",
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(alertSnackBar);
            },
            tooltip: "Alert",
            icon: const Icon(Icons.add_alert),
          ),
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(searchSnackBar);
            },
            tooltip: "Search",
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            tooltip: "Forward",
            icon: const Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
      body: Container(
        //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Answer a few questions and know your level",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: couleur.noir,
                  ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: couleur.noir, width: 2),
              ),
              child: const ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(couleur.orange),
                shadowColor: MaterialStatePropertyAll(couleur.noir),
                elevation: MaterialStatePropertyAll(10)),
                onPressed: null,
                child: Text("You have chosen answer 1"),
              ),
            ),Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: couleur.noir, width: 2),
              ),
              child: const ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(couleur.orange),
                shadowColor: MaterialStatePropertyAll(couleur.noir),
                elevation: MaterialStatePropertyAll(10)),
                onPressed: null,
                child: Text("You have chosen answer 2"),
              ),
            ),Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: couleur.noir, width: 2),
              ),
              child: const ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(couleur.orange),
                shadowColor: MaterialStatePropertyAll(couleur.noir),
                elevation: MaterialStatePropertyAll(10)),
                onPressed: null,
                child: Text("You have chosen answer 3"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
