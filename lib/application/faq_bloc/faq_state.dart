part of 'faq_bloc.dart';

@immutable
sealed class FAQState {}

final class FAQInitial extends FAQState {}

final class FAQLoading extends FAQState {}

final class FAQLoaded extends FAQState {
  final FaQsModel model;

  FAQLoaded(this.model);
}

final class FAQFailed extends FAQState {
  final String message;

  FAQFailed(this.message);
}
