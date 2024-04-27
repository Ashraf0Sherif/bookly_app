import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
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
    );
  }
}
