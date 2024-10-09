
import '../import/imports.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});
  static const List<String> title = [
        "Mount"
       "Waterfall"
        "Beach"
        "River"
        "Forest"
  ];
  static const List<String> imagepath = [
        "assets/Mount.jpg"
        "assets/Waterfall.jpg"
        "assets/Beach.jpg"
        "assets/River.jpg"
        "assets/Forest.jpg"
  ];
  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        backgroundColor: const Color(0xffF4F6FF),
        appBar: AppBar(
          actions: const [
            CircleAvatar(
              child: Icon(Icons.person),
            ),
          ],
          backgroundColor: const Color(0xffF4F6FF),
          title: const Text("Second Screen"),
          centerTitle: true,
        ),
        drawer: Drawers(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Searchbar(),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
              itemCount: Categoryutils.title.length,
                itemBuilder: (context, index) {
                  return
                     Category( imagepath:Categoryutils.imagepath[index], title:Categoryutils.title[index] ,);
              })
            ],
          ),
        )
        );
  }
}
