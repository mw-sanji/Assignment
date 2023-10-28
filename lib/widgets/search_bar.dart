import 'package:flutter/material.dart';

class searchBar extends StatefulWidget {
  const searchBar({super.key});

  @override
  State<searchBar> createState() => _searchBarState();
}

class _searchBarState extends State<searchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        decoration: InputDecoration(
            fillColor: Colors.grey,
            filled: true,
            hintText: "Search",
            border:
                UnderlineInputBorder(borderRadius: BorderRadius.circular(20)),
            prefixIcon: const Icon(Icons.search)),
      ),
    );
  }
}
