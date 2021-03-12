//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_error.g.dart';

abstract class ErrorError implements Built<ErrorError, ErrorErrorBuilder> {
  @nullable
  @BuiltValueField(wireName: r'errorKey')
  String get errorKey;

  @nullable
  @BuiltValueField(wireName: r'statusCode')
  int get statusCode;

  @nullable
  @BuiltValueField(wireName: r'briefSummary')
  String get briefSummary;

  @nullable
  @BuiltValueField(wireName: r'stackTrace')
  String get stackTrace;

  @nullable
  @BuiltValueField(wireName: r'descriptionURL')
  String get descriptionURL;

  @nullable
  @BuiltValueField(wireName: r'logId')
  String get logId;

  // Boilerplate code needed to wire-up generated code
  ErrorError._();

  static void _initializeBuilder(ErrorErrorBuilder b) => b;

  factory ErrorError([void updates(ErrorErrorBuilder b)]) = _$ErrorError;
  static Serializer<ErrorError> get serializer => _$errorErrorSerializer;
}
