import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomBookItem(),
          );
        },
        itemCount: 20,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
