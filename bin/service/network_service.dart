import 'package:http/http.dart';

class NetworkService{

  static final String baseUri = "655deeb89f1e1093c59a2ed1.mockapi.io";
  static final String apiShopping = "/shopping";

  static Future<String> getData(String api) async {
    Uri uri = Uri.https(baseUri, api);
    Response response = await get(uri);

    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      return response.statusCode.toString();
    }
  }
}