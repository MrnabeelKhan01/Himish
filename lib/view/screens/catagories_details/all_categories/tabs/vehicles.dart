import 'package:flutter/material.dart';

import '../../../../../constant/app_colors.dart';
import '../../../home/widgets/listening_card.dart';

class VehiclesTab extends StatelessWidget {
  const VehiclesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:8,
        shrinkWrap:true,
        physics:NeverScrollableScrollPhysics(),
        itemBuilder: (
            context,i){
          return ListeningCard(labelColor:kBlueColor,);
        });
  }
}
