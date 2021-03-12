//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/activity_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activity_paging_list.g.dart';

abstract class ActivityPagingList implements Built<ActivityPagingList, ActivityPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<ActivityEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  ActivityPagingList._();

  static void _initializeBuilder(ActivityPagingListBuilder b) => b;

  factory ActivityPagingList([void updates(ActivityPagingListBuilder b)]) = _$ActivityPagingList;
  static Serializer<ActivityPagingList> get serializer => _$activityPagingListSerializer;
}
