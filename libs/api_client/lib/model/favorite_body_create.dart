//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favorite_body_create.g.dart';

abstract class FavoriteBodyCreate implements Built<FavoriteBodyCreate, FavoriteBodyCreateBuilder> {
  @nullable
  @BuiltValueField(wireName: r'target')
  JsonObject get target;

  // Boilerplate code needed to wire-up generated code
  FavoriteBodyCreate._();

  static void _initializeBuilder(FavoriteBodyCreateBuilder b) => b;

  factory FavoriteBodyCreate([void updates(FavoriteBodyCreateBuilder b)]) = _$FavoriteBodyCreate;
  static Serializer<FavoriteBodyCreate> get serializer => _$favoriteBodyCreateSerializer;
}
