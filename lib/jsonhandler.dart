import 'dart:convert' as convert;

class JsonUtilities {
  static dynamic JsonDecoder(String data) {
    return convert.JsonDecoder().convert(data);
  }
}