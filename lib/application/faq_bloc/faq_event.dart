part of 'faq_bloc.dart';

@immutable
abstract class FAQEvents extends Equatable {
  @override
  List<Object> get props => [];
}

class GetFAQEvent extends FAQEvents {
  final String token;
  GetFAQEvent(this.token);
}