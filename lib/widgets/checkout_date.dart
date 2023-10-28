import 'package:flutter/material.dart';

class CheckOutDate extends StatelessWidget {
  const CheckOutDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 210,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(30)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    color: const Color(0xFFeeeeef),
                    borderRadius: BorderRadius.circular(10)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Start Date",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                          Text(
                            "09-06-2021",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: Icon(Icons.calendar_today),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0, left: 15, right: 15),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    color: const Color(0xFFeeeeef),
                    borderRadius: BorderRadius.circular(10)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "End Date",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                          Text(
                            "12-06-2021",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: Icon(Icons.calendar_today),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
