import 'package:get_it/get_it.dart';

import 'application/faq_bloc/faq_bloc.dart';
import 'infrastructure/services/faq.dart';

final sl = GetIt.instance;

Future<void> init() async {
  ///Blocs
  sl.registerFactory<FAQBloc>(() => FAQBloc(sl()));

  ///Services
  sl.registerLazySingleton(() => FAQRepositoryImp());
}
