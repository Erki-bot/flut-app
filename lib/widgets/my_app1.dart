import 'package:flut_app/widgets/chapter5.dart';
import 'package:flut_app/widgets/my_container.dart';
import 'package:flut_app/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';
class MyApp1 extends StatelessWidget
{
 const MyApp1({super.key});
  @override
  Widget build (BuildContext context){
    return   MaterialApp(title: "Mon appli",
    home: Chapter5());
  }
}