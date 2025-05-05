import 'package:bookly_app/features/Home/ui/views/widgets/BookItem.dart';
import 'package:bookly_app/features/Home/ui/views/widgets/BookItemList.dart';
import 'package:bookly_app/features/Home/ui/views/widgets/BookListView.dart';
import 'package:bookly_app/features/Home/ui/views/widgets/CustomAppar.dart';
import 'package:flutter/material.dart';

class Homebody extends StatelessWidget {
  const Homebody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: Customappar()),
          SliverToBoxAdapter(child: SizedBox(height: 30)),
          SliverToBoxAdapter(child: Booklistview()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 40),
              child: Text(
                "Best Seller",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(child: Bookitemlist()),

          SliverList(
            delegate: SliverChildBuilderDelegate(childCount: 10, (
              context,
              index,
            ) {
              return Bookitemlist();
            }),
          ),
        ],
      ),
    );
  }
}
