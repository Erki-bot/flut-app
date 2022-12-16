import 'package:flutter/material.dart';
class FlutApp extends StatelessWidget{
  final String msg;
  const FlutApp({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(msg),);
  }

}