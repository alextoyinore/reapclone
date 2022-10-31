import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:reapclone/screens/dashboard.dart';
import 'package:reapclone/screens/portfolio.dart';
import 'package:reapclone/screens/profile.dart';
import 'package:reapclone/screens/wallet.dart';
import '../helpers/colors.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedItemIndex = 0;
  List pages = [
    Dashboard(),
    Wallet(),
    Portfolio(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Future.value(false);
      },
      child: Scaffold(
        body: pages[_selectedItemIndex],
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: RColor.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -3),
                blurRadius: 1.5,
                color: RColor.black40.withOpacity(.1),
                spreadRadius: 1.0,
              ),
              BoxShadow(
                offset: Offset(0, -3),
                blurRadius: 1.5,
                color: RColor.white,
                spreadRadius: 1.0,
              )
            ],
          ),
          child: Row(
            children: <Widget>[
              BottomNavItem(
                image: 'assets/images/home.png',
                label: 'Home',
                index: 0,
                width: MediaQuery.of(context).size.width / 4,
              ),
              BottomNavItem(
                image: 'assets/images/wallet.png',
                label: 'Wallet',
                index: 1,
                width: MediaQuery.of(context).size.width / 4,
              ),
              BottomNavItem(
                image: 'assets/images/portfolio.png',
                label: 'Portfolio',
                index: 2,
                width: MediaQuery.of(context).size.width / 4,
              ),
              BottomNavItem(
                image: 'assets/images/profile.png',
                label: 'Account',
                index: 3,
                width: MediaQuery.of(context).size.width / 4,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget BottomNavItem({
    required String image,
    required String label,
    required int index,
    required double width,
  }) {
    return GestureDetector(
      onTap: (() {
        setState(() {
          _selectedItemIndex = index;
          kDebugMode() {
            print(_selectedItemIndex);
          }
        });
      }),
      child: Container(
        width: width,
        height: 60,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              image,
              color: (_selectedItemIndex == index)
                  ? RColor.primary
                  : RColor.black40,
              scale: 2,
            ),
            SizedBox(
              height: (_selectedItemIndex == index) ? 12 : 7,
            ),
            (_selectedItemIndex == index)
                ? Container(
                    width: 10,
                    height: 4,
                    decoration: BoxDecoration(
                      color: RColor.primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                : Text(
                    label,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: RColor.black40,
                    ),
                  ),
            SizedBox(
              height: (_selectedItemIndex == index) ? 3 : 0,
            ),
          ],
        ),
      ),
    );
  }
}
