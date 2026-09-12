import 'package:flutter/material.dart';

class MiniAnalytics extends StatelessWidget {
  const MiniAnalytics({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> titles = ['Peak Sales Hour', 'Avg Basket Size'];
    const List<String> theData = ['12:30 - 1:30 PM', '\$62.40'];
    const List<String> additional = ['28 transaction', '+8.4% vs last week'];
    return Container(
      height: 65,
      margin: const EdgeInsets.only(top: 4),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,

        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: List.generate(
          2,
          (index) => Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titles[index],
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.shadow,
                    fontSize: 12,
                  ),
                ),
                Text(
                  theData[index],
                  style: Theme.of(context).textTheme.bodyMedium!
                      .copyWith(fontWeight: FontWeight.w800),
                ),
                Text(
                  additional[index],
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.shadow,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
