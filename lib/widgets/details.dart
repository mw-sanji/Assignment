import 'package:flutter/material.dart';
import 'package:rent_a_bike/widgets/detail_page.dart';
import 'package:rent_a_bike/widgets/image_view.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2,
          height: 350,
          child: const DetailPage(),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2,
          height: 350,
          child: const ImageView(),
        )
      ],
    );
  }
}
