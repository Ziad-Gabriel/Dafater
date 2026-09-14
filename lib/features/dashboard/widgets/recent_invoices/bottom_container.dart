import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(8)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Showing 5 of 84 recorded transactions',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Theme.of(context).colorScheme.onPrimary.withAlpha(180),
              fontSize: 12,
            ),
          ),
          Row(
            spacing: 4,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(4),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(4),

                  canRequestFocus: false,
                  focusColor: Colors.transparent,
                  hoverColor: Theme.of(context).colorScheme.secondaryContainer
                      .withAlpha(40),
                  splashColor: Theme.of(context).colorScheme.secondaryContainer
                      .withAlpha(120),
                  highlightColor: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Theme.of(context).colorScheme.onPrimary,
                      size: 22,
                    ),
                  ),
                ),
              ),
              Text(
                'Page 1',
                style: Theme.of(context).textTheme.bodySmall!
                    .copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
              Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(4),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(4),

                  canRequestFocus: false,
                  focusColor: Colors.transparent,
                  hoverColor: Theme.of(context).colorScheme.secondaryContainer
                      .withAlpha(40),
                  splashColor: Theme.of(context).colorScheme.secondaryContainer
                      .withAlpha(120),
                  highlightColor: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Theme.of(context).colorScheme.onPrimary,
                      size: 22,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
