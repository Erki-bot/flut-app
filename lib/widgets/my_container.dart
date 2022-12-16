import 'package:flutter/material.dart';

class MyContainerWidget extends StatelessWidget {
  const MyContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test de compétences"),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20.0),
        color: const Color(0XFF0000FF),
        constraints: BoxConstraints.expand(
            height: Theme.of(context).textTheme.headline4!.fontSize! + 200),
        transform: Matrix4.rotationZ(-0.2),
        child: Center(
          child: Text(
            "Ceci est un widget 'Contaner",
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white),
          ),
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: "Ajouter",
        child: Icon(Icons.add_box),
      ),
    );
  }
}
