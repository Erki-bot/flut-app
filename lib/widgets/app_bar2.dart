import 'package:flutter/material.dart';

class AppBar1 extends StatelessWidget {
  final String titre;

  AppBar1({super.key, required this.titre});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.orange,
      leading: const IconButton(
        onPressed: null,
        tooltip: 'Navigation menu',
        icon: Icon(Icons.menu),
      ),
      actions: const [
        IconButton(
          onPressed: null,
          tooltip: 'Search',
          icon: Icon(Icons.search_rounded),
        )
      ],
      title: Text(titre),
    );
  }

}
