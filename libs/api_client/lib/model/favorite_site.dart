//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favorite_site.g.dart';

abstract class FavoriteSite implements Built<FavoriteSite, FavoriteSiteBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  // Boilerplate code needed to wire-up generated code
  FavoriteSite._();

  static void _initializeBuilder(FavoriteSiteBuilder b) => b;

  factory FavoriteSite([void updates(FavoriteSiteBuilder b)]) = _$FavoriteSite;
  static Serializer<FavoriteSite> get serializer => _$favoriteSiteSerializer;
}
