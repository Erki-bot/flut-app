import 'package:flut_app/widgets/app_bar.dart';
import 'package:flut_app/widgets/my_container.dart';
import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  MyScaffold({super.key});

  static const int delay = 500;

  //final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  //final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final SnackBar alertSnackBar = const SnackBar(
      duration: Duration(milliseconds: delay),
      content: Text("Le bouton 'alert' a été appuyé"));
  final SnackBar menuSnackBar = const SnackBar(
      duration: Duration(milliseconds: delay),
      content: Text("Le bouton 'menu' a été appuyé"));
  final SnackBar searchSnackBar = const SnackBar(
      duration: Duration(milliseconds: delay),
      content: Text("Le bouton 'search' a été appuyé"));

  void clickNextPage(BuildContext context) {
    Navigator.push(context,MaterialPageRoute(builder:(BuildContext context) {
      return const MyContainerWidget();
        /*
        * MaterialPageRoute(
            builder:  (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Know yourself"),
        ),
        body: const Center(
          child: Text(
            style: TextStyle(fontSize: 20, color: Colors.lightGreenAccent),
            "Dig deep into every layer of your mind to find yourself...",
          ),
        ),
      );
    }));*/
  }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add_a_photo_sharp),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0XFF1608AA),
        leading: IconButton(
          disabledColor: Colors.white,
          onPressed: () {
            // scaffoldKey.currentState.sh(snackBar3);
            ScaffoldMessenger.of(context).showSnackBar(menuSnackBar);
          },
          tooltip: 'Navigation menu',
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // scaffoldKey.currentState.sh(snackBar3);
              ScaffoldMessenger.of(context).showSnackBar(alertSnackBar);
            },
            disabledColor: Colors.white,
            tooltip: "Alert",
            icon: const Icon(Icons.add_alert),
          ),
          IconButton(
            disabledColor: Colors.white,
            onPressed: () {
              // scaffoldKey.currentState.sh(snackBar3);
              ScaffoldMessenger.of(context).showSnackBar(searchSnackBar);
            },
            tooltip: 'Search',
            icon: Icon(Icons.search_rounded),
          ),
          IconButton(
            onPressed: () {
              clickNextPage(context);
            },
            disabledColor: Colors.white,
            tooltip: "Next page",
            icon: Icon(Icons.arrow_forward_ios),
          ),
        ],
        title: Center(
            child: Text(
          "Titre",
        )),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
                padding: EdgeInsets.all(20),
                child: const Text("Vous devez répondre à quelques questions.")),
          ),
          const ElevatedButton(
            onPressed: null,
            style: ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                backgroundColor: MaterialStatePropertyAll(Color(0XFF1608AA))),
            child: Text("Question 1"),
          ),
          ElevatedButton(onPressed: null, child: Text("Question 2")),
          ElevatedButton(onPressed: null, child: Text("Question 3")),
        ],
      ),
    );
  }
}
