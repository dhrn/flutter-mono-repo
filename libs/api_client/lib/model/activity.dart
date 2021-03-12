//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activity.g.dart';

abstract class Activity implements Built<Activity, ActivityBuilder> {
  /// The id of the person who performed the activity
  @nullable
  @BuiltValueField(wireName: r'postPersonId')
  String get postPersonId;

  /// The unique id of the activity
  @nullable
  @BuiltValueField(wireName: r'id')
  int get id;

  /// The unique id of the site on which the activity was performed
  @nullable
  @BuiltValueField(wireName: r'siteId')
  String get siteId;

  /// The date time at which the activity was performed
  @nullable
  @BuiltValueField(wireName: r'postedAt')
  DateTime get postedAt;

  /// The feed on which this activity was posted
  @nullable
  @BuiltValueField(wireName: r'feedPersonId')
  String get feedPersonId;

  /// An object summarizing the activity
  @nullable
  @BuiltValueField(wireName: r'activitySummary')
  BuiltMap<String, String> get activitySummary;

  /// The type of the activity posted
  @nullable
  @BuiltValueField(wireName: r'activityType')
  String get activityType;

  // Boilerplate code needed to wire-up generated code
  Activity._();

  static void _initializeBuilder(ActivityBuilder b) => b;

  factory Activity([void updates(ActivityBuilder b)]) = _$Activity;
  static Serializer<Activity> get serializer => _$activitySerializer;
}
