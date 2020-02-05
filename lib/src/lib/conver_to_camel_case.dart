import 'package:recase/recase.dart';

Map<String, dynamic> converKeyToCamelCase(Map<String, dynamic> jsonData) {
  Map<String, dynamic> jsonParseKey = new Map<String, dynamic>();
  jsonData.forEach((key, value) {
    jsonParseKey.putIfAbsent(new ReCase(key).camelCase, () => value);
  });

  return jsonParseKey;
}
