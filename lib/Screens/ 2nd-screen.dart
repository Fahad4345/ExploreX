

import 'package:myapp/widget/cardslider.dart';

import '../import/imports.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});
  static const List<String> title = [
    "Mount",
        "Waterfall",
        "Beach",
        "River",
        "Forest",
  ];
  static const List<String> imagepath = [
    "assets/Mount.jpg",
        "assets/Waterfall.jpg",
        "assets/Beach.jpg",
        "assets/River.jpg",
        "assets/Forest.jpg",
  ];
  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 210, 215, 236),
        appBar: AppBar(
          actions: const [
            CircleAvatar(
              child: Icon(Icons.person),
            ),
          ],
          backgroundColor:  const Color.fromARGB(255, 210, 215, 236),
          title: const Text("Second Screen"),
          centerTitle: true,
        ),
        drawer: Drawers(),
        body:  SingleChildScrollView(
          child: Column(
            
            children: [
              const Searchbar(),
             
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Center(
                  child: ListView.builder(
                    padding:const EdgeInsets.all(20),
                       shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: Secondscreen.title.length,
                      itemBuilder: (context, index) {
                        return Circleavatar(
                          title: Secondscreen.title[index],
                         imagepath: Secondscreen.imagepath[index]
                         ,);
                      }),
                ),
              ),
               Container(
                padding: const EdgeInsets.only(left: 6),
                alignment: Alignment.topLeft,
                 child: const Text("Recommended",    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
               ),
               const Cardslider(),
               Container(
                padding: const EdgeInsets.only(left: 6),
                alignment: Alignment.topLeft,
                 child: const Text("Popular",    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
               ),
               const Cardslider(),
               
            ],
          ),
        ));
  }
}
