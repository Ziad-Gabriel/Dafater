import 'package:dafater/features/dashboard/widgets/daily_pace/mini_analytics.dart';
import 'package:dafater/features/dashboard/widgets/daily_pace/target_progress.dart';
import 'package:flutter/material.dart';

class DailyPace extends StatelessWidget {
  const DailyPace({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      margin: const EdgeInsets.only(bottom: 8),
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
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            spacing: 6,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(Icons.analytics_outlined),
              Text('Daily Pace', style: Theme.of(context).textTheme.titleSmall),
            ],
          ),
          const TargetProgress(),
          const SizedBox(height: 6),
          const MiniAnalytics(),
        ],
      ),
    );
  }
}
