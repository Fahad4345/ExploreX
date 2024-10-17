
import 'package:myapp/Componnent/xyz.dart';

import 'import/imports.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    
      home: Firstscreen()
    );
  }
}

