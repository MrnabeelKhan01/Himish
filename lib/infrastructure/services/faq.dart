import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:himish/infrastructure/models/faq.dart';
import '../../configs/backend.dart';
import '../api_helper.dart';
import '../models/error.dart';

abstract class FAQRepository {
  Future<Either<GlobalErrorModel, FaQsModel>> getFAQs(String token);
}

class FAQRepositoryImp extends FAQRepository {
  @override
  Future<Either<GlobalErrorModel, FaQsModel>> getFAQs(String token) async {
    log(token);
    var data = await ApiBaseHelper().getEither(
        endPoint: BackendConfigs.kGetFAQs,
        isRequiredHeader: true,
        header: {
          'accept': 'application/json',
          'authorization': 'a1fd7614ccb0e027a312',
          'security_key': 'UG9zdGVyeiBBcHAgQ3JlYXRlIEJ5IENoYW5kYW4',
        });
    return data.fold((l) {
      log(l.message.toString());
      return Left(GlobalErrorModel(message: l.message.toString()));
    }, (r) {
      log(r.toString());
      return Right(FaQsModel.fromJson(r));
    });
  }
}
