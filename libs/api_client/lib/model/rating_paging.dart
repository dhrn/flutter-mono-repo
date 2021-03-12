//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/rating_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_paging.g.dart';

abstract class RatingPaging implements Built<RatingPaging, RatingPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  RatingPagingList get list;

  // Boilerplate code needed to wire-up generated code
  RatingPaging._();

  static void _initializeBuilder(RatingPagingBuilder b) => b;

  factory RatingPaging([void updates(RatingPagingBuilder b)]) = _$RatingPaging;
  static Serializer<RatingPaging> get serializer => _$ratingPagingSerializer;
}
