import 'package:carousel_slider/carousel_slider.dart';
import 'package:myapp/import/imports.dart';

class Cardslider extends StatefulWidget {
  const Cardslider({super.key});

  @override
  State<Cardslider> createState() => _CardsliderState();
}

class _CardsliderState extends State<Cardslider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 220,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: Categoryutils.imagepath.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: card(
                title: Categoryutils.title[index],
                imagepath: Categoryutils.imagepath[index]),
          ),
         
        ),
      ),
    );
  }
}
