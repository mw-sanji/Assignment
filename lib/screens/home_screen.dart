import 'package:flutter/material.dart';
import 'package:rent_a_bike/widgets/app_bar.dart';
import 'package:rent_a_bike/widgets/list_tile.dart';
import 'package:rent_a_bike/widgets/page_tile.dart';
import 'package:rent_a_bike/widgets/popular_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  late int selectedOptionIndex;
  List<String> items = [
    'Adventure',
    'Cruiser',
    'Sportsbike',
    'Standard',
    'Touring'
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedOptionIndex = 0;
  }

  void handleOptionTap(int index) {
    setState(() {
      selectedOptionIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: NavigationBar(destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: ""),
          NavigationDestination(icon: Icon(Icons.map), label: ""),
          NavigationDestination(icon: Icon(Icons.wallet), label: ""),
          NavigationDestination(icon: Icon(Icons.settings), label: ""),
        ]),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const appBar(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    fillColor: const Color(0xFFeeeeef),
                    filled: true,
                    hintText: "Search Bike",
                    hintStyle: const TextStyle(color: Color(0xFFd4cece)),
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xFFd4cece),
                    )),
              ),
            ),
            Container(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return PageTile(
                    text: items[index],
                    isSelected: selectedOptionIndex == index,
                    onTap: () {
                      handleOptionTap(index);
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 8),
                    child: Text(
                      "Popular",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Items",
                    style: TextStyle(fontSize: 24),
                  )
                ],
              ),
            ),
            Container(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const PopularTile();
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 8),
                    child: Text(
                      "Recently",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Viewed",
                    style: TextStyle(fontSize: 24),
                  )
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return const listTile(
                  img: "assets/images/bike2.png",
                  name: "Hayabusa",
                  price: "2000",
                  isBike: true,
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
