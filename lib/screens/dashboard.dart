import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reapclone/helpers/colors.dart';
import 'package:reapclone/helpers/space.dart';
import 'package:reapclone/helpers/style.dart';
import 'package:reapclone/widgets/quick_action_cta.dart';
import 'package:reapclone/widgets/savings_plans_cta.dart';

import '../widgets/section_title.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  ScrollController _topCardScrollController = ScrollController();
  ScrollController _bottomAdScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: RColor.white,
      body: Stack(
        children: [
          ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: 260,
              ),
              SectionTitle(
                title: 'Quick Actions',
              ),

              // Quick Actions
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    QuickActionIcon(
                      image: 'assets/images/topup.png',
                      color: RColor.primary,
                      label: 'Top up',
                    ),
                    QuickActionIcon(
                      image: 'assets/images/withdraw.png',
                      color: RColor.orange,
                      label: 'Withdraw',
                    ),
                    QuickActionIcon(
                      image: 'assets/images/transfer.png',
                      color: RColor.green,
                      label: 'Transfer',
                    ),
                    QuickActionIcon(
                      image: 'assets/images/more.png',
                      color: RColor.purple,
                      label: 'Transfer',
                    ),
                  ],
                ),
              ),

              space20,

              SectionTitle(title: 'Start a svings plan'),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SavingsPlansCTA(
                      image: 'assets/images/key.png',
                      color: RColor.primary,
                      title: 'Reap Savings',
                      subtitle: 'Fixed Savings',
                      width: MediaQuery.of(context).size.width / 3.5,
                    ),
                    SavingsPlansCTA(
                      image: 'assets/images/target.png',
                      color: RColor.purple,
                      title: 'Personal Targets',
                      subtitle: 'Saving solo',
                      width: MediaQuery.of(context).size.width / 3.5,
                    ),
                    SavingsPlansCTA(
                      image: 'assets/images/hut.png',
                      color: RColor.yellowDark,
                      title: 'Village Savings',
                      subtitle: 'Save with friends',
                      width: MediaQuery.of(context).size.width / 3.5,
                    )
                  ],
                ),
              ),

              space20, space20,

              // Bottom Ad Slider
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  controller: _bottomAdScrollController,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      width: MediaQuery.of(context).size.width * .92,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: RColor.purple,
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/app_ads_${index + 1}.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),

              space10,
              // Bottom Ad Slider scroll indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return AnimatedContainer(
                    duration: Duration(microseconds: 1000),
                    width: 5,
                    height: 5,
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: RColor.blueLight,
                    ),
                  );
                }),
              ),

              space20,

              SectionTitle(title: 'Today on the blog'),

              // Blog latest

              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: RColor.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 5.0,
                      color: RColor.black40.withOpacity(.1),
                      spreadRadius: .5,
                    ),
                    BoxShadow(
                      offset: Offset(0, -3),
                      blurRadius: 5.0,
                      color: RColor.white,
                      spreadRadius: .5,
                    )
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 130,
                      width: MediaQuery.of(context).size.width * .40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/holiday.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .50,
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '5 budget holiday destinations',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: true,
                          ),
                          space10,
                          Text(
                            'Read more...',
                            style: TextStyle(
                              fontSize: 16,
                              color: RColor.primary,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              space20,
            ],
          ),
          Positioned(
            child: Container(
              color: RColor.white,
              height: 290,
              child: Column(
                children: [
                  space30, space10,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/account.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hi, Toyo',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Hope you\'re doing great',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: RColor.black,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.notifications_outlined,
                          color: RColor.primary,
                        ),
                      ],
                    ),
                  ),

                  space20,

                  // Top Card Slider
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 160,
                    padding: const EdgeInsets.only(left: 16.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      controller: _topCardScrollController,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: MediaQuery.of(context).size.width * .90,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: AssetImage('assets/images/icon.png'),
                              fit: BoxFit.cover,
                            ),
                            gradient: LinearGradient(
                              colors: [
                                RColor.primary,
                                RColor.primaryDark,
                              ],
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Wallet Balance',
                                    style: whiteTextMid,
                                  ),
                                  horizontalspace5,
                                  Icon(
                                    Icons.visibility_off_outlined,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  )
                                ],
                              ),
                              Text(
                                'N700,879.00',
                                style: whiteTextLarge,
                              ),
                              space20,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '8022303091-Sterling Bank',
                                    style: whiteTextMid,
                                  ),
                                  horizontalspace10,
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                        color: RColor.white,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      'View',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: RColor.primary,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          width: MediaQuery.of(context).size.width * .90,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: RColor.violet,
                            image: DecorationImage(
                              image: AssetImage('assets/images/icon.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Interest Pool',
                                    style: whiteTextMid,
                                  ),
                                  horizontalspace5,
                                  Icon(
                                    Icons.visibility_off_outlined,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  )
                                ],
                              ),
                              Text(
                                'N30,927.00',
                                style: whiteTextLarge,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  space10,
                  // Top Card Slider scroll indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(2, (index) {
                      return AnimatedContainer(
                        duration: Duration(microseconds: 1000),
                        width: 5,
                        height: 5,
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: RColor.blueLight,
                        ),
                      );
                    }),
                  ),

                  // Vertical spacing
                  space10,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
