import 'package:flutter/material.dart';
import 'package:places/domain/mocks.dart';
import 'package:places/domain/sight.dart';
import 'package:places/theme/textStyles.dart';
import 'package:places/ui/screen/cards/SightCard.dart';

// как еще иначе можно это хранить?
Map emptyLabel = {
  'toVisit': 'Отмечайте понравившиеся места, и они появятся здесь.',
  'visited': 'Завершите маршрут, чтобы место попало сюда.'
};

class EmptyTabContent extends StatelessWidget {
  final SightCartType type;

  EmptyTabContent({required this.type});

  @override
  Widget build(BuildContext context) {
    final String message = type == SightCartType.toVisit
        ? emptyLabel['toVisit']
        : emptyLabel['visited'];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 64,
          height: 64,
          color: Colors.blueGrey,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 32,
            bottom: 8,
          ),
          child: Text(
            'Пусто',
            style: emptyStyleTitle,
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 253,
            maxWidth: 253,
          ),
          child: Text(
            message,
            style: emptyStyleText,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
