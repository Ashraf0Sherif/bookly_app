import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              image: const DecorationImage(
                  image: AssetImage(
                    AssetsData.kTestImage,
                  ),
                  fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
