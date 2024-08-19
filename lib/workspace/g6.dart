import 'package:flutter/material.dart';

class ChallengeSixWorkspace extends StatelessWidget {
  const ChallengeSixWorkspace({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 64),
      child: NewYorkTemperature(),
    );
  }
}

class NewYorkTemperature extends StatefulWidget {
  const NewYorkTemperature({super.key});

  @override
  State<NewYorkTemperature> createState() => _NewYorkTemperatureState();
}

class _NewYorkTemperatureState extends State<NewYorkTemperature> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LinearProgressIndicator(),
          Text('Loading New York\'s temperature...'),
        ],
      );
    }

    return const Text('New York\'s temperature is __°<F/C>');
  }
}
