import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';
class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const CustomListViewItem();
        },
        itemCount: 20,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}