import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final Widget child;
  const MainButton({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 50,
      width: 120,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
