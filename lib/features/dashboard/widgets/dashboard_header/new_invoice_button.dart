import 'package:flutter/material.dart';

/// The top header add invoice in dashboard
class NewInvoiceButton extends StatelessWidget {
  const NewInvoiceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 170,
      padding:const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(
            Icons.add_rounded,
            size: 22,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          Text(
            'New Invoice',
            style: Theme.of(context).textTheme.bodySmall!
                .copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
          const Spacer(),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary.withAlpha(180),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'F2',
                style: Theme.of(context).textTheme.bodySmall!
                    .copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
