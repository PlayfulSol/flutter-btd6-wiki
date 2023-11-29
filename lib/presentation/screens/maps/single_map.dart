import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/models/maps/map.dart';
import '/utilities/constants.dart';
import '/utilities/images_url.dart';

class SingleMap extends StatefulWidget {
  const SingleMap({
    super.key,
    required this.mapId,
  });

  final String mapId;

  @override
  State<SingleMap> createState() => _SingleMapState();
}

class _SingleMapState extends State<SingleMap> {
  late final MapModel map;
  @override
  Future<void> initState() async {
    super.initState();
    var path = '${mapDataPath + widget.mapId}.json';
    final data = await rootBundle.loadString(path);
    var jsonData = json.decode(data);
    map = MapModel.fromJson(jsonData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(map.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image(
                  semanticLabel: map.name,
                  image: AssetImage(mapImage(map.image)),
                  height: 200,
                ),
                const SizedBox(height: 10),
                Text(map.name,
                    textAlign: TextAlign.center, style: bigTitleStyle),
                Divider(
                  thickness: 2,
                  color: Colors.grey[600],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    const Text("Difficulty:", style: titleStyle),
                    const SizedBox(height: 5),
                    Text(map.difficulty, style: normalStyle),
                    const SizedBox(height: 15),
                    const Text(
                      'Entrances:',
                      style: titleStyle,
                    ),
                    const SizedBox(height: 5),
                    Text(map.entrances ?? '', style: normalStyle),
                    const SizedBox(height: 15),
                    const Text(
                      'Exits:',
                      style: titleStyle,
                    ),
                    const SizedBox(height: 5),
                    Text(map.exits ?? '', style: normalStyle),
                    const SizedBox(height: 15),
                    const Text(
                      'Terrain:',
                      style: titleStyle,
                    ),
                    const SizedBox(height: 5),
                    Text(map.terrain ?? '', style: normalStyle),
                    const SizedBox(height: 15),
                    const Text(
                      'Water:',
                      style: titleStyle,
                    ),
                    const SizedBox(height: 5),
                    Text(map.water ?? '', style: normalStyle),
                    const SizedBox(height: 15),
                    const Text(
                      'Removable Objects:',
                      style: titleStyle,
                    ),
                    const SizedBox(height: 5),
                    Text(map.removableObject ?? '', style: normalStyle),
                    const SizedBox(height: 15),
                    const Text(
                      'Highground:',
                      style: titleStyle,
                    ),
                    const SizedBox(height: 5),
                    Text(map.highground ?? '', style: normalStyle),
                    const SizedBox(height: 15),
                    const Text(
                      'Sight Blocker:',
                      style: titleStyle,
                    ),
                    const SizedBox(height: 5),
                    Text(map.sightBlocker ?? '', style: normalStyle),
                    const SizedBox(height: 15),
                    const Text(
                      'Music:',
                      style: titleStyle,
                    ),
                    const SizedBox(height: 5),
                    Text(map.music ?? '', style: normalStyle),
                    const SizedBox(height: 15),
                    const Text('Reward for first completion:',
                        style: titleStyle),
                    const SizedBox(height: 5),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount:
                          mapDifficultyToReward[map.difficulty]?.length ?? 0,
                      itemBuilder: (context, index) {
                        final rewards = mapDifficultyToReward[map.difficulty];
                        final rewardKeys = rewards?.keys.toList() ?? [];
                        final rewardValues = rewards?.values.toList() ?? [];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  rewardKeys[index],
                                  style: normalStyle,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  rewardValues[index],
                                  style: normalStyle,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Length:',
                      style: titleStyle,
                    ),
                    const SizedBox(height: 5),
                    Text(map.length ?? '', style: normalStyle),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
