//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/rating_aggregate.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating.g.dart';

abstract class Rating implements Built<Rating, RatingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'aggregate')
  RatingAggregate get aggregate;

  @nullable
  @BuiltValueField(wireName: r'ratedAt')
  DateTime get ratedAt;

  /// The rating. The type is specific to the rating scheme, boolean for the likes and an integer for the fiveStar.
  @nullable
  @BuiltValueField(wireName: r'myRating')
  String get myRating;

  // Boilerplate code needed to wire-up generated code
  Rating._();

  static void _initializeBuilder(RatingBuilder b) => b;

  factory Rating([void updates(RatingBuilder b)]) = _$Rating;
  static Serializer<Rating> get serializer => _$ratingSerializer;
}
