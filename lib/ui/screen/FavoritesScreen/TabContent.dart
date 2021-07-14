import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/screen/FavoritesScreen/EmptyTabContent.dart';
import 'package:places/ui/screen/cards/SightCard.dart';

class TabContent extends StatelessWidget {
  final List<Sight> sights;
  final SightCartType type;

  TabContent({required this.sights, required this.type});
  @override
  Widget build(BuildContext context) {
    return sights.length == 0
        ? EmptyTabContent(type: type)
        : Padding(
            padding: EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16,
            ),
            child: Column(
              children: [
                for (var sight in sights)
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                    child: SightCard(
                      sight: sight,
                      type: type,
                    ),
                  )
              ],
            ),
          );
  }
}
