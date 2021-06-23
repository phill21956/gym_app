import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  final String boxImage;
  final String title;
  final Function onPressed;

  const BoxWidget({this.boxImage, this.title, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              boxImage,
              fit: BoxFit.fill,
              height: 250,
              width: 300,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(200, 200, 0, 10),
          child: RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.white24,
            onPressed: onPressed,
            child: Text(
              'GO',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
