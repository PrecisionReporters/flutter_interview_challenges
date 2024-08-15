import 'package:flutter/material.dart';
import 'package:flutter_interview_challenges/workspace/b1.dart';
import 'package:flutter_interview_challenges/workspace/a0.dart';
import 'package:flutter_interview_challenges/workspace/c2.dart';
import 'package:flutter_interview_challenges/workspace/d3.dart';
import 'package:flutter_interview_challenges/workspace/e4.dart';
import 'package:flutter_interview_challenges/workspace/f5.dart';

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
          'All challenges will run off of web. You may import and use libraries '
          'from pub.dev, but they must support web. We will not be testing iOS '
          'or Android. If you get stuck on a challenge, feel free to move to '
          'the next one. If time allows, we can return to former challenges later.',
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
      title: 'Challenge Five - Freestyle',
      instructions: 'Build a clock that tells the current time.',
      child: ChallengeFiveWorkspace(),
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
                  Text(
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
