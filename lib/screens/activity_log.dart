import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reapclone/helpers/colors.dart';
import 'package:reapclone/helpers/space.dart';
import 'package:reapclone/helpers/style.dart';
import 'package:reapclone/objects/tab_indicator.dart';
import 'package:reapclone/widgets/activity_saving_summary.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class ActivityLog extends StatefulWidget {
  const ActivityLog({super.key});

  @override
  State<ActivityLog> createState() => _ActivityLogState();
}

class _ActivityLogState extends State<ActivityLog>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

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
          'Activity Log',
          style: pageTitle,
        ),
      ),
      body: Column(
        children: [
          space20,
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TabBar(
              indicatorColor: RColor.black,
              indicatorWeight: 5,
              indicator: DotIndicator(
                color: RColor.black,
                distanceFromCenter: 16,
              ),
              labelPadding: EdgeInsets.only(right: 30),
              padding: EdgeInsets.zero,
              isScrollable: true,
              physics: BouncingScrollPhysics(),
              labelColor: RColor.black,
              unselectedLabelColor: RColor.black40,
              controller: _tabController,
              tabs: [
                Tab(text: 'Reap Savings'),
                Tab(text: 'Personal Targets'),
                Tab(text: 'Villages'),
              ],
            ),
          ),
          space10,
          Container(
            width: MediaQuery.of(context).size.width,
            height: 600,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.2,
                          height: 40,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: RColor.sky,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                            border: Border.all(
                              color: RColor.primary.withOpacity(.5),
                            ),
                          ),
                          child: Text(
                            'Active',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.2,
                          height: 40,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: RColor.sky20,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                            border: Border.all(
                              color: RColor.primary.withOpacity(.2),
                            ),
                          ),
                          child: Text(
                            'Achieved',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: RColor.black40.withOpacity(.5)),
                          ),
                        )
                      ],
                    ),
                    space20,

                    //Saving summary
                    ActivitySavingSummary(
                      amountSaved: 'N4,000.00',
                      plan: 'Reapquick',
                      interestAccrued: 'N105.90',
                      date: 'Mat date: 7th Aug, 2022',
                    ),

                    space20,

                    ActivitySavingSummary(
                      amountSaved: 'N180,000.00',
                      plan: 'Reapplus',
                      interestAccrued: 'N7678.50',
                      date: 'Mat date: 11th Sep, 2022',
                    ),

                    space20,

                    ActivitySavingSummary(
                      amountSaved: 'N5,000,000.00',
                      plan: 'Reapmax',
                      interestAccrued: 'N45,000.00',
                      date: 'Mat date: 7th Aug, 2022',
                    ),
                  ],
                ),
                Text('Personal Target'),
                Text('Villages'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
