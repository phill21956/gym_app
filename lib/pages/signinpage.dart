import 'package:flutter/material.dart';
import 'package:gym_app/config/pages.dart';
import 'package:gym_app/widgets/bg_image_widget.dart';

import '../widgets/input_widget.dart';

class SignInPage extends StatefulWidget {
  static const String id = 'signin_page';
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
        BgImageWidget(deviceSize: deviceSize),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50.0, bottom: 50.0),
              child: Center(
                child: new Column(
                  children: [
                    new Text(
                      "The Gym ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 130,
                    ),
                    InputWidget(
                      inputIcon: Icons.person_outline_sharp,
                      inputText: 'Full Name',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InputWidget(
                      inputIcon: Icons.alternate_email,
                      inputText: 'Input Email',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InputWidget(
                      inputIcon: Icons.lock_open_outlined,
                      inputText: '********',
                    ),
                    new Container(
                      margin: const EdgeInsets.only(
                          left: 40.0, right: 40.0, top: 30.0),
                      alignment: Alignment.center,
                      child: new Row(
                        children: [
                          new Expanded(
                            // ignore: deprecated_member_use
                            child: new FlatButton(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20.0, horizontal: 20.0),
                              color: Colors.black54,
                              onPressed: () =>
                                  {Navigator.pushNamed(context, HomePage.id)},
                              child: Text(
                                "Login with Gmail",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    ));
  }
}
