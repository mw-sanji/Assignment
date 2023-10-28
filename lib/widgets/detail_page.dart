import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Indian",
                style: TextStyle(fontSize: 24),
              ),
              Text(
                "Scout Bobber",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20)),
            child: const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "Cruiser",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20)),
            child: const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Displacement",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "1133cc",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20)),
            child: const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Max Speed",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "124 km/h",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
