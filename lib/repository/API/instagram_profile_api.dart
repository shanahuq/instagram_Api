import 'dart:convert';

import 'package:http/http.dart';
import 'package:instagram_api/repository/Models/instagram_model.dart';

import 'Api_client.dart';
import 'Api_exception.dart';

class InstagramProfileApi {
  ApiClient apiClient = ApiClient();

  Future<List<InstagramProfileModel>> getinstagram() async {
    String trendingPath =
        "https://instagram-best-experience.p.rapidapi.com/profile?username=nike";
    Response response = await apiClient.invokeAPI(trendingPath, "GET", null);
    print(response.body);
    if (response.statusCode == 200) {
      List<dynamic> jsonList = json.decode(response.body);
      List<InstagramProfileModel> movieList =
          jsonList.map((json) => InstagramProfileModel.fromJson(json)).toList();
      return movieList;
    } else {
      final errorBody = jsonDecode(response.body);
      throw ApiException(
        'Error : ${errorBody['message'] ?? 'Unknoen error'}',
        response.statusCode,
      );
    }
  }
}
