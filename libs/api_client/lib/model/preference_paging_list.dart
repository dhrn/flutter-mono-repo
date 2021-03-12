//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:api_client/model/preference_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'preference_paging_list.g.dart';

abstract class PreferencePagingList implements Built<PreferencePagingList, PreferencePagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<PreferenceEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  PreferencePagingList._();

  static void _initializeBuilder(PreferencePagingListBuilder b) => b;

  factory PreferencePagingList([void updates(PreferencePagingListBuilder b)]) = _$PreferencePagingList;
  static Serializer<PreferencePagingList> get serializer => _$preferencePagingListSerializer;
}
