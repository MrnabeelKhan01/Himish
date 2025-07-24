import 'package:flutter/material.dart';

import '../../../../../constant/app_colors.dart';
import '../../../home/widgets/fashion_card.dart';

class FashionTab extends StatelessWidget {
  const FashionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return    ListView.builder(
        itemCount:3,
        shrinkWrap:true,
        physics:NeverScrollableScrollPhysics(),
        itemBuilder: (
            context,i){
          return FashionCard(labelColor:kPinkColor,);
        });
  }
}
