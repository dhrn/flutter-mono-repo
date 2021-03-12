//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'revert_body.g.dart';

abstract class RevertBody implements Built<RevertBody, RevertBodyBuilder> {
  @nullable
  @BuiltValueField(wireName: r'majorVersion')
  bool get majorVersion;

  @nullable
  @BuiltValueField(wireName: r'comment')
  String get comment;

  // Boilerplate code needed to wire-up generated code
  RevertBody._();

  static void _initializeBuilder(RevertBodyBuilder b) => b;

  factory RevertBody([void updates(RevertBodyBuilder b)]) = _$RevertBody;
  static Serializer<RevertBody> get serializer => _$revertBodySerializer;
}
