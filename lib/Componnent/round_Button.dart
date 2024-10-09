import 'dart:ui';

import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onpress;
  RoundButton({
    super.key,
    required this.title,
    required this.onpress
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 80,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                border: Border.all(width: 5, color: Colors.black),
                borderRadius: BorderRadius.circular(40)),
            child: Center(
                child: Text(
              title,
              style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                  fontFamily: 'Allura'),
            )),
          ),
        ),
      ),
    );
  }
}
