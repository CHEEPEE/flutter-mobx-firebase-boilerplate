import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  final String username;

  User({this.username});
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
