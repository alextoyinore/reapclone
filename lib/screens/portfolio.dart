import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reapclone/helpers/colors.dart';
import 'package:reapclone/helpers/space.dart';
import 'package:reapclone/helpers/style.dart';
import 'package:reapclone/screens/activity_log.dart';
import 'package:reapclone/screens/money_summary.dart';
import 'package:reapclone/widgets/portfolio_list_item.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: RColor.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: RColor.white,
        elevation: 0,
        title: Text(
          'Portfolio',
          style: pageTitle,
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                space20,
                PortfolioItem(
                  image: 'assets/images/activity.png',
                  title: 'Activity Log',
                  subtitle: 'Your money summary all in one place',
                  whenTapped: (() {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => ActivityLog()));
                  }),
                ),
                space20,
                PortfolioItem(
                  image: 'assets/images/transactions.png',
                  title: 'Transactions',
                  subtitle: 'All money activities on the app',
                ),
                space20,
                PortfolioItem(
                  image: 'assets/images/money_summary.png',
                  title: 'Money Summary',
                  subtitle: 'See your savings overview',
                  whenTapped: (() {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => MoneySummary()));
                  }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
