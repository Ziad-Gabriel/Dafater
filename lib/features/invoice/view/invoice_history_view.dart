import 'package:flutter/material.dart';

class InvoiceHistoryView extends StatelessWidget {
  const InvoiceHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Text('Invoice History View'),
      ],
    );
  }
}