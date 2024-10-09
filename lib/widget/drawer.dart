
import 'package:myapp/import/imports.dart';

class Drawers extends StatefulWidget {
 Drawers({
    super.key,
  });

  final List<String> title = ["Home", "Profile"];
  @override
  State<Drawers> createState() => _DrawersState();
}

// ignore: camel_case_types
class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            const DrawerHeader(
           child:  Logo()   
            ),
            ListTile(
                hoverColor: Colors.deepOrange,
                title: const Text(
                  "Explore the World",
                  style: TextStyle(color: Color.fromARGB(179, 0, 0, 0)),
                ),
                onTap: () {
                  Navigator.pop(context);
                  //Scrollable.ensureVisible(section1Key.currentContext!);
                }),
            ListTile(
                hoverColor: Colors.deepOrange,
                title: const Text(
                  " Adventure Awaits",
                  style: TextStyle(color: Color.fromARGB(179, 0, 0, 0)),
                ),
                onTap: () {
                  Navigator.pop(context);
                  //Scrollable.ensureVisible(section2Key.currentContext!);
                }),
            ListTile(
                hoverColor: Colors.deepOrange,
                title: const Text(
                  "My Journeys",
                  style: TextStyle(color: Color.fromARGB(179, 0, 0, 0)),
                ),
                onTap: () {
                  Navigator.pop(context);
                  //Scrollable.ensureVisible(section3Key.currentContext!);
                }),
            ListTile(
              hoverColor: Colors.deepOrange,
              title: const Text(
                "Travel Planner",
                style: TextStyle(color: Color.fromARGB(179, 0, 0, 0) ),
              ),
              onTap: () {
                Navigator.pop(context);
                //Scrollable.ensureVisible(section4Key.currentContext!);
              },
            ),
            ListTile(
              hoverColor: Colors.deepOrange,
              title: const Text(
                "Trip Dashboard",
                style: TextStyle(color: Color.fromARGB(179, 0, 0, 0)),
              ),
              onTap: () {
                Navigator.pop(context);
                // Scrollable.ensureVisible(section4Key.currentContext!);
              },
            )
          ],
        ));
  }
}
