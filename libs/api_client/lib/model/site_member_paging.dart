//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/site_member_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_member_paging.g.dart';

abstract class SiteMemberPaging implements Built<SiteMemberPaging, SiteMemberPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  SiteMemberPagingList get list;

  // Boilerplate code needed to wire-up generated code
  SiteMemberPaging._();

  static void _initializeBuilder(SiteMemberPagingBuilder b) => b;

  factory SiteMemberPaging([void updates(SiteMemberPagingBuilder b)]) = _$SiteMemberPaging;
  static Serializer<SiteMemberPaging> get serializer => _$siteMemberPagingSerializer;
}
