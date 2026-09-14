import 'package:flutter/material.dart';

class TargetProgress extends StatelessWidget {
  const TargetProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Target Progress',
              style: Theme.of(context).textTheme.bodySmall!
                  .copyWith(color: Theme.of(context).colorScheme.shadow),
            ),
            Text('84.5%', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('8,450', style: Theme.of(context).textTheme.titleSmall),
            Text(
              '/10,000',
              style: Theme.of(context).textTheme.bodySmall!
                  .copyWith(color: Theme.of(context).colorScheme.shadow),
            ),
          ],
        ),
        Stack(
          children: [
            Container(
              height: 12,
              width: MediaQuery.of(context).size.width * 0.23,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            Container(
              height: 12,
              width: (MediaQuery.of(context).size.width * 0.23) * 0.845,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
