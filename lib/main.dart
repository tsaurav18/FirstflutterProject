import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';

import 'package:flutter_application_1/pages/login_page.dart';

void main() {
  runApp(
    MaterialApp(
        title: "myapp",
        home: LoginPage(),
        theme: ThemeData(primarySwatch: Colors.purple),
        routes: {
          "/login": (context) => LoginPage(),
          "/home": (context) => HomePage()
        }),
  );
}
