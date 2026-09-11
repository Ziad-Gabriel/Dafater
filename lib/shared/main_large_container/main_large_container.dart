import 'package:flutter/material.dart';

class MainLargeContainer extends StatelessWidget {
  const MainLargeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            offset:const Offset(0, 1),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius:const BorderRadius.vertical(top: Radius.circular(8)),
              ),
            ),
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius:const BorderRadius.vertical(bottom: Radius.circular(8)),
            ),
          ),
        ],
      ),
    );
  }
}
