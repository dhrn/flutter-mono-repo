//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/favorite.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favorite_entry.g.dart';

abstract class FavoriteEntry implements Built<FavoriteEntry, FavoriteEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  Favorite get entry;

  // Boilerplate code needed to wire-up generated code
  FavoriteEntry._();

  static void _initializeBuilder(FavoriteEntryBuilder b) => b;

  factory FavoriteEntry([void updates(FavoriteEntryBuilder b)]) = _$FavoriteEntry;
  static Serializer<FavoriteEntry> get serializer => _$favoriteEntrySerializer;
}
