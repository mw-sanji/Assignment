import 'package:flutter/material.dart';
import 'package:rent_a_bike/screens/details_screen.dart';

class PopularTile extends StatefulWidget {
  const PopularTile({super.key});

  @override
  State<PopularTile> createState() => _PopularTileState();
}

class _PopularTileState extends State<PopularTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return DetailsScreen();
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 250,
          width: 130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.grey)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 130,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                    "assets/images/bike.png",
                  ))),
                ),
                const Padding(
                  padding: EdgeInsets.all(2),
                  child: Text(
                    "Meteora",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Text("Royal Enfield"),
                const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "699",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("/per day")
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
