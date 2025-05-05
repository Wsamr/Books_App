import 'package:flutter/material.dart';

class Bookitem extends StatelessWidget {
  const Bookitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        height: 230,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(
              "https://buddhify.com/wp-content/uploads/2018/07/iStock-689785084.jpg",
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
