import 'package:flutter/material.dart';

class RecentInvoicesHeader extends StatelessWidget {
  const RecentInvoicesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 4,
          children: [
            Text(
              'Recent Invoices',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                '5 Latest',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
        Text(
          'Real-time point of sale transactional ledger',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: Theme.of(context).colorScheme.shadow,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
