import 'package:flutter/material.dart';

const String kTowers = 'towers';
const String kHeroes = 'heroes';
const String kBloons = 'bloons';
const String kBlimps = 'blimps';
const String kBosses = 'bosses';
const String kMaps = 'maps';

const int kTowersIndex = 0;
const int kHeroesIndex = 1;
const int kBloonsIndex = 2;
const int kMapsIndex = 3;

const List<String> capTitles = [
  'Towers',
  'Heroes',
  'Bloons & Bosses',
  'Maps',
];

const List<String> simpleTitles = [
  'towers',
  'heroes',
  'bloons',
  'maps',
];

const List<Icon> icons = [
  Icon(Icons.cell_tower),
  Icon(Icons.person),
  Icon(Icons.nature),
  Icon(Icons.map_outlined),
];

const configDirectory = 'assets/data/config';
const towerDataPath = 'assets/data/towers/';
const heroDataPath = 'assets/data/heroes/';
const mapDataPath = 'assets/data/maps/';
const bloonsDataPath = 'assets/data/bloons/';
const bossesDataPath = 'assets/data/bosses/';
const minionsDataPath = 'assets/data/minions/';

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

const List<String> mapDifficulties = [
  'All',
  'Beginner',
  'Intermediate',
  'Advanced',
  'Expert'
];

const List<String> towerTypes = [
  'All',
  'Primary',
  'Military',
  'Magic',
  'Support',
];

const List<String> bloonTypes = [
  'All',
  'Bloons',
  'Blimps',
  'Bosses',
];

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

const Map<String, String> bossImageLabels = {
  'normal': 'Normal',
  'defeated': 'Defeated',
  'elite': 'Elite',
  'eliteDefeated': 'Elite Defeated',
};

const TextStyle subtitleStyle = TextStyle(
  fontSize: 13,
);

const TextStyle normalStyle = TextStyle(
  fontSize: 16,
);

const TextStyle bolderNormalStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
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

const Map<String, dynamic> constraintsSmallPreset = {
  "crossAxisCount": 1,
  "rowsToShow": 2,
  "childAspectRatio": 3.1,
  "titleFontSize": 17.0,
  "subtitleFontSize": 15.0,
};

const Map<String, dynamic> constraintsNormalPreset = {
  "crossAxisCount": 1,
  "rowsToShow": 2,
  "childAspectRatio": 3.7,
  "titleFontSize": 18.0,
  "subtitleFontSize": 15.0,
};

const Map<String, dynamic> constraintsWidePreset = {
  "crossAxisCount": 2,
  "rowsToShow": 3,
  "childAspectRatio": 2.4,
  "titleFontSize": 20.0,
  "subtitleFontSize": 16.0,
};

const Map<String, dynamic> constraintsUWPreset = {
  "crossAxisCount": 3,
  "rowsToShow": 3,
  "childAspectRatio": 2.0,
  "titleFontSize": 24.0,
  "subtitleFontSize": 15.0,
};

const Map<String, dynamic> constraintsBloonSmallPreset = {
  "crossAxisCount": 2,
  "crossAxisCountBoss": 1,
  "childAspectRatio": 1.95,
  "childAspectRatioBoss": 3.45,
  "titleFontSize": 16.0,
  "imageWidth": 29.0,
  "textStyleBoss": bolderNormalStyle,
};

const Map<String, dynamic> constraintsBloonNormalPreset = {
  "crossAxisCount": 2,
  "crossAxisCountBoss": 1,
  "childAspectRatio": 2.3,
  "childAspectRatioBoss": 4.05,
  "titleFontSize": 19.0,
  "imageWidth": 35.0,
  "textStyleBoss": smallTitleStyle,
};

const Map<String, dynamic> constraintsBloonWidePreset = {
  "crossAxisCount": 3,
  "crossAxisCountBoss": 2,
  "childAspectRatio": 2.2,
  "childAspectRatioBoss": 3.5,
  "titleFontSize": 19.0,
  "imageWidth": 42.0,
  "textStyleBoss": smallTitleStyle,
};

const Map<String, dynamic> constraintsBloonUWPreset = {
  "crossAxisCount": 3,
  "crossAxisCountBoss": 2,
  "childAspectRatio": 2.2,
  "childAspectRatioBoss": 3.5,
  "titleFontSize": 22.0,
  "imageWidth": 56.0,
  "textStyleBoss": titleStyle,
};

const String googleLink =
    'https://play.google.com/store/apps/details?id=asafhadad.btd6wiki';

const String playfulEmail = 'Playfulsols@gamil.com';
const String playfulGitRepo = 'https://github.com/PlayfulSol/flutter-btd6-wiki';

const String name = 'name';
const String email = 'email';
const String gitRepo = 'git_repo';
const String git = 'git';
const String linkedin = 'linkedin';

const Map<String, String> asaf = {
  name: 'Asaf Hadad',
  email: 'asaf147369@gmail.com',
  git: 'https://github.com/asaf147369',
  linkedin: 'https://www.linkedin.com/in/asaf-hadad/',
};

const Map<String, String> shai = {
  name: 'Shai Holczer',
  email: 'shaitnto@gmail.com',
  git: 'https://github.com/namelessto',
  linkedin: 'https://www.linkedin.com/in/shai-holczer/',
};
