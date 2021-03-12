//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:api_client/model/site_container_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_container_paging_list.g.dart';

abstract class SiteContainerPagingList implements Built<SiteContainerPagingList, SiteContainerPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<SiteContainerEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  SiteContainerPagingList._();

  static void _initializeBuilder(SiteContainerPagingListBuilder b) => b;

  factory SiteContainerPagingList([void updates(SiteContainerPagingListBuilder b)]) = _$SiteContainerPagingList;
  static Serializer<SiteContainerPagingList> get serializer => _$siteContainerPagingListSerializer;
}
