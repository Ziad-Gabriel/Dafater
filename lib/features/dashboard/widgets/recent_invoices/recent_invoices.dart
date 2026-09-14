import 'package:dafater/features/dashboard/widgets/recent_invoices/bottom_container.dart';
import 'package:dafater/features/dashboard/widgets/recent_invoices/choose_list.dart';
import 'package:dafater/features/dashboard/widgets/recent_invoices/recent_invoice_list/recent_list.dart';
import 'package:dafater/features/dashboard/widgets/recent_invoices/recent_invoices_header.dart';
import 'package:flutter/material.dart';

class RecentInvoices extends StatefulWidget {
  const RecentInvoices({super.key});

  @override
  State<RecentInvoices> createState() => _RecentInvoicesState();
}

class _RecentInvoicesState extends State<RecentInvoices> {
  int listIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.only(top: 12),
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
      child: Column(
        spacing: 12,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              spacing: 8,
              children: [
                const Expanded(child: RecentInvoicesHeader()),
                ChooseList(
                  listIndex: listIndex,
                  ontTap: (index) => setState(() {
                    listIndex = index;
                  }),
                ),
              ],
            ),
          ),
          const Expanded(child: RecentList()),
          const BottomContainer(),
        ],
      ),
    );
  }
}
