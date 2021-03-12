//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/site_role_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_role_paging.g.dart';

abstract class SiteRolePaging implements Built<SiteRolePaging, SiteRolePagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  SiteRolePagingList get list;

  // Boilerplate code needed to wire-up generated code
  SiteRolePaging._();

  static void _initializeBuilder(SiteRolePagingBuilder b) => b;

  factory SiteRolePaging([void updates(SiteRolePagingBuilder b)]) = _$SiteRolePaging;
  static Serializer<SiteRolePaging> get serializer => _$siteRolePagingSerializer;
}
