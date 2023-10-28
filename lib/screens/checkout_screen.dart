import 'package:flutter/material.dart';
import 'package:rent_a_bike/widgets/app_bar2.dart';
import 'package:rent_a_bike/widgets/checkout_date.dart';
import 'package:rent_a_bike/widgets/payment_details.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

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
        children: [
          const appBar2(Title: "Check Out"),
          const CheckOutDate(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Apply Coupon",
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          const PaymentDetails(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              child: Text(
                "Pay",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
