import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/textStyles.dart';

enum SightCartType { basic, toVisit, visited }

class SightCard extends StatelessWidget {
  SightCard({required this.sight, this.type = SightCartType.basic});

  final Sight sight;
  final SightCartType type;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Container(
              height: 96,
              decoration: BoxDecoration(
                color: lightGrey,
              ),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      sight.url,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                    ),
                  ),
                  if (type == SightCartType.toVisit)
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              sight.type,
                              style: typeTagStyle,
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            color: Colors.purple,
                          ),
                          SizedBox(
                            width: 23,
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            color: Colors.purple,
                          ),
                        ],
                      ),
                    )
                ],
              ),
            ),
          ),
          Container(
              constraints: BoxConstraints(
                minHeight: 92,
                maxHeight: 102,
              ),
              padding: EdgeInsets.all(16),
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
                  Text(
                    sight.name,
                    maxLines: type == SightCartType.toVisit ? 1 : 2,
                    style: cardTitleStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  if (type == SightCartType.toVisit) ...[
                    Text(
                      'Запланировано на ${sight.toVisit}',
                      maxLines: 1,
                      style: toVisitStyle,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                  ],
                  type == SightCartType.toVisit
                      ? Text(
                          'Закрыто до $sight.workTime',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: cardTitleDetails,
                        )
                      : Text(
                          sight.details,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: cardTitleDetails,
                        ),
                ],
              )),
        ],
      ),
    );
  }
}
