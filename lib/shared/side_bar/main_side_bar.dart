import 'package:dafater/shared/side_bar/side_bar_buttons.dart';
import 'package:flutter/material.dart';

class MainSideBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) changeIndex;
  const MainSideBar({
    super.key,
    required this.currentIndex,
    required this.changeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: MediaQuery.of(context).size.width * 0.2,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: SideBarButtons(
        changeIndex: changeIndex,
        currentIndex: currentIndex,
      ),
    );
  }
}
