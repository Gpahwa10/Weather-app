import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper {
  final String url;

  NetworkHelper({required this.url});

  Future getData() async {
    Response response = await get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      String data = response.body;
      // print(data);
      var decodeData = jsonDecode(data);
      return decodeData;
    } else {
      // print(response.statusCode);
    }
  }
}
