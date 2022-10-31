import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reapclone/helpers/colors.dart';
import 'package:reapclone/helpers/space.dart';
import 'package:reapclone/screens/nav.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController anything = TextEditingController();
  bool error = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: ListView(
            children: [
              SizedBox(height: 250),
              TextFormField(
                textAlign: TextAlign.center,
                controller: anything,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: RColor.blueLight.withOpacity(.2),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: RColor.blueLight,
                  )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Just type anything',
                  hintStyle: TextStyle(
                    color: RColor.primaryDark,
                  ),
                  //border: OutlineInputBorder(),
                ),
              ),
              space20,
              GestureDetector(
                onTap: (() {
                  if (anything.text.length > 1) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Nav()));
                  } else {
                    setState(() {
                      error = true;
                    });
                  }
                }),
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: RColor.primaryDark,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Oya Enter',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: RColor.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              space20,
              error
                  ? Text(
                      'Just type something na...',
                      style: TextStyle(
                        color: RColor.red,
                      ),
                      textAlign: TextAlign.center,
                    )
                  : space5,
            ],
          ),
        ));
  }
}
