//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:api_client/model/shared_link_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'shared_link_paging_list.g.dart';

abstract class SharedLinkPagingList implements Built<SharedLinkPagingList, SharedLinkPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<SharedLinkEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  SharedLinkPagingList._();

  static void _initializeBuilder(SharedLinkPagingListBuilder b) => b;

  factory SharedLinkPagingList([void updates(SharedLinkPagingListBuilder b)]) = _$SharedLinkPagingList;
  static Serializer<SharedLinkPagingList> get serializer => _$sharedLinkPagingListSerializer;
}
