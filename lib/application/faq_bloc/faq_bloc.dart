import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../infrastructure/models/faq.dart';
import '../../infrastructure/services/faq.dart';

part 'faq_event.dart';

part 'faq_state.dart';

class FAQBloc extends Bloc<FAQEvents, FAQState> {
  final FAQRepositoryImp repositoryImp;

  FAQBloc(this.repositoryImp) : super(FAQInitial()) {
    on<FAQEvents>((event, emit) async {
      emit(FAQLoading());

      if (event is GetFAQEvent) {
        try {
          final failureOrSuccess =
              await repositoryImp.getFAQs(event.token.toString());

          failureOrSuccess.fold((l) => emit(FAQFailed(l.message.toString())),
              (r) {
            return emit(FAQLoaded(r));
          });
        } catch (e) {
          emit(FAQFailed('An undefined error occurred.'));
        }
      }
    });
  }
}
