//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_body.g.dart';

abstract class RatingBody implements Built<RatingBody, RatingBodyBuilder> {
  /// The rating scheme type. Possible values are likes and fiveStar.
  @nullable
  @BuiltValueField(wireName: r'id')
  RatingBodyIdEnum get id;
  // enum idEnum {  likes,  fiveStar,  };

  /// The rating. The type is specific to the rating scheme, boolean for the likes and an integer for the fiveStar
  @nullable
  @BuiltValueField(wireName: r'myRating')
  String get myRating;

  // Boilerplate code needed to wire-up generated code
  RatingBody._();

  static void _initializeBuilder(RatingBodyBuilder b) => b..id = const RatingBodyIdEnum._('likes');

  factory RatingBody([void updates(RatingBodyBuilder b)]) = _$RatingBody;
  static Serializer<RatingBody> get serializer => _$ratingBodySerializer;
}

class RatingBodyIdEnum extends EnumClass {
  /// The rating scheme type. Possible values are likes and fiveStar.
  @BuiltValueEnumConst(wireName: r'likes')
  static const RatingBodyIdEnum likes = _$ratingBodyIdEnum_likes;

  /// The rating scheme type. Possible values are likes and fiveStar.
  @BuiltValueEnumConst(wireName: r'fiveStar')
  static const RatingBodyIdEnum fiveStar = _$ratingBodyIdEnum_fiveStar;

  static Serializer<RatingBodyIdEnum> get serializer => _$ratingBodyIdEnumSerializer;

  const RatingBodyIdEnum._(String name) : super(name);

  static BuiltSet<RatingBodyIdEnum> get values => _$ratingBodyIdEnumValues;
  static RatingBodyIdEnum valueOf(String name) => _$ratingBodyIdEnumValueOf(name);
}
