import 'package:either_dart/either.dart';

import '../../../../../core/client/api_call.dart';
import '../../../../../core/errors/failure.dart';
import '../model/home_model.dart';
import '../datasource/home_datasource.dart';

class HomeRepository {
  static Future<Either<Failure, HomeModel>> getCakes() async {
    return await apiCall(HomeDatasource.getCakes());
  }
}
