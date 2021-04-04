import 'package:flutter/material.dart';
import 'package:places/domain/mocks.dart';
import 'package:places/theme/textStyles.dart';
import 'package:places/ui/screen/SightCard.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  List<Widget> cards = mocks
      .map((sight) => Container(
            child: SightCard(sight: sight),
            margin: EdgeInsets.only(bottom: 16),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0,
        title: Padding(
          padding: EdgeInsets.fromLTRB(16, 64, 16, 16),
          child: Text(
            'Список\n\nинтересных мест',
            style: appbarStyle,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 152.0,
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
