import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoe/theme.dart';
import 'package:shoe/widgets/product_card.dart';
import 'package:shoe/widgets/product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget header()
  {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello, Filman',
                style: primaryTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold
                ),),
                Text('@alexkeinn',
                style: subtitleTextStyle.copyWith(
                  fontSize: 16
                ),)
              ],
            ),
          ),
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/image_profile.png')
              )
            ),
          )
        ],
      ),
    );
  }

  Widget categories()
  {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              margin: EdgeInsets.only(
                  right: 16
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: primaryColor
              ),
              child: Text('All shoes',
              style: primaryTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium
              ),),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10
              ),
              margin: EdgeInsets.only(
                  right: 16
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparentColor,
                  border: Border.all(
                    color: subtitleColor
                  )
              ),
              child: Text('Running',
                style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium
                ),),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10
              ),
              margin: EdgeInsets.only(
                  right: 16
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparentColor,
                  border: Border.all(
                      color: subtitleColor
                  )
              ),
              child: Text('Basket Ball',
                style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium
                ),),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10
              ),
              margin: EdgeInsets.only(
                  right: 16
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparentColor,
                  border: Border.all(
                      color: subtitleColor
                  )
              ),
              child: Text('Hiking',
                style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium
                ),),
            )
          ],
        ),
      ),
    );
  }

  Widget popularProductsTitle()
  {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Text(
        'Popular Product',
        style: primaryTextStyle.copyWith(
          fontSize: 22,
          fontWeight: semiBold
        ),
      ),
    );
  }

  Widget popularProducts()
  {
    return Container(
      margin: EdgeInsets.only(
        top: 14
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Row(
              children: [
                ProductCard(),
                ProductCard(),
                ProductCard()
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget newArrivalsTitle()
  {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Text(
        'New Arrivals',
        style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold
        ),
      ),
    );
  }

  Widget newArrivals()
  {
    return Container(
      margin: EdgeInsets.only(
        top: 14,
      ),
      child: Column(
        children: [
          ProductTile(),
          ProductTile(),
          ProductTile(),
          ProductTile()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          header(),
          categories(),
          popularProductsTitle(),
          popularProducts(),
          newArrivalsTitle(),
          newArrivals(),
        ],
    );
  }
}
