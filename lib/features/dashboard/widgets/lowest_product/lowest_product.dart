import 'package:dafater/features/dashboard/widgets/lowest_product/lowest_products_header.dart';
import 'package:dafater/features/dashboard/widgets/lowest_product/lowest_products_list.dart';
import 'package:flutter/material.dart';

class LowestProduct extends StatelessWidget {
  const LowestProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
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
      child:const Column(
        children: [
          LowestProductsHeader(),
          Expanded(
            child: LowestProductsList()
          ),
        ],
      ),
    );
  }
}
