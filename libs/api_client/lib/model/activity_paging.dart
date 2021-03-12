//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/activity_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activity_paging.g.dart';

abstract class ActivityPaging implements Built<ActivityPaging, ActivityPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  ActivityPagingList get list;

  // Boilerplate code needed to wire-up generated code
  ActivityPaging._();

  static void _initializeBuilder(ActivityPagingBuilder b) => b;

  factory ActivityPaging([void updates(ActivityPagingBuilder b)]) = _$ActivityPaging;
  static Serializer<ActivityPaging> get serializer => _$activityPagingSerializer;
}
