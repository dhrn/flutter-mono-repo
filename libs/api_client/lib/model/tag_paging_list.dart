//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:api_client/model/tag_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tag_paging_list.g.dart';

abstract class TagPagingList implements Built<TagPagingList, TagPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<TagEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  TagPagingList._();

  static void _initializeBuilder(TagPagingListBuilder b) => b;

  factory TagPagingList([void updates(TagPagingListBuilder b)]) = _$TagPagingList;
  static Serializer<TagPagingList> get serializer => _$tagPagingListSerializer;
}
