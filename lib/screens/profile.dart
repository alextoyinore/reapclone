import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reapclone/helpers/colors.dart';
import 'package:reapclone/helpers/space.dart';
import 'package:reapclone/helpers/style.dart';
import 'package:reapclone/widgets/portfolio_list_item.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: RColor.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: RColor.sky,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: RColor.black,
        ),
        title: Text(
          'Profile',
          style: pageTitle,
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              children: [
                SizedBox(height: 250),
                PortfolioItem(
                  image: 'assets/images/profile_outline.png',
                  title: 'Profile',
                  subtitle: 'Manage your profile',
                ),
                space30,
                PortfolioItem(
                  image: 'assets/images/settings_outline.png',
                  title: 'App Settings',
                  subtitle: 'Themes, Login Options, App Icons',
                ),
                space30,
                PortfolioItem(
                  image: 'assets/images/security_outline.png',
                  title: 'Update KYC',
                  subtitle: 'Edit and update your KYC',
                ),
                space30,
                PortfolioItem(
                  image: 'assets/images/update_profile_outline.png',
                  title: 'Update next of kin',
                  subtitle: 'Manage next of kin details',
                ),
                space30,
                PortfolioItem(
                  image: 'assets/images/card_outline.png',
                  title: 'Banks and Cards',
                  subtitle: 'Manage your cards and banking details',
                ),
                space30,
                PortfolioItem(
                  image: 'assets/images/glossary_outline.png',
                  title: 'App Glossary',
                  subtitle: 'Definitions and FAQs',
                ),
                space30,
                PortfolioItem(
                  image: 'assets/images/support_outline.png',
                  title: 'App Support',
                  subtitle: 'Contact support team',
                ),
                space30,
                PortfolioItem(
                  image: 'assets/images/logout_outline.png',
                  title: 'Logout',
                  subtitle: 'Logout of your account',
                ),
                space30,
              ],
            ),
          ),
          Positioned(
            child: Container(
              width: double.infinity,
              height: 240,
              color: RColor.white,
            ),
          ),
          Positioned(
            child: Container(
              width: double.infinity,
              height: 50,
              color: RColor.sky,
            ),
          ),
          Positioned(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 55,
                      foregroundImage: AssetImage('assets/images/account.png'),
                      backgroundColor: Colors.transparent,
                    ),
                    space10,
                    Text(
                      'Welcome,',
                      style: TextStyle(
                        color: RColor.black40,
                        fontSize: 16,
                      ),
                    ),
                    space10,
                    Text(
                      'Toyin Makun',
                      style: TextStyle(
                        color: RColor.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    space10,
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: RColor.blueLight.withOpacity(.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: RColor.blueLight,
                            ),
                          ),
                          horizontalspace10,
                          Text(
                            'Toyinbaby1',
                            style: TextStyle(
                              color: RColor.blueLight,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
