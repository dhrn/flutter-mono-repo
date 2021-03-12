//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/favorite_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favorite_paging.g.dart';

abstract class FavoritePaging implements Built<FavoritePaging, FavoritePagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  FavoritePagingList get list;

  // Boilerplate code needed to wire-up generated code
  FavoritePaging._();

  static void _initializeBuilder(FavoritePagingBuilder b) => b;

  factory FavoritePaging([void updates(FavoritePagingBuilder b)]) = _$FavoritePaging;
  static Serializer<FavoritePaging> get serializer => _$favoritePagingSerializer;
}
