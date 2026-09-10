import 'package:dafater/features/add_invoice/view/add_invoice_view.dart';
import 'package:dafater/features/analytics/view/analytics_view.dart';
import 'package:dafater/features/invoice/view/invoice_history_view.dart';
import 'package:dafater/features/dashboard/view/dashboard_view.dart';
import 'package:dafater/features/products/view/product_view.dart';
import 'package:dafater/shared/side_bar/main_side_bar.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0; // Default selected index

  final List<Widget> _views = [
    const DashboardView(),
    const AnalyticsView(),
    const ProductView(),
    const InvoiceHistoryView(),
    const AddInvoiceView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          MainSideBar(
            currentIndex: _currentIndex,
            changeIndex: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          Expanded(child: _views[_currentIndex]),
        ],
      ),
    );
  }
}
