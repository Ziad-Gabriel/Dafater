import 'package:flutter/material.dart';

class RecentList extends StatelessWidget {
  const RecentList({super.key});

  final List<String> titles = const [
    'INVOICE REF',
    'ITEMS',
    'GROSS',
    'STATUS',
    'ACTIONS',
  ];
  final List<String> invoiceREF = const [
    '#INV-2024-8-8-41',
    '#INV-2024-8-8-40',
    '#INV-2024-8-8-39',
    '#INV-2024-8-8-38',
    '#INV-2024-8-8-37',
  ];
  final List<String> items = const ['4', '1', '7', '2', '3'];
  final List<double> gross = const [184.00, 28.00, 442.10, 65.00, 112.25];
  final List<bool> status = const [false, false, false, true, false];
  final List<String> actions = const [
    'View / Print',
    'View / Print',
    'View / Print',
    'Receipt',
    'View / Print',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => Expanded(
          child: Column(
            children: [
              Container(
                height: 60,
                padding: const EdgeInsets.all(8),
                color: Theme.of(context).colorScheme.primaryContainer,
                child: Center(
                  child: Text(
                    titles[index],
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    maxLines: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
