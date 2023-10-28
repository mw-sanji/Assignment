import 'package:flutter/material.dart';

class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/profilepicture.png"))),
          ),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome"),
            SizedBox(height: 5),
            Text(
              "Abinav Tiwari",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
