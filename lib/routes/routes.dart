import 'package:flutter/material.dart';
import 'package:gym_app/config/pages.dart';

Map<String, Widget Function(BuildContext)> routes = {
        SplashScreen.id: (context) => SplashScreen(),
        SignInPage.id: (context) => SignInPage(),
        HomePage.id: (context) => HomePage(),
        MuscleBuildPage.id: (context) => MuscleBuildPage(),
        WeightLossPage.id: (context) => WeightLossPage(),
        YogaPage.id: (context) => YogaPage(),
  };
  