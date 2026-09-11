import 'package:dafater/features/dashboard/widgets/dashboard_header/current_shift.dart';
// import 'package:dafater/features/dashboard/widgets/dashboard_header/new_invoice_button.dart';
import 'package:dafater/features/dashboard/widgets/dashboard_header/select_branch.dart';
import 'package:dafater/shared/search/search_field.dart';
import 'package:flutter/material.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      padding:const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child:const Row(
        spacing: 8,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(child: SearchField()),
          CurrentShift(),
          SelectBranch(),
          // NewInvoiceButton(),
        ],
      ),
    );
  }
}
