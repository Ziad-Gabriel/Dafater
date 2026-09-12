import 'package:flutter/material.dart';

class ChooseList extends StatelessWidget {
  final int listIndex;
  final Function(int) ontTap;
  const ChooseList({super.key, required this.listIndex, required this.ontTap});

  @override
  Widget build(BuildContext context) {
    const List<String> titles = ['All', 'Completed', 'Refunded'];
    return Container(
      height: 50,
      width: 280,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        spacing: 8,
        children: List.generate(
          3,
          (index) => Expanded(
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(4),
              child: InkWell(
                onTap: () => ontTap(index),
                borderRadius: BorderRadius.circular(4),

                canRequestFocus: false,
                focusColor: Colors.transparent,
                hoverColor: Theme.of(context).colorScheme.secondaryContainer
                    .withAlpha(120),
                splashColor: Theme.of(context).colorScheme.secondaryContainer
                    .withAlpha(160),
                highlightColor: Colors.transparent,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeIn,
                  height: 40,
                  margin: EdgeInsets.only(
                    top: index == listIndex ? 0 : 2,
                    bottom: index == listIndex ? 2 : 0,
                  ),
                  decoration: BoxDecoration(
                    color: listIndex == index
                        ? Theme.of(context).colorScheme.secondaryContainer
                        : Theme.of(context).colorScheme.secondaryContainer
                              .withAlpha(0),
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: index == listIndex
                            ? Theme.of(context).colorScheme.shadow
                            : Colors.transparent,
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      titles[index],
                      style: Theme.of(context).textTheme.bodySmall!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
