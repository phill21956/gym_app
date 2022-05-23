import 'package:flutter/material.dart';
import 'package:gym_app/config/pages.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Philip Inegbedion',
              style: TextStyle(color: Colors.white),
            ),
            accountEmail:
                Text('phill@email.com', style: TextStyle(color: Colors.white)),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white70,
              child: Text(
                'P',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/gym1.jpg'),
              fit: BoxFit.cover,
            )),
          ),
          ListTile(
              title: Text('Home'),
              //    trailing: Icon(Icons.forward_outlined),
              onTap: () {
                Navigator.of(context).pop();
                // Navigator.pushNamed(context, Screen2.id);
              }),
               Divider(),
          ListTile(
              title: Text('Muscle-Build'),
              trailing: Icon(Icons.fitness_center),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, MuscleBuildPage.id);
              }),
          ListTile(
              title: Text('Weight-Loss'),
              trailing: Icon(Icons.directions_bike),
              onTap: () {
                Navigator.of(context).pop();
                 Navigator.pushNamed(context, WeightLossPage.id);
              }),
               ListTile(
              title: Text('Yoga'),
              trailing: Icon(Icons.self_improvement),
              onTap: () {
                Navigator.of(context).pop();
               Navigator.pushNamed(context, YogaPage.id);
              }),
          Divider(),
            ListTile(
            title: Text('Profile'),
            trailing: Icon(Icons.account_circle_outlined),
             onTap: () {
                Navigator.of(context).pop();
                // Navigator.pushNamed(context, Screen3.id);
              }),
          ListTile(
            title: Text('Sign Out'),
            trailing: Icon(Icons.logout),
            onTap: () =>  Navigator.pushNamed(context, SignInPage.id)
          ),
        ],
      ),
    );
  }
}
