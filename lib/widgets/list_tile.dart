import 'package:flutter/material.dart';
import 'package:rent_a_bike/screens/details_screen.dart';

class listTile extends StatefulWidget {
  final String img;
  final String price;
  final String name;
  final bool isBike;
  const listTile(
      {super.key,
      required this.price,
      required this.name,
      required this.img,
      required this.isBike});

  @override
  State<listTile> createState() => _listTileState();
}

class _listTileState extends State<listTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.isBike) {
          Navigator.push(context, PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return DetailsScreen();
            },
          ));
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            height: 70,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      child: Image.asset(widget.img),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            widget.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("${widget.price}/per day")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black),
                            child: Text(
                              widget.isBike ? "Booked" : "1",
                              style: const TextStyle(color: Colors.white),
                            )),
                      ),
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
