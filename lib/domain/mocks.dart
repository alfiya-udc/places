import 'package:flutter/cupertino.dart';
import 'package:places/domain/sight.dart';

final List<Sight> mocks = [
  Sight(
    name: 'Kazan',
    lat: 1.0,
    lon: 1.0,
    url: 'https://1prime.ru/images/83049/19/830491922.jpg',
    details:
        'kazan details kazan details kazan details kazan details kazan details kazan details kazan details kazan details kazan details kazan details kazan details kazan details kazan details kazan details kazan details kazan details kazan details kazan details kazan details kazan details',
    type: 'city',
    workTime: '9.00',
    toVisit: '12 окт 2020',
  ),
  Sight(
    name: 'Tomsk Tomsk Tomsk Tomsk Tomsk Tomsk Tomsk Tomsk Tomsk',
    lat: 2.0,
    lon: 2.0,
    url: 'https://1prime.ru/images/83049/19/830491922.jpg',
    details:
        'Tomsk details Tomsk details Tomsk details Tomsk details Tomsk details Tomsk details Tomsk details Tomsk details Tomsk details',
    type: 'city',
    workTime: '9.00',
    toVisit: '12 окт 2020',
  ),
  Sight(
    name: 'Sochi',
    lat: 2.0,
    lon: 2.0,
    url:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFyXTdRspTNKxgh0srpPkznffCB93GkHl0PA&usqp=CAU',
    details: 'Sochi details',
    type: 'city',
    workTime: '9.00',
    toVisit: '12 окт 2020',
  ),
  Sight(
    name: 'Riga',
    lat: 2.0,
    lon: 2.0,
    url:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX8cpEOXQ9En4JM15KhkRF1HHhpH9Q3uv65w&usqp=CAU',
    details: 'Riga details',
    type: 'city',
    workTime: '9.00',
    toVisit: '12 окт 2020',
  ),
];

final List<Sight> mocksToVisit = [mocks[0], mocks[1]];

final List<Sight> mocksVisited = [mocks[2], mocks[3]];
