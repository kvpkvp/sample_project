import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:universities_app/modules/universities/UniversitiesModel.dart';
import '../../remote/base_api_service.dart';
import '../../remote/network_api_service.dart';

class UniversitiesViewModel extends ChangeNotifier {
  final BaseApiService _apiService = NetworkApiService();

  bool _loading = false;
  List<UniversitiesModel>? _universityData = [];
  List<UniversitiesModel>? get universityData => _universityData;
  bool get loading => _loading;

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }


  ///Get dashboard details api call
  getDashboardData(BuildContext context) async {
    setLoading(true);

    final headers = {
      'Content-Type': 'application/json',
    };

    try {
      dynamic response = await _apiService.getResponse("http://universities.hipolabs.com/search?country=United+states", headers);
      List<UniversitiesModel> users = (json.decode(response.body) as List)
          .map((data) => UniversitiesModel.fromJson(data))
          .toList();
      _universityData = users;
      setLoading(false);
      notifyListeners();
    } catch (e) {
      debugPrint("response data is failed ${jsonEncode(e)}");
      setLoading(false);
    }
  }
}
