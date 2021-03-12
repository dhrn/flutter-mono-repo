//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/favorite_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favorite_paging_list.g.dart';

abstract class FavoritePagingList implements Built<FavoritePagingList, FavoritePagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<FavoriteEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  FavoritePagingList._();

  static void _initializeBuilder(FavoritePagingListBuilder b) => b;

  factory FavoritePagingList([void updates(FavoritePagingListBuilder b)]) = _$FavoritePagingList;
  static Serializer<FavoritePagingList> get serializer => _$favoritePagingListSerializer;
}
