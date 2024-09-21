import 'package:genq/genq.dart';

part 'input.genq.dart';

@genq
class User with _$User {
  factory User({
    @Default(true) bool defaultBool,
    @Default(999) int defaultInt,
    @Default('default_value') String defaultString,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => $UserFromJson(json);
}
