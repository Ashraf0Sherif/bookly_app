import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.3 / 4,
            child: Container(
              decoration: BoxDecoration(
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
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.43,
                child: Text(
                  "Harry poter and the Goblet of Fire",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style:
                      Styles.kTextStyle20.copyWith(fontFamily: kGtSectraFine),
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
                  Icon(
                    Icons.star_rounded,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Text(
                    "4.8",
                    style: Styles.kTextStyle16,
                  ),
                  Text("(2390)")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
