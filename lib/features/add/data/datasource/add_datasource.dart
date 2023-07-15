import 'package:ralali_cake_app/features/home/data/model/cake_model.dart';

import '../../../../core/environments/endpoints.dart';
import '../../../../services/http.dart';

class AddDatasource {
  static Future<void> addCake(CakeModel cake) async {
    const url = Endpoints.cakes;
    final response = await HttpService.post(
      url,
      body: cake.toJson(),
    );
    if (response.statusCode != 201) {
      throw response.data['message'];
    }
    return;
  }
}
