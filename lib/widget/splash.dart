
import 'package:myapp/import/imports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.grey,
        
          image: DecorationImage(
              image: AssetImage("assets/splashscreenback.jpg"),
              fit: BoxFit.fitHeight)),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 370,child: Logo(),),
          
          
          
          //    Navigator.push(context, MaterialPageRoute(builder: (context) => const Secondscreen()));
          
         RoundButton(
              title: 'Get Started',
              onpress: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Secondscreen()));
              },
             
            ),
          
        ],
      ),
    );
  }
}
