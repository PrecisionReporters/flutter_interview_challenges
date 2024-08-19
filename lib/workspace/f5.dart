import 'package:flutter/material.dart';

class ChallengeFiveWorkspace extends StatelessWidget {
  const ChallengeFiveWorkspace({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FramesPerSecondCounter(),
        SizedBox(height: 16),
        NthPrime(),
      ],
    );
  }
}

class NthPrime extends StatefulWidget {
  const NthPrime({super.key});

  @override
  State<NthPrime> createState() => _NthPrimeState();
}

class _NthPrimeState extends State<NthPrime> {
  int _n = 1;
  int _nthPrime = -1;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          // This is an arbitrary number to increase the nth prime by.
          _n += 253;
          _nthPrime = nthPrime(_n);
        }));
    return Column(
      children: [
        Text(
          'Nth          $_n\n'
          'Prime    $_nthPrime',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        ElevatedButton.icon(
          onPressed: () => setState(() => _n = 1),
          label: const Text('Reset N'),
          icon: const Icon(Icons.refresh),
        ),
      ],
    );
  }

  bool isPrime(int number) {
    if (number <= 1) return false;
    if (number <= 3) return true;
    if (number % 2 == 0 || number % 3 == 0) return false;
    for (int i = 5; i * i <= number; i += 6) {
      if (number % i == 0 || number % (i + 2) == 0) return false;
    }
    return true;
  }

  int nthPrime(int n) {
    if (n <= 0) throw ArgumentError('n must be a positive integer.');

    int count = 0;
    int num = 1;

    while (count < n) {
      num++;
      if (isPrime(num)) {
        count++;
      }
    }

    return num;
  }
}

class FramesPerSecondCounter extends StatefulWidget {
  const FramesPerSecondCounter({super.key});

  @override
  State<FramesPerSecondCounter> createState() => _FramesPerSecondCounterState();
}

class _FramesPerSecondCounterState extends State<FramesPerSecondCounter> {
  final Stopwatch _stopwatch = Stopwatch();
  int _currentFrame = 0;
  int _lastMeasuredFps = 0;

  @override
  void initState() {
    super.initState();
    _stopwatch.start();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          if (_stopwatch.elapsedMilliseconds > 1000) {
            _lastMeasuredFps = _currentFrame;
            _currentFrame = 0;
            _stopwatch.reset();
          } else {
            _currentFrame++;
          }
        }));
    return Text(
      'FPS      ${_lastMeasuredFps.toString().padLeft(2, '0')}\n'
      'Frame  ${_currentFrame.toString().padLeft(2, '0')}',
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
