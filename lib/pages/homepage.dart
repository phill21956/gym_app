import 'package:flutter/material.dart';
import 'package:gym_app/config/pages.dart';
import 'package:gym_app/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Gym App')),
            actions: [
              IconButton(
                  icon: Icon(Icons.account_circle_outlined), onPressed: () {})
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          drawer: DrawerWidget(),
          body: Container(
            margin: EdgeInsets.only(left: 15, right: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Text(
                    'Welcome\nPhilip Inegbedion',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            child: BoxWidget(
                              boxImage: 'images/gym1.jpg',
                              title: 'Muscle-Build',
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, MuscleBuildPage.id);
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: BoxWidget(
                              boxImage: 'images/gym2.jpg',
                              title: 'Weight-Loss',
                              onPressed: () {
                                Navigator.pushNamed(context, WeightLossPage.id);
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: BoxWidget(
                              boxImage: 'images/gym3.jpg',
                              title: 'Yoga',
                              onPressed: () {
                                Navigator.pushNamed(context, YogaPage.id);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  Container(
                    child: Text(
                      'REPORT',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReportWidget(
                        reportInfo: '27th May',
                        reportTitle: 'Last Workout Date',
                      ),
                      ReportWidget(
                        reportInfo: '120 min',
                        reportTitle: 'Minutes',
                      ),
                      ReportWidget(
                        reportInfo: '500 cal',
                        reportTitle: 'Calories Burnt',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
