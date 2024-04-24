import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 18,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          "4.8",
          style: Styles.kTextStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "(2390)",
          style: Styles.kTextStyle14.copyWith(color: Color(0xff707070)),
        )
      ],
    );
  }
}
