import 'package:flutter/material.dart';
import 'package:places/domain/mocks.dart';
import 'package:places/theme/colors.dart';

import 'CustomAppBar.dart';
import 'cards/SightCard.dart';

class PlacesListScreen extends StatefulWidget {
  @override
  _PlacesListScreenState createState() => _PlacesListScreenState();
}

class _PlacesListScreenState extends State<PlacesListScreen> {
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      // style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      // style: optionStyle,
    ),
    Text(
      'Index 2: School',
      // style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      // style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> cards = mocks
        .map((sight) => Container(
              child: SightCard(
                sight: sight,
                type: SightCartType.basic,
              ),
              margin: EdgeInsets.only(bottom: 16),
            ))
        .toList();
    return Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: cards,
        ),
      ),
    );
  }
}
