//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/error_error.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error.g.dart';

abstract class Error implements Built<Error, ErrorBuilder> {
  @nullable
  @BuiltValueField(wireName: r'error')
  ErrorError get error;

  // Boilerplate code needed to wire-up generated code
  Error._();

  static void _initializeBuilder(ErrorBuilder b) => b;

  factory Error([void updates(ErrorBuilder b)]) = _$Error;
  static Serializer<Error> get serializer => _$errorSerializer;
}
