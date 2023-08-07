import 'package:flutter/material.dart';
import 'package:hotelbooking/widgets/filtertabs.dart';

Widget FilterCard(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
    child: Container(
      width: 350,
      //height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Villa for 16 guests in Ubud"),
                Text("3 Offers"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Non 20 2023 - Dec 4 2023",
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                filterTabs(
                  size: 80,
                  text: "16 guests",
                  color: Color.fromARGB(255, 60, 138, 62),
                ),
                filterTabs(
                  size: 100,
                  text: "5 bedrooms",
                  color: Color.fromARGB(255, 45, 107, 158),
                ),
                filterTabs(
                  size: 120,
                  text: "\$1400-1800",
                  color: Color.fromARGB(255, 92, 209, 137),
                )
              ],
            ),
            Row(
              children: [
                filterTabs(
                  size: 100,
                  text: "Open pool",
                  color: Color.fromARGB(255, 222, 66, 64),
                ),
                filterTabs(
                  size: 80,
                  text: "Kitchen",
                  color: Color.fromARGB(255, 131, 35, 196),
                ),
                filterTabs(
                  size: 60,
                  text: "Wifi",
                  color: Color.fromARGB(255, 228, 130, 17),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
