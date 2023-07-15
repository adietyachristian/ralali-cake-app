import '../../../../core/environments/endpoints.dart';
import '../../../../services/http.dart';
import '../../../home/data/model/cake_model.dart';

class DetailDatasource {
  static Future<CakeModel> getCake(String id) async {
    final url = '${Endpoints.cakes}/$id';
    final response = await HttpService.get(
      url,
    );

    if (response.statusCode != 200) {
      throw response.data['message'];
    }
    return CakeModel.fromJson(response.data['data']);
  }

  static Future<void> deleteCake(String id) async {
    final url = '${Endpoints.cakes}/$id';
    final response = await HttpService.delete(
      url,
    );

    if (response.statusCode != 200) {
      throw response.data['message'];
    }
  }
}
