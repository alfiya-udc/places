import 'package:flutter/material.dart';
import 'package:places/domain/mocks.dart';
import 'package:places/theme/textStyles.dart';
import 'package:places/ui/screen/CustomAppBar.dart';
import 'package:places/ui/screen/SightCard.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> cards = mocks
        .map((sight) => Container(
              child: SightCard(sight: sight),
              margin: EdgeInsets.only(bottom: 16),
            ))
        .toList();

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Список\n\nинтересных мест',
        height: 152,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: cards,
          ),
        ),
      ),
    );
  }
}
