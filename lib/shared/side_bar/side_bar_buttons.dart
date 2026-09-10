import 'package:flutter/material.dart';

class SideBarButtons extends StatelessWidget {
  final Function(int) changeIndex;
  final int currentIndex;
  SideBarButtons({
    super.key,
    required this.changeIndex,
    required this.currentIndex,
  });

  final List<String> buttonLabels = [
    'Dashboard',
    'Analytics',
    'Products',
    'Invoice History',
    'New Invoice',
  ];

  final List<IconData> buttonIcons = [
    Icons.dashboard_outlined,
    Icons.analytics_outlined,
    Icons.inbox_outlined,
    Icons.history_outlined,
    Icons.add,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        5,
        (index) => GestureDetector(
          onTap: () => changeIndex(index),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.easeIn,
            height: 50,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 8),
            margin: EdgeInsets.only(
              top: index == currentIndex ? 0 : 4,
              bottom: index == currentIndex ? 4 : 0,
            ),
            decoration: BoxDecoration(
              color: index == currentIndex
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.primaryContainer,
              boxShadow: [
                BoxShadow(
                  color: index == currentIndex
                      ? Theme.of(context).colorScheme.shadow
                      : Colors.transparent,
                  blurRadius: 4,
                  spreadRadius: 0,
                  offset: Offset(0, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  buttonIcons[index],
                  color: index == currentIndex
                      ? Theme.of(context).colorScheme.onPrimary
                      : Theme.of(context).colorScheme.primary,
                ),
                SizedBox(width: 6),
                Text(
                  buttonLabels[index],
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: index == currentIndex
                        ? Theme.of(context).colorScheme.onPrimary
                        : Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
