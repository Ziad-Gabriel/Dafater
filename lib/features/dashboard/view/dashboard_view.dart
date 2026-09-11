import 'package:dafater/features/dashboard/widgets/daily_pace/daily_pace.dart';
import 'package:dafater/features/dashboard/widgets/dashboard_header/header_container.dart';
import 'package:dafater/features/dashboard/widgets/lowest_product/lowest_product.dart';
import 'package:dafater/shared/main_large_container/main_large_container.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const HeaderContainer(),
          Row(
            spacing: 8,
            children: List.generate(
              3,
              (index) => const Expanded(child: MainLargeContainer()),
            ),
          ),
          const Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
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
