import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.kLogo,
            height: 18.1,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 23,
            ),
          ),
        ],
      ),
    );
  }
}
