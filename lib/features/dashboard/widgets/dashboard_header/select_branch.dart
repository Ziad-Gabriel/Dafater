import 'package:flutter/material.dart';

class SelectBranch extends StatelessWidget {
  const SelectBranch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(Icons.store_outlined),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Saqr Qraish, El Maadi',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Register #01',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 11,
                    color: Theme.of(context).colorScheme.shadow,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.arrow_drop_down_rounded),
        ],
      ),
    );
  }
}
