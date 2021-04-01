import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

class SightDetails extends StatelessWidget {
  SightDetails({@required this.sight});

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
                  color: Colors.deepPurpleAccent,
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
                                title: sight.name, type: sight.type),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 24),
                              child: Text(
                                sight.details,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  color: Color(0xFF3B3E5B),
                                ),
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
                      Divider(color: Color.fromRGBO(124, 126, 146, 0.56)),
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
          color: Colors.white),
    );
  }
}

class SightDetailsHeader extends StatelessWidget {
  SightDetailsHeader(
      {@required this.title, @required this.type, this.workTime = '9.00'});
  final String title;
  final String type;
  final String workTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF3B3E5B),
            ),
          ),
          Row(
            children: [
              Text(
                type,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3B3E5B),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'закрыто до $workTime',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  color: Color(0xFF7C7E92),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
