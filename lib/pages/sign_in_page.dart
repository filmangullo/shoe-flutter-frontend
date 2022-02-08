import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoe/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header()
    {
      return Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Login',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold
              ),
            ),
            SizedBox(height: 2,),
            Text('Sign in to Continue',
            style: subtitleTextStyle
            )
          ],
        ),
      );
    }

    Widget emailInput()
    {
      return Container(
        margin: EdgeInsets.only(top:70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: primaryTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16
              ),
            ),
            SizedBox(height: 12,),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Center(
                child: Row (
                  children: [
                    Image.asset(
                      'assets/icon_email.png',
                      width: 17,
                    ),
                    SizedBox(width: 16,),
                    Expanded(
                        child: TextFormField(
                          style: primaryTextStyle,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Your Email Address'
                          ),
                        )
                    )
                  ],
                ) ,
              ),
            )
          ],
        ),
      );
    }

    Widget passwordInput()
    {
      return Container(
        margin: EdgeInsets.only(top:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16
              ),
            ),
            SizedBox(height: 12,),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                  horizontal: 16
              ),
              decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Center(
                child: Row (
                  children: [
                    Image.asset(
                      'assets/icon_password.png',
                      width: 17,
                    ),
                    SizedBox(width: 16,),
                    Expanded(
                        child: TextFormField(
                          obscureText: true,
                          style: primaryTextStyle,
                          decoration: InputDecoration.collapsed(
                              hintText: 'Your Password'
                          ),
                        )
                    )
                  ],
                ) ,
              ),
            )
          ],
        ),
      );
    }

    Widget signInButton()
    {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
          ),
          child: Text(
            'Sign In',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium
            ),
          ),),
      );
    }

    Widget footer()
    {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an accout',
              style: subtitleTextStyle.copyWith(
                fontSize: 12
              ),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-up');
              },
              child: Text(
                'Sign Up',
                style: purpleTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              emailInput(),
              passwordInput(),
              signInButton(),
              Spacer(),
              footer()
            ],
          ),
        ),
      )
    );
  }
}
