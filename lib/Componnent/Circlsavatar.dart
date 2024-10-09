import 'package:flutter/material.dart';

class Circleavatar extends StatefulWidget {
  const Circleavatar({super.key});

  @override
  State<Circleavatar> createState() => _CircleavatarState();
}

class _CircleavatarState extends State<Circleavatar> {
  @override
  Widget build(BuildContext context) {
  return Container(
      height: 100,
      width:100,
      decoration: const BoxDecoration(
          color: Colors.red,shape: BoxShape.circle),
    );
  }
}
