import '../../../../core/environments/endpoints.dart';
import '../../../../services/http.dart';
import '../model/home_model.dart';

class HomeDatasource {
  static Future<HomeModel> getCakes() async {
    const url = Endpoints.cakes;
    final response = await HttpService.get(
      url,
    );

    if (response.statusCode != 200) {
      throw response.data['message'];
    }
    return HomeModel.fromJson(response.data['data']);
  }
}
