import 'package:flutter/material.dart';

import '/presentation/screens/maps/maps.dart';
import '/presentation/screens/hero/heroes.dart';
import '/presentation/screens/bloon/bloons.dart';
import '/presentation/screens/tower/towers.dart';

const List<String> titles = [
  'Towers',
  'Heroes',
  'Bloons',
  'Maps',
];

List<Widget> pages = [
  const Towers(key: PageStorageKey<String>('Towers'), towerType: ''),
  const Heroes(key: PageStorageKey<String>('Heroes')),
  const Bloons(key: PageStorageKey<String>('Bloons')),
  const Maps(key: PageStorageKey<String>('Maps'), mapDifficulty: ''),
];

const towerDataPath = 'assets/data/towers/';
const heroDataPath = 'assets/data/heroes/';
const bloonsDataPath = 'assets/data/bloons/';
const bossesDataPath = 'assets/data/bosses/';

PageController pageController = PageController(initialPage: 0);

const Map<String, String> statsDictionary = {
  'damage': 'Damage',
  'pierce': 'Pierce',
  'attackSpeed': 'Attack Speed',
  'range': 'Range',
  'statusEffects': 'Status Effects',
  'towerBoosts': 'Tower Boosts',
  'incomeBoosts': 'Income Boosts',
  'camo': 'Camo',
  'levelSpeed': 'Level Speed',
};

const Map<String, String> pathsDictionary = {
  'path1': 'Top Path',
  'path2': 'Middle Path',
  'path3': 'Bottom Path',
  'paragon': 'Paragon',
};

const Map<String, Map<String, String>> mapDifficultyToReward = {
  'Beginner': {
    'easy': '75\$',
    'medium': '125\$',
    'hard': '200\$',
    'impoppable': '300\$',
  },
  'Intermediate': {
    'easy': '150\$',
    'medium': '250\$',
    'hard': '400\$',
    'impoppable': '600\$',
  },
  'Advanced': {
    'easy': '225\$',
    'medium': '375\$',
    'hard': '600\$',
    'impoppable': '900\$',
  },
  'Expert': {
    'easy': '300\$',
    'medium': '500\$',
    'hard': '800\$',
    'impoppable': '1200\$',
  },
};

const TextStyle normalStyle = TextStyle(
  fontSize: 16,
);

const TextStyle smallTitleStyle = TextStyle(
  fontSize: 19,
  fontWeight: FontWeight.bold,
);

const TextStyle titleStyle = TextStyle(
  fontSize: 21,
  fontWeight: FontWeight.bold,
);

const TextStyle bigTitleStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
);
