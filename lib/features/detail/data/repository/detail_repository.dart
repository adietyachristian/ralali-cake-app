import 'package:either_dart/either.dart';

import '../../../../core/client/api_call.dart';
import '../../../../core/errors/failure.dart';
import '../../../home/data/model/cake_model.dart';
import '../datasource/detail_datasource.dart';

class DetailRepository {
  static Future<Either<Failure, CakeModel>> getCake(String id) async {
    return await apiCall(DetailDatasource.getCake(id));
  }

  static Future<Either<Failure, void>> deleteCake(String id) async {
    return await apiCall(DetailDatasource.deleteCake(id));
  }
}
