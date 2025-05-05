import 'package:flutter/material.dart';

class Customappar extends StatelessWidget {
  const Customappar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            height: 20,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Logo.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Spacer(),
          Icon(Icons.search),
        ],
      ),
    );
  }
}
