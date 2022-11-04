import 'dart:convert';

import 'package:bling/age_guesser/data/models/age_guess_model.dart';
import 'package:bling/core/exceptions.dart';
import 'package:http/http.dart' as http;

// ignore: one_member_abstracts
abstract class RemoteAgeGuessDataSource {
  Future<AgeGuessModel> fetch(String name);
}

class RemoteAgeGuessDataSourceImpl extends RemoteAgeGuessDataSource {
  final String uri = 'https://api.agify.io/?name=';
  @override
  Future<AgeGuessModel> fetch(String name) async {
    final response = await http.get(Uri.parse(uri + name));
    if (response.statusCode == 200) {
      return AgeGuessModel.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      );
    } else {
      throw ServerException();
    }
  }
}
