//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:api_client/model/rating_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_paging_list.g.dart';

abstract class RatingPagingList implements Built<RatingPagingList, RatingPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<RatingEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  RatingPagingList._();

  static void _initializeBuilder(RatingPagingListBuilder b) => b;

  factory RatingPagingList([void updates(RatingPagingListBuilder b)]) = _$RatingPagingList;
  static Serializer<RatingPagingList> get serializer => _$ratingPagingListSerializer;
}
