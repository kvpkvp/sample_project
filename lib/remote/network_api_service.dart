import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'base_api_service.dart';
import 'network_utils.dart';
import 'package:http/http.dart' as http;

class NetworkApiService extends BaseApiService {

  @override
  Future<dynamic> getResponse(String url,
      Map<String, String> headers) async {
    dynamic responseJson;
    await NetworkUtils().checkInternetConnection().then((
        isInternetAvailable) async {
      if (!isInternetAvailable) {
        return "";
      }
      try {
        responseJson = await http.get(Uri.parse(url), headers: headers,);
      } on SocketException {
        debugPrint("response is null");
      }
    });
    return responseJson;
  }

}