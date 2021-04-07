import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/textStyles.dart';

class SightDetails extends StatelessWidget {
  SightDetails({required this.sight});

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: lightGrey,
                child: Image.network(
                  sight.url,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 24,
                      ),
                      child: Column(
                        children: [
                          SightDetailsHeader(
                            title: sight.name,
                            type: sight.type,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 24),
                            child: Text(
                              sight.details,
                              style: baseTextStyle,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Container(
                            color: Colors.green,
                            height: 48,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: dividerColor,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.grey,
                            height: 40,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.blueGrey,
                            height: 40,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        color: white,
      ),
    );
  }
}

class SightDetailsHeader extends StatelessWidget {
  SightDetailsHeader(
      {required this.title, required this.type, this.workTime = '9.00'});
  final String title;
  final String type;
  final String workTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style: placeTitleStyle,
          ),
          Row(
            children: [
              Text(
                type,
                style: placeTypeStyle,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'закрыто до $workTime',
                style: workTimeStyle,
              )
            ],
          )
        ],
      ),
    );
  }
}
