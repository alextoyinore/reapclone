import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reapclone/helpers/colors.dart';
import 'package:reapclone/helpers/space.dart';
import 'package:reapclone/helpers/style.dart';
import 'package:reapclone/widgets/chart_indicator.dart';
import 'package:reapclone/widgets/donut_pie_chart.dart';
import 'package:reapclone/widgets/linechartwidget.dart';
import 'package:reapclone/widgets/money_info_box.dart';
import 'package:reapclone/widgets/money_rate_info.dart';
import 'package:reapclone/widgets/piechart_section.dart';
import 'package:reapclone/widgets/section_title.dart';

class MoneySummary extends StatefulWidget {
  const MoneySummary({super.key});

  @override
  State<MoneySummary> createState() => _MoneySummaryState();
}

class _MoneySummaryState extends State<MoneySummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: RColor.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: RColor.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: RColor.black,
          ),
        ),
        title: Text(
          'Money Summary',
          style: pageTitle,
        ),
      ),
      body: ListView(
        children: [
          space20,
          SectionTitle(title: 'Overall savings rating'),
          space20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * .15,
                  decoration: BoxDecoration(
                    color: RColor.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 10,
                        color: RColor.black40.withOpacity(.3),
                        spreadRadius: 4.0,
                      ),
                      BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 10,
                        color: RColor.white,
                        spreadRadius: 4.0,
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '6.0',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: RColor.primary,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * .7,
                  decoration: BoxDecoration(
                    color: RColor.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 10,
                        color: RColor.black40.withOpacity(.3),
                        spreadRadius: 4.0,
                      ),
                      BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 10,
                        color: RColor.white,
                        spreadRadius: 4.0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 6,
                              width: MediaQuery.of(context).size.width * .40,
                              decoration: BoxDecoration(
                                color: RColor.blueLight.withOpacity(.5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              height: 6,
                              width: MediaQuery.of(context).size.width * .32,
                              decoration: BoxDecoration(
                                color: RColor.primary,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                        horizontalspace10,
                        Text(
                          'Pro Saver',
                          style: TextStyle(
                            color: RColor.greenStrong,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          space20,
          space20,
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: RColor.blueLight.withOpacity(.2),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Monthly money report',
                    style: TextStyle(fontSize: 16),
                  ),
                  Image.asset(
                    'assets/images/download.png',
                    scale: 2.0,
                    color: RColor.primary,
                  ),
                ],
              ),
            ),
          ),
          space30,
          SectionTitle(title: 'Overall Assets'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'N740,879.00',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          space20,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 150,
                  child: PieChart(
                    swapAnimationDuration:
                        Duration(milliseconds: 150), // Optional
                    swapAnimationCurve: Curves.linear,
                    PieChartData(
                      startDegreeOffset: 100,
                      sectionsSpace: 0,
                      centerSpaceRadius: double.infinity,
                      sections: getSections(),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: ChartIndicatorWidget(),
                )
              ],
            ),
          ),
          space30,
          SectionTitle(title: 'Assets breakdown'),
          space10,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MoneyInfoBox(
              title: 'Wallet',
              number: '700,878.22',
            ),
          ),
          space10,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MoneyInfoBox(
              title: 'Savings',
              number: '40,000.00',
            ),
          ),
          space15,
          SectionTitle(title: 'Reap coins'),
          space5,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MoneyInfoBox(
              title: 'Reap coin',
              number: 'R46,000',
            ),
          ),
          space20,
          SectionTitle(title: 'Daily activity'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MoneyRateInfo(
                  topLabel: 'Credit',
                  percent: 70.25,
                ),
                horizontalspace10,
                MoneyRateInfo(
                  topLabel: 'Debit',
                  percent: 24.25,
                  color: RColor.red,
                  isCredit: false,
                ),
              ],
            ),
          ),
          space20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SectionTitle(title: 'This month\'s metrics'),
            ],
          ),
          space10,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: RColor.blueLight.withOpacity(.05),
              child: LineChartWidget(),
            ),
          ),
          space20,
          SectionTitle(title: 'Watch money sense'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              foregroundDecoration: BoxDecoration(
                color: RColor.blueLight.withOpacity(.2),
              ),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/images/video.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: RColor.white,
                      width: 5,
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/play.png',
                    scale: 1.0,
                  ),
                ),
              ),
            ),
          ),
          space30,
        ],
      ),
    );
  }
}
