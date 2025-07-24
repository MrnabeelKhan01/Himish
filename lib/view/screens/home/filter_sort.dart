import 'package:flutter/material.dart';
import 'package:himish/constant/app_colors.dart';
import 'package:himish/view/screens/home/widgets/listening_card.dart';
import 'package:himish/view/widgets/common_image_widget.dart';
import 'package:himish/view/widgets/custom_appbar.dart';

import '../../widgets/my_text_widget.dart';

class FilterSort extends StatefulWidget {
   const FilterSort({super.key});

  @override
  State<FilterSort> createState() => _FilterSortState();
}

class _FilterSortState extends State<FilterSort> {
final List<String> _selectedCategories=[
  "Real Estate",
  "Service",
  "Available",
  "Price low to high",
];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:customAppbar("Filter and sort"),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:6.0),
          child: Column(children: [
            SizedBox(height:10,),
            SingleChildScrollView(
              clipBehavior:Clip.none,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(_selectedCategories.length, (index) {
                  final item = _selectedCategories[index];
                  return Container(
                    margin: const EdgeInsets.only(right: 4),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        MyText(
                          text: item,
                          size: 12,
                          color: kPrimaryColor,
                          weight: FontWeight.w500,
                        ),
                        const SizedBox(width: 6),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedCategories.removeAt(index);
                            });
                          },
                          child: Icon(Icons.close, size: 16, color: kPrimaryColor),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height:10,),
            ListView.builder(
                itemCount:10,
                shrinkWrap:true,
                physics:NeverScrollableScrollPhysics(),
                itemBuilder: (
                    context,i){
                  return ListeningCard(labelColor:kBlueColor,);
                }),
          ],),
        ),
      ),
    );
  }
}
