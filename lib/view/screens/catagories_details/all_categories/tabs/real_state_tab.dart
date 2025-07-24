import 'package:flutter/material.dart';

import '../../../../../constant/app_colors.dart';
import '../../../home/widgets/real_state_card.dart';

class RealStateTab extends StatelessWidget {
  const RealStateTab({super.key});

  @override
  Widget build(BuildContext context) {
    return    ListView.builder(
        itemCount:5,
        shrinkWrap:true,
        physics:NeverScrollableScrollPhysics(),
        itemBuilder: (
            context,i){
          return RealStateCard(labelColor:kBlueColor,);
        });
  }
}
