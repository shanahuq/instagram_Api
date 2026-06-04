import 'package:http/http.dart';
import 'dart:convert';
import 'package:instagram_api/repository/API/Api_client.dart';
import 'package:instagram_api/repository/API/Api_exception.dart';
import 'package:instagram_api/repository/Models/instagram_post_models.dart';

class InstagramPostApi {
  ApiClient apiClient = ApiClient();

  Future<InstagramPostModels> getpostinstagram() async {
    String trendingPath =
        "post?shortcode=B9KI0D2HHe7";
    Response response = await apiClient.invokeAPI(trendingPath, "GET", null);
    print(response.body);
     if (response.statusCode == 200) {
    final Map<String, dynamic> jsonData =
        jsonDecode(response.body);

    return InstagramPostModels.fromJson(jsonData);
  } else {
      final errorBody = jsonDecode(response.body);
      throw ApiException(
        'Error : ${errorBody['message'] ?? 'Unknoen error'}',
        response.statusCode,
      );
    }
  }
}
