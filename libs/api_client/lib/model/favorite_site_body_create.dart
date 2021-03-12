//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favorite_site_body_create.g.dart';

abstract class FavoriteSiteBodyCreate implements Built<FavoriteSiteBodyCreate, FavoriteSiteBodyCreateBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  // Boilerplate code needed to wire-up generated code
  FavoriteSiteBodyCreate._();

  static void _initializeBuilder(FavoriteSiteBodyCreateBuilder b) => b;

  factory FavoriteSiteBodyCreate([void updates(FavoriteSiteBodyCreateBuilder b)]) = _$FavoriteSiteBodyCreate;
  static Serializer<FavoriteSiteBodyCreate> get serializer => _$favoriteSiteBodyCreateSerializer;
}
