import 'package:flutter/material.dart';
import 'package:flutter_interview_challenges/workspace/b1.dart';
import 'package:flutter_interview_challenges/workspace/a0.dart';
import 'package:flutter_interview_challenges/workspace/c2.dart';
import 'package:flutter_interview_challenges/workspace/d3.dart';
import 'package:flutter_interview_challenges/workspace/e4.dart';
import 'package:flutter_interview_challenges/workspace/f5.dart';
import 'package:flutter_interview_challenges/workspace/g6.dart';
import 'package:flutter_interview_challenges/workspace/h7.dart';

class ChallengeZero extends StatelessWidget {
  const ChallengeZero({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChallengeContainer(
      title: 'Challenge Zero - Welcome',
      instructions:
          'You are going to be given a series of challenges to complete. '
          'You will not finish all of them. That\'s okay! The goal is to see '
          'how you approach problems and how you work through them. '
          'You may use any resources you\'d like, including the internet, '
          'Flutter documentation, IDE tooling, debuggers, and any other systems '
          'you find helpful. But, do not directly look up the answers to these '
          'specific challenges. Share your computer screen for the full duration '
          'of the challenges.\n\n'
          'You may choose any build target platform to run the program, so long '
          'as the product can be seen on the share screen. Your solutions must '
          'compile, run, and be successful on at least one target platform. You '
          'may import and use any library from pub.dev, but all challenges can '
          'be completed without additional imports. If you get stuck on a '
          'challenge, feel free to move to the next one. If time allows, you can '
          'return to former challenges later.',
      child: ChallengeZeroWorkspace(),
    );
  }
}

class ChallengeOne extends StatelessWidget {
  const ChallengeOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChallengeContainer(
      title: 'Challenge One - Decrement Counter',
      instructions:
          'This UI probably looks familiar to you. That\'s because it\'s '
          'adapted from the default Flutter counter app. In this challenge, you '
          'need to create a new button that decrements the counter. The new '
          'button should be placed below the existing increment button. Keep '
          'the styling consistent with the existing increment button. ',
      child: ChallengeOneWorkspace(),
    );
  }
}

class ChallengeTwo extends StatelessWidget {
  const ChallengeTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChallengeContainer(
      title: 'Challenge Two - Picture Perfect',
      instructions:
          'Please add an asset image of your choice to the center of the screen. '
          'Then, flip the picture upside-down programmatically. Do not edit '
          'the image.',
      child: ChallengeTwoWorkspace(),
    );
  }
}

class ChallengeThree extends StatelessWidget {
  const ChallengeThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChallengeContainer(
      title: 'Challenge Three - Spot the Bug',
      instructions:
          'When the \'Swap\' button is pressed in the corner of the screen, these '
          'two colored squares should swap their colors. But it\'s not working! '
          'Please fix the bug and explain why it wasn\'t working.',
      child: ChallengeThreeWorkspace(),
    );
  }
}

class ChallengeFour extends StatelessWidget {
  const ChallengeFour({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChallengeContainer(
      title: 'Challenge Four - Fables',
      instructions:
          'Please animate a race between the tortoise and the hare. The hare '
          'should start off quickly, but then slow down dramatically. The tortoise '
          'should remain at a consistent pace the whole race. Both should reach '
          'the finish line but the tortoise should win.\n\n'
          'The animation should play immediately when the page loads.',
      child: ChallengeFourWorkspace(),
    );
  }
}

class ChallengeFive extends StatelessWidget {
  const ChallengeFive({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChallengeContainer(
      title: 'Challenge Five - New Yorker\'s Forecast',
      instructions: 'Please use https://api.weather.gov to fetch the current '
          'weather in New York City (40.7128° lat, -74.008° long). Display the '
          'current temperature in either Celsius or Fahrenheit on screen.',
      child: ChallengeFiveWorkspace(),
    );
  }
}

class ChallengeSix extends StatelessWidget {
  const ChallengeSix({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChallengeContainer(
      title: 'Challenge Six - Prime Performance',
      instructions: 'Something is wrong with this prime number generator. Over '
          'time, the app\'s UI is losing FPS and slowly becoming unresponsive. '
          'Please restore the performance so the user has a consistent frame '
          'rate, but continue to generate prime numbers as quickly as possible.\n\n'
          'Your computer\'s frame rate will vary, but consistency is what we\'re '
          'looking for!',
      child: ChallengeSixWorkspace(),
    );
  }
}

class ChallengeSeven extends StatelessWidget {
  const ChallengeSeven({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChallengeContainer(
      title: 'Challenge Seven - Creativity',
      instructions: 'Build a clock that tells the current time.',
      child: ChallengeSevenWorkspace(),
    );
  }
}

class ChallengeContainer extends StatelessWidget {
  const ChallengeContainer({
    super.key,
    required this.title,
    required this.instructions,
    required this.child,
  });

  final String title, instructions;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Divider(),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Instructions',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  SelectableText(
                    instructions,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            const Divider(),
            Expanded(
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
