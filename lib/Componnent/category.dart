import 'package:myapp/import/imports.dart';

// ignore: camel_case_types
class Category extends StatefulWidget {
  final String imagepath;
  final String title; 
  const Category({
    super.key,
    required this.imagepath,
    required this.title,  
  });

  @override
  State<Category> createState() => _categoryState();
}

class _categoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [CircleAvatar(
        backgroundImage:AssetImage(widget.imagepath),), 
        Text(widget.title)
        ],
    );
  }
}
