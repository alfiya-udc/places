import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/theme/textStyles.dart';
import 'package:places/theme/colors.dart';

class SightCard extends StatelessWidget {
  SightCard({required this.sight});

  final Sight sight;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Container(
        child: Column(
          children: [
            Container(
              height: 96,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
            ),
            Container(
                height: 92,
                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                decoration: BoxDecoration(
                  color: lightGrey,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      child: SizedBox(
                        height: 16,
                      ),
                      padding: EdgeInsets.only(bottom: 2),
                    ),
                    Text(
                      sight.name,
                      maxLines: 2,
                      style: cardTitleStyle,
                    ),
                    Text(
                      sight.details,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: cardTitleDetails,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
