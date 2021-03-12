//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/favorite_site.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favorite_site_entry.g.dart';

abstract class FavoriteSiteEntry implements Built<FavoriteSiteEntry, FavoriteSiteEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  FavoriteSite get entry;

  // Boilerplate code needed to wire-up generated code
  FavoriteSiteEntry._();

  static void _initializeBuilder(FavoriteSiteEntryBuilder b) => b;

  factory FavoriteSiteEntry([void updates(FavoriteSiteEntryBuilder b)]) = _$FavoriteSiteEntry;
  static Serializer<FavoriteSiteEntry> get serializer => _$favoriteSiteEntrySerializer;
}
