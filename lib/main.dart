import 'package:flutter/material.dart';
import 'package:gym_app/config/pages.dart';
import 'routes/routes.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gym App',
      theme: ThemeData(
    //   primaryColorDark: Colors.black,
       //  primaryColor: Colors.grey,
        primarySwatch: Colors.grey,
      ),
  initialRoute: SplashScreen.id ,
  routes: routes,
    );
  }
}
