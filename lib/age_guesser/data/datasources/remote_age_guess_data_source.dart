import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../core/exceptions.dart';
import '../models/age_guess_model.dart';

class RemoteAgeGuessDataSource {
  final String uri = "https://api.agify.io/?name=";
  Future<AgeGuessModel> fetch(String name) async {
    final response = await http.get(Uri.parse(uri + name));
    if (response.statusCode == 200) {
      return AgeGuessModel.fromJson(
          json.decode(response.body) as Map<String, dynamic>);
    } else {
      throw ServerException();
    }
  }
}
