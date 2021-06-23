import 'package:flutter/material.dart';
import 'package:gym_app/widgets/cardlistwidget.dart';

class MuscleBuildPage extends StatefulWidget {
  static const String id = 'musclebuild_page';
  @override
  _MuscleBuildPageState createState() => _MuscleBuildPageState();
}

class _MuscleBuildPageState extends State<MuscleBuildPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              }),
          title: Center(child: Text('Muscle Build')),
          actions: [
            IconButton(
                icon: Icon(Icons.account_circle_outlined), onPressed: () {})
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ListView(
          children: [
            Container(
              child: Image.asset('images/gym1.jpg'),
            ),
           CardListWidget(
             cardColor: Colors.green,
             levelText: 'lv 1' ,
             levelTitle: 'Level 1 / 2:10',
             levelSubtitle: 'Light Intensity',
           ),
             CardListWidget(
             cardColor: Colors.green,
             levelText: 'lv 2' ,
             levelTitle: 'Level 2 / 3:20',
             levelSubtitle: 'Light Intensity',
           ),
           CardListWidget(
             cardColor: Colors.green,
             levelText: 'lv 3' ,
             levelTitle: 'Level 3 / 4:10',
             levelSubtitle: 'Light Intensity',
           ),
           CardListWidget(
             cardColor: Colors.green ,
             levelText: 'lv 4' ,
             levelTitle: 'Level 4 / 4:50',
             levelSubtitle: 'Light Intensity',
           ),
           CardListWidget(
             cardColor: Colors.green ,
             levelText: 'lv 5' ,
             levelTitle: 'Level 5 / 5:10',
             levelSubtitle: 'Light Intensity',
           ),
           CardListWidget(
             cardColor: Colors.green ,
             levelText: 'lv 6' ,
             levelTitle: 'Level 6 / 5:50',
             levelSubtitle: 'Moderate Intensity',
           ),
           CardListWidget(
             cardColor: Colors.blueAccent ,
             levelText: 'lv 7' ,
             levelTitle: 'Level 7 / 6:10',
             levelSubtitle: 'Moderate Intensity',
           ),
           CardListWidget(
             cardColor: Colors.blueAccent ,
             levelText: 'lv 8' ,
             levelTitle: 'Level 8 / 7:10',
             levelSubtitle: 'Moderate Intensity',
           ),
           CardListWidget(
             cardColor: Colors.blueAccent  ,
             levelText: 'lv 9' ,
             levelTitle: 'Level 9 / 8:10',
             levelSubtitle: 'Moderate Intensity',
           ),
           CardListWidget(
             cardColor: Colors.blueAccent ,
             levelText: 'lv 10' ,
             levelTitle: 'Level 10 / 9:10',
             levelSubtitle: 'Moderate Intensity',
           ),
           
             
             
             ],
        ),
      ),
    );
  }
}
