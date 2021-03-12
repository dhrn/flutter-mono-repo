//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favorite.g.dart';

abstract class Favorite implements Built<Favorite, FavoriteBuilder> {
  /// The guid of the object that is a favorite.
  @nullable
  @BuiltValueField(wireName: r'targetGuid')
  String get targetGuid;

  /// The time the object was made a favorite.
  @nullable
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @nullable
  @BuiltValueField(wireName: r'target')
  JsonObject get target;

  /// A subset of the target favorite properties, system properties and properties already available in the target are excluded.
  @nullable
  @BuiltValueField(wireName: r'properties')
  JsonObject get properties;

  // Boilerplate code needed to wire-up generated code
  Favorite._();

  static void _initializeBuilder(FavoriteBuilder b) => b;

  factory Favorite([void updates(FavoriteBuilder b)]) = _$Favorite;
  static Serializer<Favorite> get serializer => _$favoriteSerializer;
}
