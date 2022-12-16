import 'package:flutter/material.dart';
import 'package:flut_app/colors.dart' as couleur;

class FirstFlutterApp extends StatelessWidget {
  FirstFlutterApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: 300,
            height: 200,
            //L'alignement est nécessaire
            alignment: Alignment.center,
            color: Colors.white,
            child: Container(
              alignment: Alignment.center,
              width: 100,
              height: 100,
              color: couleur.orange,
              child : const Text(
                "Sample text",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: "comic sans ms" ,
                    fontSize: 20, fontWeight: FontWeight.bold, color: couleur.blanc),
                textAlign: TextAlign.center,
              ),)
        ));
  }
}
