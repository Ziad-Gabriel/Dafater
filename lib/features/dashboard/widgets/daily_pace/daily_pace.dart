import 'package:flutter/material.dart';

class DailyPace extends StatelessWidget {
  const DailyPace({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.29,
      width: MediaQuery.of(context).size.width * 0.32,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withAlpha(80),
            offset: const Offset(0, 0),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            spacing: 6,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(Icons.analytics_outlined),
              Text('Daily Pace', style: Theme.of(context).textTheme.titleSmall),
            ],
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Target Progress',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).colorScheme.shadow,
                      ),
                    ),
                    Text('84.5%', style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '8,450',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      '/10,000',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).colorScheme.shadow,
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 12,
                      width: MediaQuery.of(context).size.width * 0.3,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Container(
                      height: 12,
                      width: (MediaQuery.of(context).size.width * 0.3) * 0.845,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
