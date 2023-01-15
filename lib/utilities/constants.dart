import 'package:flutter/material.dart';

import '/presentation/screens/hero/heroes.dart';
import '/presentation/screens/bloon/bloons.dart';
import '/presentation/screens/tower/towers.dart';

import '/utilities/global_state.dart';

const baseApiUrl = 'https://statsnite.com/api/btd/v3';

const baseImageUrl = 'https://statsnite.com/images/btd';

const List<String> titles = [
  'Towers',
  'Heroes',
  'Bloons',
];

List<Widget> pages = [
  const Towers(
    key: PageStorageKey<String>('Towers'),
    towerType: '',
  ),
  const Heroes(key: PageStorageKey<String>('Heroes')),
  const Bloons(key: PageStorageKey<String>('Bloons')),
  ...GlobalState.towerTypes.map(
    (tower) => Towers(
      key: PageStorageKey<String>(tower),
      towerType: tower,
    ),
  ),
];

PageController pageController = PageController();
