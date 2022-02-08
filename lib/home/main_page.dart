import 'package:flutter/material.dart';
import 'package:shoe/home/chat_page.dart';
import 'package:shoe/home/home_page.dart';
import 'package:shoe/home/profile_page.dart';
import 'package:shoe/home/wihslist_page.dart';
import 'package:shoe/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    Widget cartButton()
    {
     return FloatingActionButton(
       onPressed: () {},
       backgroundColor: secondaryColor,
       child: Image.asset(
           'assets/icon_cart.png',
         width: 20,
       ),

     );
    }

    Widget customBottomNav()
    {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(20)
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: backgroundColor4,
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(
                        top: 20,
                        bottom: 10
                      ),
                      child: Image.asset('assets/icon_home.png', width: 21,
                      color: currentIndex == 0 ? primaryColor : disabledColor,),
                    ),
                    label: ''
                ),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(
                          top: 20,
                          bottom: 10
                      ),
                      child: Image.asset('assets/icon_chat.png', width: 20,
                        color: currentIndex == 1 ? primaryColor : disabledColor,),
                    ),
                    label: ''
                ),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(
                          top: 20,
                          bottom: 10
                      ),
                      child: Image.asset('assets/icon_wishlist.png', width: 20,
                      color: currentIndex == 2 ? primaryColor : disabledColor,),
                    ),
                    label: ''
                ),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(
                          top: 20,
                          bottom: 10
                      ),
                      child: Image.asset('assets/icon_profile.png', width: 18,
                      color: currentIndex == 3 ? primaryColor : disabledColor,),
                    ),
                    label: ''
                ),
              ]
          ),
        ),
      );
    }

    Widget Body()
    {
      switch(currentIndex)
      {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WishlistPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: Body()
    );
  }
}
