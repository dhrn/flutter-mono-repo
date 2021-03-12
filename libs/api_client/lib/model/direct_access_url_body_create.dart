//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'direct_access_url_body_create.g.dart';

abstract class DirectAccessUrlBodyCreate implements Built<DirectAccessUrlBodyCreate, DirectAccessUrlBodyCreateBuilder> {
  @nullable
  @BuiltValueField(wireName: r'expiresAt')
  DateTime get expiresAt;

  /// The length of time in seconds that the url is valid for.
  @nullable
  @BuiltValueField(wireName: r'validFor')
  int get validFor;

  // Boilerplate code needed to wire-up generated code
  DirectAccessUrlBodyCreate._();

  static void _initializeBuilder(DirectAccessUrlBodyCreateBuilder b) => b;

  factory DirectAccessUrlBodyCreate([void updates(DirectAccessUrlBodyCreateBuilder b)]) = _$DirectAccessUrlBodyCreate;
  static Serializer<DirectAccessUrlBodyCreate> get serializer => _$directAccessUrlBodyCreateSerializer;
}
