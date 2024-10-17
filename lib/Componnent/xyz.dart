import 'package:flutter/material.dart';

class xyz extends StatefulWidget {
    static  List<String> imagepath = [
         "assets/Mount.jpg"
        "assets/Waterfall.jpg"
        "assets/Beach.jpg"
        "assets/River.jpg"
        "assets/Forest.jpg"
  ];
  xyz({super.key});

  @override
  State<xyz> createState() => _xyzState();
}

class _xyzState extends State<xyz> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: const Text('Image ListView')),
      body: ListView.builder(
        itemCount: xyz.imagepath.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(3.0),
            child: Image.asset(xyz.imagepath[index]),
          );
        },
      ),
    );
    
  }
}