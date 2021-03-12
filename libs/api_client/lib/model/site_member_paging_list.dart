//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:api_client/model/site_member_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_member_paging_list.g.dart';

abstract class SiteMemberPagingList implements Built<SiteMemberPagingList, SiteMemberPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<SiteMemberEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  SiteMemberPagingList._();

  static void _initializeBuilder(SiteMemberPagingListBuilder b) => b;

  factory SiteMemberPagingList([void updates(SiteMemberPagingListBuilder b)]) = _$SiteMemberPagingList;
  static Serializer<SiteMemberPagingList> get serializer => _$siteMemberPagingListSerializer;
}
