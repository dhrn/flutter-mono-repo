//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/site_role_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_role_paging_list.g.dart';

abstract class SiteRolePagingList implements Built<SiteRolePagingList, SiteRolePagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<SiteRoleEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  SiteRolePagingList._();

  static void _initializeBuilder(SiteRolePagingListBuilder b) => b;

  factory SiteRolePagingList([void updates(SiteRolePagingListBuilder b)]) = _$SiteRolePagingList;
  static Serializer<SiteRolePagingList> get serializer => _$siteRolePagingListSerializer;
}
