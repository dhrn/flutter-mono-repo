//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/rating.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_entry.g.dart';

abstract class RatingEntry implements Built<RatingEntry, RatingEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  Rating get entry;

  // Boilerplate code needed to wire-up generated code
  RatingEntry._();

  static void _initializeBuilder(RatingEntryBuilder b) => b;

  factory RatingEntry([void updates(RatingEntryBuilder b)]) = _$RatingEntry;
  static Serializer<RatingEntry> get serializer => _$ratingEntrySerializer;
}
