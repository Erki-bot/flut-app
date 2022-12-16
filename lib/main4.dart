import 'package:flutter/material.dart';
import 'package:flut_app/colors.dart' as Couleur;

//var Couleur = couleur.Couleur;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'menu',
              onPressed: null,
              disabledColor: Colors.white),
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.search),
              tooltip: "search",
              color: Colors.black,
              disabledColor: Colors.white,
            )
          ],
          title: const Center(
            child: Text(
              "Titre",
              style: TextStyle(),
            ),
          ),
          backgroundColor:  Couleur.bleu,
        ),
        body: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 100),
                child: const Text(
                  "Vous devez répondre à quelques questions",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Couleur.bleu),
                  textAlign: TextAlign.center,
                )),
            const OutlinedButton(
              onPressed: null,
              child: Text("Question 1"),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Couleur.vert),
                  foregroundColor: MaterialStatePropertyAll(Couleur.blanc)),
            ),
            const OutlinedButton(
              onPressed: null,
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Couleur.bleu),
                foregroundColor: MaterialStatePropertyAll(Couleur.blanc),
              ),
              child: Text("Question 2"),
            ),
            const OutlinedButton(
              onPressed: null,
              style: ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Couleur.blanc),
                  backgroundColor: MaterialStatePropertyAll(Couleur.vert)),
              child: Text("Question 3"),
            ),
          ],
        ),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          backgroundColor: Couleur.bleu,
          tooltip: 'schedule',
          child: Icon(Icons.schedule),
        ),
      ),
    );
  }
}

/*
class MyApp extends StatelessWidget{
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
   return MaterialApp (
     title: "Titre",
     home: Center(child : Text("Me voici"),)
   );
  }

}
 */
