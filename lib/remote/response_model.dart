class ResponseModel {
  ResponseModel({
    required this.code,
    required this.message,
  });

  late final String code;
  late final String message;

  ResponseModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['message'] = message;
    return _data;
  }
}
