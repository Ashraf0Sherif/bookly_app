import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.2),
              child: const CustomBookItem(),
            ),
            const SizedBox(height: 43),
            Text("The Jungle Book", style: Styles.kTextStyle30),
            const SizedBox(height: 6),
            Opacity(
              opacity: 0.7,
              child: Text(
                "Rudyard Kipling",
                style: Styles.kTextStyle18.copyWith(fontStyle: FontStyle.italic),
              ),
            )
          ],
        ),
      ),
    );
  }
}
