import 'package:flutter/material.dart';
void main()
{
  var myApp = AppliPrincipale();
  //runApp(const AppliPrincipale());
  runApp(myApp);
}
class AppliPrincipale extends StatelessWidget
{
  const AppliPrincipale({super.key});
  @override
  Widget build (BuildContext context)
  {
    return MaterialApp(
        theme: ThemeData(
          // primarySwatch: Colors.amber
            primarySwatch: Colors.grey
        ),
        home : PageDAccueil(title: "Test",)
    );
  }
}
/*
class PageDAccueil extends StatelessWidget
{
  const PageDAccueil({super.key, required this.title});
  final String title;
  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
          foregroundColor : Colors.purpleAccent,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Ligne 1",
                  style: Theme.of(context).textTheme.headline4,),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Ligne 2",
                  style: Theme.of(context).textTheme.headline4,
                ),
              )
            ],
          ),
          GestureDetector(
              child :
              Text ("Appuyez",style : Theme.of(context).textTheme.headline4),
              onTap : () {
                print("Ok");
              }
          )
        ],

      ),
    );
  }
}
 */
class PageDAccueil extends StatelessWidget
{
  var i = 0;
  void incrementer (){
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      i++;
    });
  }
  PageDAccueil({super.key, required this.title});
  final String title;
  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        foregroundColor : Colors.purpleAccent,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Ligne 1",
                    style: Theme.of(context).textTheme.headline4,),
                ),]),
          Row (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Ligne 2",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              GestureDetector(
                  child :
                  Text ("Appuyez $i",
                      style : Theme.of(context).textTheme.headline4),
                  onTap : () {
                    incrementer();
                    print("Ok");
                  }
              )],
          ),

        ],

      ),
    );
  }
}
{
body:
Center(
child:Container(
color: Couleur.bleu,
padding: const EdgeInsets.all(10),
//margin: EdgeInsets.all(20),
child: const Text(
"Vous devez répondre à quelques questions",
style: TextStyle(
fontWeight: FontWeight.bold,
// fontSize: 22,
color: Colors.white),
),
),
),
floatingActionButton: FloatingActionButton(
onPressed: () {  },
child: Icon(Icons.schedule),
),

}