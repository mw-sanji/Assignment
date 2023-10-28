import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        alignment: Alignment.topLeft,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Details",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Container(
              height: 140,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey),
                      top: BorderSide(color: Colors.grey))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Days",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Text(
                        "4",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Rent",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Text(
                        NumberFormat.simpleCurrency(
                                locale: "hi-IN", decimalDigits: 0)
                            .format(5996),
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Additional Items",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Text(
                        NumberFormat.simpleCurrency(
                                locale: "hi-IN", decimalDigits: 0)
                            .format(6400),
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Coupon Discount",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Text(
                        NumberFormat.simpleCurrency(
                                locale: "hi-IN", decimalDigits: 0)
                            .format(396),
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total Amount",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  NumberFormat.simpleCurrency(locale: "hi-IN", decimalDigits: 0)
                      .format(12000),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
