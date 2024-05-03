import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetails);
      },
      child: SizedBox(
        width: double.infinity,
        height: 200,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.3 / 4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(11),
                  image: const DecorationImage(
                    image: AssetImage(
                      AssetsData.kTestImage,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.43,
                    child: Text(
                      "Harry poter and the Goblet of Fire",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.kTextStyle20
                          .copyWith(fontFamily: kGtSectraFine),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.43,
                    child: const Text(
                      "J.K. Rowling",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.kTextStyle14,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        "19.99 €",
                        style: Styles.kTextStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRating()
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}