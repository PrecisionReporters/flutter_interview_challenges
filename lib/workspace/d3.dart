import 'dart:math';

import 'package:flutter/material.dart';

class ChallengeThreeWorkspace extends StatefulWidget {
  const ChallengeThreeWorkspace({super.key});

  @override
  State<ChallengeThreeWorkspace> createState() =>
      _ChallengeThreeWorkspaceState();
}

class _ChallengeThreeWorkspaceState extends State<ChallengeThreeWorkspace> {
  late List<Widget> tiles;

  @override
  void initState() {
    super.initState();
    tiles = [
      const ColorfulTile(),
      const ColorfulTile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: tiles,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => tiles.insert(1, tiles.removeAt(0))),
        tooltip: 'Swap',
        child: const Icon(Icons.switch_access_shortcut),
      ),
    );
  }
}

class ColorfulTile extends StatefulWidget {
  const ColorfulTile({super.key});

  @override
  State<ColorfulTile> createState() => _ColorfulTileState();
}

class _ColorfulTileState extends State<ColorfulTile> {
  late Color color;

  @override
  void initState() {
    super.initState();
    color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: color,
    );
  }
}
