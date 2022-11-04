import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reapclone/helpers/colors.dart';
import 'package:reapclone/helpers/space.dart';
import 'package:reapclone/helpers/style.dart';
import 'package:reapclone/widgets/transaction_summary.dart';

import '../widgets/quick_action_cta.dart';
import '../widgets/section_title.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  bool autotoptapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: RColor.sky,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: RColor.black,
        ),
        title: Text(
          'Wallet',
          style: pageTitle,
        ),
      ),
      body: Stack(
        children: [
          ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(height: 150),

              // Wallet Interest
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: RColor.sky,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text('Wallet interest:'),
                    horizontalspace5,
                    Text(
                      'N3,500',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),

              space20,
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

              space20, space20,

              // Interest Pool
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: RColor.blueLight),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Interest Pool',
                      style: TextStyle(
                        color: RColor.primary,
                      ),
                    ),
                    Image.asset(
                      'assets/images/arrow_right.png',
                      scale: 2,
                    )
                  ],
                ),
              ),

              // Auto topup CTA

              space20,
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (autotoptapped) {
                      autotoptapped = false;
                    } else {
                      autotoptapped = true;
                    }
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Auto Topup',
                            style: TextStyle(
                              color: autotoptapped
                                  ? RColor.primary
                                  : RColor.black40,
                            ),
                          ),
                          horizontalspace5,
                          Container(
                            width: 30,
                            height: 15,
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: autotoptapped
                                  ? RColor.primary
                                  : RColor.black40,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 13,
                                  height: 13,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: autotoptapped
                                        ? RColor.primary
                                        : RColor.white,
                                  ),
                                ),
                                Container(
                                  width: 13,
                                  height: 13,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: autotoptapped
                                        ? RColor.white
                                        : RColor.black40,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(
                        'Rate 10% p.a.',
                        style: TextStyle(
                          color: RColor.primary,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              space20,

              // Auto topup summary
              autotoptapped
                  ? Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 8,
                      ),
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: RColor.blueLight),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Frequency',
                                style: TextStyle(
                                  color: RColor.black40,
                                  fontSize: 12,
                                ),
                              ),
                              space5,
                              Text(
                                'Weekly',
                                style: TextStyle(
                                  color: RColor.primary,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Amount',
                                style: TextStyle(
                                  color: RColor.black40,
                                  fontSize: 12,
                                ),
                              ),
                              space5,
                              Text(
                                'N20,000.00',
                                style: TextStyle(
                                  color: RColor.primary,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : space5,

              space20,

              // Weekly history
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: RColor.sky,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Weekly history',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              space20,

              // Weekly Transaction Summary
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    TransactionSummary(
                      deposit: true,
                      date: 'Wed, 27-Oct-2022 3:06AM',
                      amount: '24,000',
                    ),
                    space20,
                    TransactionSummary(
                      deposit: false,
                      date: 'Wed, 27-Oct-2022 3:45AM',
                      amount: '15,000',
                    ),
                    space20,
                    TransactionSummary(
                      deposit: true,
                      date: 'Wed, 27-Oct-2022 07:45AM',
                      amount: '10,500',
                    ),
                    space20,
                    space20,
                    Text(
                      'Read more',
                      style: TextStyle(
                        color: RColor.primary,
                      ),
                    )
                  ],
                ),
              ),

              space20,
            ],
          ),
          Positioned(
            child: Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: RColor.white,
              ),
            ),
          ),
          Positioned(
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: RColor.sky,
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 20,
            child: Container(
              margin: EdgeInsets.only(right: 20),
              width: MediaQuery.of(context).size.width * .90,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  colors: [
                    RColor.primary,
                    RColor.primaryDark,
                  ],
                ),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
