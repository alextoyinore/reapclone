import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reapclone/screens/login.dart';
//import 'package:provider/provider.dart';

import 'screens/nav.dart';

void main() {
  runApp(
      // MultiProvider(
      //   providers: [],
      //   child: const Main(),
      // ),
      const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  void initState() {
    super.initState();
    //App orientation lock
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //textTheme: GoogleFonts.jostTextTheme(Theme.of(context).textTheme),
          ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
      },
    );
  }
}
