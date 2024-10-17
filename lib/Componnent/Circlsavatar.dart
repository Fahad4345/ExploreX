import 'package:flutter/material.dart';
import 'package:myapp/import/imports.dart';

class Circleavatar extends StatefulWidget {
  final String title;
  final String imagepath;
  Circleavatar({super.key, required this.title, required this.imagepath});

  @override
  State<Circleavatar> createState() => _CircleavatarState();
}

class _CircleavatarState extends State<Circleavatar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
           
        children: [
        CircleAvatar(
        backgroundImage: AssetImage(widget.imagepath),
      ),
      Text(widget.title, style: const TextStyle(),)
      ]),
    );
    
  }
}
