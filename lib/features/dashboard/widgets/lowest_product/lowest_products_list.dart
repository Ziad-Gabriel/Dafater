import 'package:flutter/material.dart';

class LowestProductsList extends StatelessWidget {
  const LowestProductsList({super.key});

  final List<String> titles = const [
    'Oat Milk Barista Edition',
    'Artisanal Espresso Beans 1kg',
    'Cold Brew Cans 12-pack',
    'Matchstick Biscuit Box',
  ];
  final List<String> codes = const [
    'OAT-BAR-01',
    'COF-ESP-10',
    'CBR-CAN-12',
    'SNK-MTB-04',
  ];
  final List<String> quantity = const ['4', '6', '2', '8'];
  final List<String> min = const ['15', '20', '10', '25'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) => Container(
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titles[index],
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'SKU: ${codes[index]}',
                          style: Theme.of(context).textTheme.bodySmall!
                              .copyWith(fontSize: 13),
                          maxLines: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Recorded point: ${min[index]}',
                          style: Theme.of(context).textTheme.bodySmall!
                              .copyWith(fontSize: 13),
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 25,
              width: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.shadow.withAlpha(80),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Text(
                  '${quantity[index]} left',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFFba1a1a),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
