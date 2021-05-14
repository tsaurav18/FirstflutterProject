import "package:flutter/material.dart";
import 'package:flutter_application_1/bg_image.dart';
import 'package:flutter_application_1/pages/utils/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            BgImage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(
                      children: [
                        Form(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Enter Username",
                                      labelText: "Username"),
                                ),
                                SizedBox(height: 20),
                                TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: "Enter Password",
                                      labelText: "Password"),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        RaisedButton(
                            onPressed: () {
                              Constants.prefs.setBool("loggedIn", true);
                              Navigator.pushReplacementNamed(
                                  (context), "/home");
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HomePage()));
                            },
                            child: Text("Sign IN"),
                            color: Colors.orange,
                            textColor: Colors.white),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
