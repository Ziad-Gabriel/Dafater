import 'package:flutter/material.dart';

class LowestProductsHeader extends StatelessWidget {
  const LowestProductsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            'Lowest Products',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Container(
          height: 20,
          width: 100,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 18, 14).withAlpha(200),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text(
              '4 Items Urgent',
              style: Theme.of(context).textTheme.bodySmall!
                  .copyWith(fontSize: 12),
            ),
          ),
        ),
      ],
    );
  }
}
