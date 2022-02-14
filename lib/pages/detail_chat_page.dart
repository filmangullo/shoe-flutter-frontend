import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoe/theme.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({Key? key}) : super(key: key);

  Widget chatInput()
  {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 45,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12
              ),
              decoration: BoxDecoration(
                color: backgroundColor4,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Type Message..',
                    hintStyle: subtitleTextStyle
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Image.asset(
              'assets/button_send.png',
            height: 45,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: backgroundColor1,
          centerTitle: false,
          title: Row(
            children: [
              Image.asset(
                'assets/image_shop_logo_online.png',
              width: 50,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shoe Store',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 14
                    ),
                  ),
                  Text(
                    'Online',
                    style: secondaryTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 14
                    ),
                  )
                ],
              )
            ],

          ),
        ),
      ),
      bottomNavigationBar: chatInput(),
    );
  }
}
