import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          " EXPLOREX ",
          strutStyle: StrutStyle(fontSize: 80)
          ,
          style: TextStyle(fontFamily:'DelaGothicOne',color: Color.fromARGB(255, 6, 7, 8), fontSize: 50 ),
        ),
        Text(
          " Unlock New Destination ",
          style: TextStyle(color: Colors.black, fontSize: 23, fontFamily: 'RobotoMono'),
        ),
      ],
    );
  }
}
