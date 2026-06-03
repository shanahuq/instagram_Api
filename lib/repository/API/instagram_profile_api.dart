import 'dart:convert';

import 'package:http/http.dart';
import 'package:instagram_api/repository/Models/instagram_model.dart';

import 'Api_client.dart';
import 'Api_exception.dart';

class InstagramProfileApi {
  ApiClient apiClient = ApiClient();

  Future<InstagramProfileModel> getinstagram() async {
    String trendingPath =
        "https://instagram-best-experience.p.rapidapi.com/profile?username=nike";
    Response response = await apiClient.invokeAPI(trendingPath, "GET", null);
    print(response.body);
     if (response.statusCode == 200) {
    final Map<String, dynamic> jsonData =
        jsonDecode(response.body);

    return InstagramProfileModel.fromJson(jsonData);
  } else {
      final errorBody = jsonDecode(response.body);
      throw ApiException(
        'Error : ${errorBody['message'] ?? 'Unknoen error'}',
        response.statusCode,
      );
    }
  }
}
