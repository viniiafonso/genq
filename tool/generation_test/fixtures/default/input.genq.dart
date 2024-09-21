part of 'input.dart';

mixin _$User {
  bool get defaultBool => throw UnimplementedError();
  int get defaultInt => throw UnimplementedError();
  String get defaultString => throw UnimplementedError();

  $UserCopyWith get copyWith => throw UnimplementedError();
}

class _User implements User {
  @override
  final bool defaultBool;

  @override
  final int defaultInt;

  @override
  final String defaultString;

  _User({
    this.defaultBool = true,
    this.defaultInt = 999,
    this.defaultString = 'default_value',
  });

  @override
  $UserCopyWith get copyWith => _$UserCopyWithImpl(this);

  @override
  String toString() {
    return "User(defaultBool: $defaultBool, defaultInt: $defaultInt, defaultString: $defaultString)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! User) return false;
    if (!identical(other.defaultBool, defaultBool) && other.defaultBool != defaultBool) return false;
    if (!identical(other.defaultInt, defaultInt) && other.defaultInt != defaultInt) return false;
    if (!identical(other.defaultString, defaultString) && other.defaultString != defaultString) return false;
    return true;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      defaultBool,
      defaultInt,
      defaultString,
    );
  }
}

abstract class $UserCopyWith {
  User call({
    bool defaultBool,
    int defaultInt,
    String defaultString,
  });
}

class _$UserCopyWithImpl implements $UserCopyWith {
  final _$User value;

  _$UserCopyWithImpl(this.value);

  @override
  User call({
    Object? defaultBool = genq,
    Object? defaultInt = genq,
    Object? defaultString = genq,
  }) {
    return User(
      defaultBool: defaultBool == genq ? value.defaultBool : defaultBool as bool,
      defaultInt: defaultInt == genq ? value.defaultInt : defaultInt as int,
      defaultString: defaultString == genq ? value.defaultString : defaultString as String,
    );
  }
}
