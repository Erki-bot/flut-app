import 'package:flut_app/widgets/my_app1.dart';
import 'package:flut_app/widgets/my_scaffold.dart';
import 'package:flut_app/widgets/widget1.dart';

import 'widgets/first_flutter_app.dart';
import 'package:flutter/material.dart';
import 'package:flut_app/colors.dart' as couleur;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MyApp1();
  }
}
