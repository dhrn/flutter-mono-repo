//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'shared_link_body_create.g.dart';

abstract class SharedLinkBodyCreate implements Built<SharedLinkBodyCreate, SharedLinkBodyCreateBuilder> {
  @nullable
  @BuiltValueField(wireName: r'nodeId')
  String get nodeId;

  @nullable
  @BuiltValueField(wireName: r'expiresAt')
  DateTime get expiresAt;

  // Boilerplate code needed to wire-up generated code
  SharedLinkBodyCreate._();

  static void _initializeBuilder(SharedLinkBodyCreateBuilder b) => b;

  factory SharedLinkBodyCreate([void updates(SharedLinkBodyCreateBuilder b)]) = _$SharedLinkBodyCreate;
  static Serializer<SharedLinkBodyCreate> get serializer => _$sharedLinkBodyCreateSerializer;
}
