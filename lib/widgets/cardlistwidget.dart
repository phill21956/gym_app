import 'package:flutter/material.dart';

class CardListWidget extends StatelessWidget {
  final Color cardColor;
  final String levelText;
  final String levelTitle;
  final String levelSubtitle;
  const CardListWidget({this.cardColor, this.levelText, this.levelTitle, this.levelSubtitle});
  @override
  Widget build(BuildContext context) {
    return  Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: cardColor,
                  child: Center(
                    child: Text(
                      levelText,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                title: Text(levelTitle),
                subtitle: Text(levelSubtitle),
                trailing: Icon(Icons.arrow_forward_rounded),
           onTap: (){
               Navigator.of(context).pop();
           },
           
              ),
            );
        
  }
}