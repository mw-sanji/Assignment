import 'package:flutter/material.dart';
import 'package:rent_a_bike/widgets/app_bar2.dart';
import 'package:rent_a_bike/widgets/details.dart';
import 'package:rent_a_bike/widgets/list_tile.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: ""),
        NavigationDestination(icon: Icon(Icons.map), label: ""),
        NavigationDestination(icon: Icon(Icons.wallet), label: ""),
        NavigationDestination(icon: Icon(Icons.settings), label: ""),
      ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const appBar2(Title: "Bike Details"),
          const Details(),
          const Padding(
            padding: EdgeInsets.only(top: 15.0, left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Add ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  "Items",
                  style: TextStyle(fontSize: 24),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0, left: 15),
            child: Text("(Click on rent to proceed)"),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return const listTile(
                img: "assets/images/bikeitem.png",
                name: "Riding Jacket",
                price: "800",
                isBike: false,
              );
            },
          ))
        ],
      ),
    ));
  }
}
