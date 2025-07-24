import 'package:flutter/material.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../../constant/app_colors.dart';

class TabWidget extends StatefulWidget {
  final List<String> items;
  final ValueChanged<int>? onTabSelected;
  final int initialIndex;

  const TabWidget({
    super.key,
    required this.items,
    this.onTabSelected,
    this.initialIndex = 0,
  });

  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(widget.items.length, (index) {
        final isSelected = _selectedIndex == index;
        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
            if (widget.onTabSelected != null) {
              widget.onTabSelected!(index);
            }
          },
          child: Container(

            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            decoration: BoxDecoration(
              color: isSelected ? kPrimaryColor : kWhiteColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: MyText(
              text:widget.items[index],

              size: 12,
              weight: isSelected ? FontWeight.w600 : FontWeight.w400,
              color: isSelected ? Colors.white : kPrimaryColor,
            ),
          ),
        );
      }),
    );
  }
}
