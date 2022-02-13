import 'package:flutter/material.dart';
import 'package:shoe/theme.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        bottom: defaultMargin
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/image_shoes.png',
            width: 120,
            height: 120,
            fit: BoxFit.cover,),
          ),
          const SizedBox(
            width: 12,
          ),
          // Expanded berfungsi untuk menggunakan ruang yang tersisa
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Football',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Predator 2.0 Firm Secondary',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    '\$Rp.6839.3939',
                    style: priceTextStyle.copyWith(
                      fontWeight: medium
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
