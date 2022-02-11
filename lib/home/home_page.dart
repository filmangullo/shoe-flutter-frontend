import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoe/theme.dart';

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

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          header(),
          categories(),
        ],
    );
  }
}
