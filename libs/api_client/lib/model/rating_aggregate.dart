//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_aggregate.g.dart';

abstract class RatingAggregate implements Built<RatingAggregate, RatingAggregateBuilder> {
  @nullable
  @BuiltValueField(wireName: r'numberOfRatings')
  int get numberOfRatings;

  @nullable
  @BuiltValueField(wireName: r'average')
  int get average;

  // Boilerplate code needed to wire-up generated code
  RatingAggregate._();

  static void _initializeBuilder(RatingAggregateBuilder b) => b;

  factory RatingAggregate([void updates(RatingAggregateBuilder b)]) = _$RatingAggregate;
  static Serializer<RatingAggregate> get serializer => _$ratingAggregateSerializer;
}
