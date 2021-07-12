import 'package:flutter/material.dart';
import 'package:places/domain/mocks.dart';
import 'package:places/theme/colors.dart';
import 'package:places/ui/screen/FavoritesScreen/TabContent.dart';
import 'package:places/ui/screen/cards/SightCard.dart';

class FavoritesScreenTab extends StatefulWidget {
  @override
  _FavoritesScreenTabState createState() => _FavoritesScreenTabState();
}

class _FavoritesScreenTabState extends State<FavoritesScreenTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 6,
              horizontal: 16,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: lightGrey,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TabBar(
                indicatorColor: white,
                indicator: BoxDecoration(
                  color: darkBlueGrey,
                  borderRadius: BorderRadius.circular(40),
                ),
                labelColor: white,
                labelStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelColor: inactiveBlack,
                tabs: [
                  Tab(
                    text: 'Хочу посетить',
                  ),
                  Tab(
                    text: 'Посетил',
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                TabContent(
                  sights: mocksToVisit,
                  type: SightCartType.toVisit,
                ),
                TabContent(
                  sights: [],
                  type: SightCartType.visited,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
