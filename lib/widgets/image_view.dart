import 'package:flutter/material.dart';
import 'package:rent_a_bike/screens/checkout_screen.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Stack(
          children: [
            Container(
              height: 230,
            ),
            Container(
              height: 230,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "assets/images/bike3.png",
                      ))),
            )
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return CheckoutScreen();
              },
            ));
          },
          child: Container(
            height: 80,
            width: double.infinity,
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20)),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Rent",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "1499",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                    Text(
                      "/per day",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
