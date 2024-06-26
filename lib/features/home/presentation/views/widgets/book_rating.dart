import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      required this.count});

  final num rating, count;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          "$rating",
          style: Styles.kTextStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            "($count)",
            style: Styles.kTextStyle14,
          ),
        )
      ],
    );
  }
}
