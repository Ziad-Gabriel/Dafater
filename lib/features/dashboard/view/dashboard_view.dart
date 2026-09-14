import 'package:dafater/features/dashboard/widgets/daily_pace/daily_pace.dart';
import 'package:dafater/features/dashboard/widgets/dashboard_header/header_container.dart';
import 'package:dafater/features/dashboard/widgets/lowest_product/lowest_product.dart';
import 'package:dafater/features/dashboard/widgets/recent_invoices/recent_invoices.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HeaderContainer(),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: RecentInvoices()),

                Column(
                  // spacing: 10,
                  children: [
                    DailyPace(),
                    Expanded(child: LowestProduct()),
                  ],
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
