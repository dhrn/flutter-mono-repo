//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'password_reset_body.g.dart';

abstract class PasswordResetBody implements Built<PasswordResetBody, PasswordResetBodyBuilder> {
  /// the new password
  @nullable
  @BuiltValueField(wireName: r'password')
  String get password;

  /// the workflow id provided in the reset password email
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  /// the workflow key provided in the reset password email
  @nullable
  @BuiltValueField(wireName: r'key')
  String get key;

  // Boilerplate code needed to wire-up generated code
  PasswordResetBody._();

  static void _initializeBuilder(PasswordResetBodyBuilder b) => b;

  factory PasswordResetBody([void updates(PasswordResetBodyBuilder b)]) = _$PasswordResetBody;
  static Serializer<PasswordResetBody> get serializer => _$passwordResetBodySerializer;
}
