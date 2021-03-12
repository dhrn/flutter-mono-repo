//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/site_group_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_group_paging.g.dart';

abstract class SiteGroupPaging implements Built<SiteGroupPaging, SiteGroupPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  SiteGroupPagingList get list;

  // Boilerplate code needed to wire-up generated code
  SiteGroupPaging._();

  static void _initializeBuilder(SiteGroupPagingBuilder b) => b;

  factory SiteGroupPaging([void updates(SiteGroupPagingBuilder b)]) = _$SiteGroupPaging;
  static Serializer<SiteGroupPaging> get serializer => _$siteGroupPagingSerializer;
}
