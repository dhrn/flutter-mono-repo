//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/activity.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activity_entry.g.dart';

abstract class ActivityEntry implements Built<ActivityEntry, ActivityEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  Activity get entry;

  // Boilerplate code needed to wire-up generated code
  ActivityEntry._();

  static void _initializeBuilder(ActivityEntryBuilder b) => b;

  factory ActivityEntry([void updates(ActivityEntryBuilder b)]) = _$ActivityEntry;
  static Serializer<ActivityEntry> get serializer => _$activityEntrySerializer;
}
