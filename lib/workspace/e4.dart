import 'package:flutter/material.dart';

class ChallengeFourWorkspace extends StatelessWidget {
  const ChallengeFourWorkspace({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      width: 1500,
      child: const Stack(
        children: [
          Align(),
          Tortoise(),
          Hare(),
          FinishLine(),
        ],
      ),
    );
  }
}

class Tortoise extends StatefulWidget {
  const Tortoise({super.key});

  @override
  State<Tortoise> createState() => _TortoiseState();
}

class _TortoiseState extends State<Tortoise> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(right: 20),
      child: SizedBox(
        width: 200,
        height: 200,
        child: Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/5/5f/Animals_png_set_by_mossi889-d4uye4q_-_Tortoise.png',
        ),
      ),
    );
  }
}

class Hare extends StatefulWidget {
  const Hare({super.key});

  @override
  State<Hare> createState() => _HareState();
}

class _HareState extends State<Hare> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(top: 150),
      child: SizedBox(
        width: 200,
        height: 200,
        child: Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Animals_-_Rabbit_%283967%29_--_Smart-Servier.png/640px-Animals_-_Rabbit_%283967%29_--_Smart-Servier.png',
        ),
      ),
    );
  }
}

class FinishLine extends StatelessWidget {
  const FinishLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      padding: const EdgeInsets.only(right: 20),
      child: SizedBox(
        width: 200,
        height: 400,
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/F1_chequered_flag.svg/640px-F1_chequered_flag.svg.png',
          ),
        ),
      ),
    );
  }
}
