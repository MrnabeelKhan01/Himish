import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/widgets/my_text_widget.dart';

import '../widgets/events_card.dart';
import '../widgets/on_sale_card.dart';

class EventsTab extends StatefulWidget {
  const EventsTab({super.key});

  @override
  State<EventsTab> createState() => _EventsTabState();
}

class _EventsTabState extends State<EventsTab> {
  final List<String> _tabsList = [
    "All",
    "Electronics",
    "Home",
    "Furniture",
    "Liquors",
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:18.0),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          SizedBox(height:18,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: kWhiteColor,
            ),
            child: SingleChildScrollView(
              clipBehavior:Clip.none,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(_tabsList.length, _buildTab),
              ),
            ),
          ),
          SizedBox(height:10,),
          ListView.builder(
              itemCount:3,
              shrinkWrap:true,
              physics:NeverScrollableScrollPhysics(),
              itemBuilder: (context,i){
                return Padding(
                  padding:  EdgeInsets.only(bottom:10.0),
                  child: EventsCard(),
                );
              })
        ],
      ),
    );
  }

  Widget _buildTab(int index) {
    final isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? kPrimaryColor : kWhiteColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: MyText(
          size:12,
          text: _tabsList[index],
          color: isSelected ? Colors.white : kPrimaryColor,
          weight:isSelected?FontWeight.w600:FontWeight.w400,
        ),
      ),
    );
  }
}
