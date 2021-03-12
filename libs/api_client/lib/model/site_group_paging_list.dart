//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/site_group_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_group_paging_list.g.dart';

abstract class SiteGroupPagingList implements Built<SiteGroupPagingList, SiteGroupPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<SiteGroupEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  SiteGroupPagingList._();

  static void _initializeBuilder(SiteGroupPagingListBuilder b) => b;

  factory SiteGroupPagingList([void updates(SiteGroupPagingListBuilder b)]) = _$SiteGroupPagingList;
  static Serializer<SiteGroupPagingList> get serializer => _$siteGroupPagingListSerializer;
}
