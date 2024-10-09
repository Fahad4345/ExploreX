import 'package:flutter/material.dart';
import 'package:myapp/import/imports.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({super.key});

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                 borderSide:  const BorderSide(width: 0.8)),
              hintText: "Search",
              prefixIcon: const Icon(
                Icons.search,
                size: 30,
              ))),
    );
  }
}
