
import 'package:myapp/import/imports.dart';

class card extends StatefulWidget {
  final String title;
  final String imagepath;
  

  const card({super.key, required this.title, required this.imagepath});

  @override
  State<card> createState() => _CardState();
}

class _CardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(235, 240, 242, 243),
      ),
      
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Container(
                height:140,
                width: 190,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.imagepath),
                    fit: BoxFit.fill),
                  
                color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
                ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 9.0),
            // Suggested code may be subject to a license. Learn more: ~LicenseLog:1240232123.
            child: Container(
              child: Row(
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const Icon(
                    Icons.star_rate_sharp,
                    color: Color.fromRGBO(255, 136, 0, 1),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0, top: 5),
            child: Container(

              child: const Row(
                children: [
                  Icon(Icons.location_on, color: Color.fromRGBO(255, 136, 0, 1)),
                  Text("Raja Ampat Islands"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

    
    
    
    
    //  CarouselSlider.builder(
    //   itemCount: 5,
    //   itemBuilder: (BuildContext context, int index, int i) {  
    //     return
    //    Container(
    //     height: 210,
    //     width: 200,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(15),
    //       color: Color.fromARGB(235, 240, 242, 243),
    //     ),
    //     child: Column(
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.all(7.0),
    //           child: Container(
    //               height: 140,
    //               width: 190,
                  
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(10),
    //                   image:  DecorationImage(
    //                       image: AssetImage(
    //                         card.imagepath[i]),
    //                       fit: BoxFit.cover))),
    //         ),
    //         const Padding(
    //           padding: EdgeInsets.only(left: 9.0),
    //   // Suggested code may be subject to a license. Learn more: ~LicenseLog:1240232123.
    //           child: Row(
    //             children: [
    //               Text(
    //                 "Raja Ampat Islands",
    //                 style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    //               ),
    //               Icon(
    //                 Icons.star_rate_sharp,
    //                 color: Color.fromRGBO(255, 136, 0, 1),
    //               )
    //             ],
    //           ),
    //         ),
    //         const Padding(
    //           padding: EdgeInsets.only(left: 8.0, top: 5),
    //           child: Row(
    //             children: [
    //               Icon(Icons.location_on, color: Color.fromRGBO(255, 136, 0, 1)),
    //               Text("Raja Ampat Islands"),
    //             ],
    //           ),
    //         )
    //       ],
    //     ),
    //   );}, options: CarouselOptions(),
    // );
