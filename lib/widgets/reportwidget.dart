import 'package:flutter/material.dart';

class ReportWidget extends StatelessWidget {

  final String reportInfo;
  final String reportTitle;
  const ReportWidget({this.reportInfo, this.reportTitle});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            reportInfo,
            style: TextStyle(
                fontSize: 20,
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
          reportTitle,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
