import 'package:flutter/cupertino.dart';

class SectionTitle extends StatelessWidget {
  String title;
  SectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16,
      ),
      child: Text(
        this.title,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
