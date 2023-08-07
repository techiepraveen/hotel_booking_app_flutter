import 'package:flutter/material.dart';

Widget ProductCard(String name, String price, double ratings) {
  return Container(
      alignment: Alignment.topRight,
      height: 100,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 40.0),
                child: Text(name),
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(20)),
                ),
                child: Text(ratings.toString()),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Text("\$" + price)
        ],
      ));
}
