import 'package:json_annotation/json_annotation.dart';

part 'age_guess_model.g.dart';

@JsonSerializable()
class AgeGuessModel {
  AgeGuessModel({required this.name, required this.age});
  factory AgeGuessModel.fromJson(Map<String, dynamic> json) => _$AgeGuessModelFromJson(json);

  final String name;
  final int age;
}