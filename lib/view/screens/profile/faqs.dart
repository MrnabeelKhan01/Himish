import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himish/view/widgets/custom_appbar.dart';

import '../../../application/faq_bloc/faq_bloc.dart';
import '../../../constant/app_colors.dart';
import '../../../injection_container.dart';
import '../../widgets/my_text_widget.dart';
import '../../widgets/processing_widget.dart';

class FAQs extends StatelessWidget {
  const FAQs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<FAQBloc>(),
      child: Scaffold(
        appBar: customAppbar("FAQ"),
        body: BlocBuilder<FAQBloc, FAQState>(
          builder: (context, state) {
            if (state is FAQInitial) {
              BlocProvider.of<FAQBloc>(context)
                  .add(GetFAQEvent('a1fd7614ccb0e027a312'));

              return Center(
                child: ProcessingWidget(),
              );
            } else if (state is FAQLoading) {
              return Center(
                child: ProcessingWidget(),
              );
            } else if (state is FAQLoaded) {
              return ListView.builder(
                itemCount: state.model.body!.length,
                padding: const EdgeInsets.all(16),
                itemBuilder: (context, index) {
                  return FAQTile(
                    title: state.model.body![index].question!.toString(),
                    description:
                    state.model.body![index].answer!.toString(), );
                },
              );
            } else if (state is FAQFailed) {
              return Center(
                child: Text(
                  state.message.toString(),
                  style: TextStyle(color: kWhiteColor),
                ),
              );
            } else {
              return Center(
                child: Text(
                  "Something went wrong. Please try again later.",
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

class FAQTile extends StatelessWidget {
  final String title;
  final String description;

  const FAQTile({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kWhiteColor,
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          backgroundColor: kWhiteColor,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none),
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          childrenPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          collapsedIconColor: kPrimaryColor,
          iconColor: kPrimaryColor,
          title: MyText(
            text: title,
            size: 14,
            weight: FontWeight.w600,
            color: kTextColor,
          ),
          children: [
            MyText(
              text: description,
              size: 14,
              lineHeight: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
