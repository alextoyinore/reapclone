import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reapclone/helpers/colors.dart';
import 'package:reapclone/helpers/space.dart';

class TransactionSummary extends StatefulWidget {
  bool deposit;
  String date;
  String amount;
  TransactionSummary({
    super.key,
    required this.deposit,
    required this.date,
    required this.amount,
  });

  @override
  State<TransactionSummary> createState() => _TransactionSummaryState();
}

class _TransactionSummaryState extends State<TransactionSummary> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            this.widget.deposit
                ? Image.asset(
                    'assets/images/deposit.png',
                    scale: 1.5,
                  )
                : Image.asset(
                    'assets/images/withdrawal.png',
                    scale: 1.5,
                  ),
            horizontalspace15,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                this.widget.deposit
                    ? Text(
                        'Quick Top Up',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      )
                    : Text(
                        'Withdrawal',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                space5,
                this.widget.deposit
                    ? Text(
                        'You credited your plan',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: RColor.black40,
                        ),
                      )
                    : Text(
                        'You debited your plan',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: RColor.black40,
                        ),
                      ),
                space5,
                Text(
                  'Sat, 3-May-2022. 20:20pm',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: RColor.black40,
                  ),
                ),
              ],
            ),
          ],
        ),
        Text(
          this.widget.amount,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: this.widget.deposit ? RColor.greenStrong : RColor.red,
          ),
        )
      ],
    );
  }
}
