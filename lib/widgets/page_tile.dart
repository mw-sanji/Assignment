// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PageTile extends StatefulWidget {
  final String text;
  final bool isSelected;
  final Function() onTap;
  const PageTile({
    Key? key,
    required this.text,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  @override
  State<PageTile> createState() => _PageTileState();
}

class _PageTileState extends State<PageTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          height: 50,
          width: 100,
          decoration: !widget.isSelected
              ? BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20))
              : BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              widget.text,
              style: !widget.isSelected
                  ? TextStyle(fontWeight: FontWeight.bold)
                  : TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
