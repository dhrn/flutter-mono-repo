//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/site_container_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_container_paging.g.dart';

abstract class SiteContainerPaging implements Built<SiteContainerPaging, SiteContainerPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  SiteContainerPagingList get list;

  // Boilerplate code needed to wire-up generated code
  SiteContainerPaging._();

  static void _initializeBuilder(SiteContainerPagingBuilder b) => b;

  factory SiteContainerPaging([void updates(SiteContainerPagingBuilder b)]) = _$SiteContainerPaging;
  static Serializer<SiteContainerPaging> get serializer => _$siteContainerPagingSerializer;
}
