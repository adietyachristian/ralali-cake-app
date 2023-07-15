import 'package:either_dart/either.dart';

import '../../../../../core/client/api_call.dart';
import '../../../../../core/errors/failure.dart';
import '../../../home/data/model/cake_model.dart';
import '../datasource/add_datasource.dart';

class AddRepository {
  static Future<Either<Failure, void>> addCake(CakeModel model) async {
    return await apiCall(AddDatasource.addCake(model));
  }
}
