import 'package:flutter/material.dart';

class SideBarButtons extends StatelessWidget {
  final Function(int) changeIndex;
  final int currentIndex;
  const SideBarButtons({
    super.key,
    required this.changeIndex,
    required this.currentIndex,
  });

  final List<String> buttonLabels = const [
    'Dashboard',
    'Analytics',
    'Products',
    'Invoice History',
    'New Invoice',
  ];

  final List<IconData> buttonIcons = const [
    Icons.dashboard_outlined,
    Icons.analytics_outlined,
    Icons.inbox_outlined,
    Icons.history_outlined,
    Icons.add,
  ];

  @override
  Widget build(BuildContext context) {
    Color textIconColor(bool isSelected) {
      return isSelected
          ? Theme.of(context).colorScheme.onPrimary
          : Theme.of(context).colorScheme.primary;
    }

    return Column(
      spacing: 2,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        5,
        (index) => AnimatedPadding(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.only(
            top: index == currentIndex ? 0 : 4,
            bottom: index == currentIndex ? 4 : 0,
          ),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            child: InkWell(
              onTap: () => changeIndex(index),
              borderRadius: BorderRadius.circular(8),
              enableFeedback: false,
              canRequestFocus: false,
              focusColor: Colors.transparent,
              hoverColor: Theme.of(context).colorScheme.secondary
                  .withAlpha(120),
              splashColor: Theme.of(context).colorScheme.secondary
                  .withAlpha(160),
              highlightColor: Colors.transparent,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn,
                height: 45,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: index == currentIndex
                      ? Theme.of(context).colorScheme.primary
                      : Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                      color: index == currentIndex
                          ? Theme.of(context).colorScheme.shadow
                          : Colors.transparent,
                      blurRadius: 4,
                      spreadRadius: 0,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  spacing: 6,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      buttonIcons[index],
                      color: textIconColor(index == currentIndex),
                    ),
                    Expanded(
                      child: Text(
                        buttonLabels[index],
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: textIconColor(index == currentIndex),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
