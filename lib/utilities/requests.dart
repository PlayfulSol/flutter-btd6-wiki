import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '/models/bloons/boss_bloon.dart';
import '/models/bloons/single_bloon.dart';
import '/models/bloons/basic_bloon.dart';
import '/models/hero.dart';
import '/models/tower.dart';

import '/utilities/global_state.dart';
import '/utilities/constants.dart';

// Bloons
//  getBloons() async {
dynamic getBloons() async {
  var data = await http.get(Uri.parse("$baseApiUrl/bloons"));

  var jsonData = json.decode(data.body);

  List<BasicBloonModel> bloons = [];

  List<BasicBloonModel> bosses = [];

  // for (var b in jsonData) {
  //   BasicBloonModel bloon = BasicBloonModel.fromJson(b);

  //   bloons.add(bloon);
  // }

  for (var b in jsonData) {
    if (b['type'] == 'boss') {
      BasicBloonModel boss = BasicBloonModel.fromJson(b);

      bosses.add(boss);
    } else {
      BasicBloonModel bloon = BasicBloonModel.fromJson(b);

      bloons.add(bloon);
    }
  }

  GlobalState.bloons = bloons;
  GlobalState.bosses = bosses;
}

Future<dynamic> getBloonData(String id) async {
  GlobalState.isLoading = true;
  var data = await http.get(Uri.parse("$baseApiUrl/bloon/$id"));

  var jsonData = json.decode(data.body);

  GlobalState.isLoading = false;
  if (jsonData['type'] == 'boss') {
    var bossData = BossBloonModel.fromJson(jsonData);
    GlobalState.currentTitle = bossData.name;
    return bossData;
  } else {
    var bloonData = SingleBloonModel.fromJson(jsonData);
    GlobalState.currentTitle = bloonData.name;
    return bloonData;
  }
}

// Heroes
dynamic getHeroes() async {
  var data = await http.get(Uri.parse("$baseApiUrl/heroes"));

  var jsonData = json.decode(data.body);

  List<HeroModel> heros = [];

  for (var h in jsonData) {
    HeroModel hero = HeroModel.fromJson(h);

    heros.add(hero);
  }

  GlobalState.heroes = heros;
}

Future<HeroModel> getHeroData(towerId) async {
  GlobalState.isLoading = true;

  var data = (await http.get(Uri.parse("$baseApiUrl/hero/$towerId")));

  var jsonData = json.decode(data.body);

  HeroModel heroData = HeroModel.fromJson(jsonData);

  GlobalState.currentTitle = heroData.name;

  GlobalState.isLoading = false;

  return heroData;
}

// Towers
dynamic getTowers() async {
  var data = await http.get(Uri.parse("$baseApiUrl/towers"));

  var jsonData = json.decode(data.body);

  List<TowerModel> towers = [];

  for (var t in jsonData) {
    TowerModel tower = TowerModel.fromJson(t);
    towers.add(tower);
  }

  GlobalState.towers = towers;
  GlobalState.towerTypes = towers.map((e) => e.type).toSet().toList();
  return towers;
}

Future<SingleTowerModel> getTowerData(towerId) async {
  GlobalState.isLoading = true;
  var data = (await http.get(Uri.parse("$baseApiUrl/tower/$towerId")));

  var jsonData = json.decode(data.body);

  SingleTowerModel towerData = SingleTowerModel.fromJson(jsonData);

  GlobalState.currentTitle = towerData.name;

  GlobalState.isLoading = false;

  return towerData;
}
