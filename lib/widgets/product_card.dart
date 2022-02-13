import 'package:flutter/material.dart';
import 'package:shoe/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(
        right: defaultMargin
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffECEDEF)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/image_shoes.png',
            width: 216,
            height: 150,
            fit: BoxFit.cover,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hiking",
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "COURT VISION 0.2",
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  '\Rp.588.888',
                  style: priceTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 14
                  ),
                )
              ]
              )
          )
        ],
      ),
    );
  }
}
