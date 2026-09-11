import 'dart:ui';

import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 50,
        color: Theme.of(context).colorScheme.primaryContainer,
        child: TextField(
          selectionHeightStyle: BoxHeightStyle.max,
          cursorHeight: 22,
          cursorWidth: 2.5,
          cursorColor: Theme.of(context).colorScheme.primary,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.start,
          textAlignVertical:const TextAlignVertical(y: -0.25),
          maxLines: 1,
          clipBehavior: Clip.none,
          scrollPadding: EdgeInsets.zero,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            filled: false,
            prefixIcon: Icon(Icons.search, color: Colors.grey.shade700),
            hintText: 'Global search',
            hintStyle: Theme.of(context).textTheme.bodySmall!
                .copyWith(color: Colors.grey.shade700),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
