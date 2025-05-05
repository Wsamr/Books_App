import 'package:flutter/material.dart';

import 'BookItem.dart';

class Booklistview extends StatelessWidget {
  const Booklistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Bookitem();
        },
        itemCount: 10,
      ),
    );
  }
}
