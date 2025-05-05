import 'package:flutter/material.dart';

class Bookitemlist extends StatelessWidget {
  const Bookitemlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Container(
            height: 105,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                  "https://as2.ftcdn.net/v2/jpg/01/18/77/03/1000_F_118770357_eNPOqjELnBoN0fsm8mrEmO25aMBGv6yP.jpg",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Harry Potter ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                "and the Goblet of Fire",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                "J.K. Rowling",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Text(
                    "19.99 €",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 40),
                  Icon(Icons.star),
                  Text(
                    "4.8",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "(2390)",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
