// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class appBar2 extends StatelessWidget {
  final String Title;
  const appBar2({
    Key? key,
    required this.Title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          Container(
            height: 70,
            width: 300,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                Title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
          )
        ],
      ),
    );
  }
}
