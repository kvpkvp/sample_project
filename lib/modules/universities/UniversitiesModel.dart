/// web_pages : ["https://www.nmc.edu"]
/// name : "Northwestern Michigan College"
/// domains : ["nmc.edu"]
/// country : "United States"
/// state-province : "Michigan"
/// alpha_two_code : "US"

class UniversitiesModel {
  UniversitiesModel({
      this.webPages, 
      this.name, 
      this.domains, 
      this.country, 
      this.stateprovince, 
      this.alphaTwoCode,});

  UniversitiesModel.fromJson(dynamic json) {
    webPages = json['web_pages'] != null ? json['web_pages'].cast<String>() : [];
    name = json['name'];
    domains = json['domains'] != null ? json['domains'].cast<String>() : [];
    country = json['country'];
    stateprovince = json['state-province'];
    alphaTwoCode = json['alpha_two_code'];
  }
  List<String>? webPages;
  String? name;
  List<String>? domains;
  String? country;
  String? stateprovince;
  String? alphaTwoCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['web_pages'] = webPages;
    map['name'] = name;
    map['domains'] = domains;
    map['country'] = country;
    map['state-province'] = stateprovince;
    map['alpha_two_code'] = alphaTwoCode;
    return map;
  }

}