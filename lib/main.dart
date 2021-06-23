import 'package:flutter/material.dart';
import 'package:gym_app/pages/pages.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym App',
      theme: ThemeData(
    //   primaryColorDark: Colors.black,
       //  primaryColor: Colors.grey,
        primarySwatch: Colors.grey,
      ),
  initialRoute: SplashScreen.id ,
  routes: {
        SplashScreen.id: (context) => SplashScreen(),
        SignInPage.id: (context) => SignInPage(),
        HomePage.id: (context) => HomePage(),
        MuscleBuildPage.id: (context) => MuscleBuildPage(),
        WeightLossPage.id: (context) => WeightLossPage(),
        YogaPage.id: (context) => YogaPage(),

  },
    );
  }
}
