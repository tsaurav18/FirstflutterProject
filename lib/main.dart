import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';

import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(
    MaterialApp(
        title: "myapp",
        debugShowCheckedModeBanner: false,
        home: Constants.prefs.getBool("loggedIn") == true
            ? HomePage()
            : LoginPage(),
        theme: ThemeData(primarySwatch: Colors.purple),
        routes: {
          "/login": (context) => LoginPage(),
          "/home": (context) => HomePage()
        }),
  );
}
