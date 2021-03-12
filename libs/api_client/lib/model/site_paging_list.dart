//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/site_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_paging_list.g.dart';

abstract class SitePagingList implements Built<SitePagingList, SitePagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<SiteEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  SitePagingList._();

  static void _initializeBuilder(SitePagingListBuilder b) => b;

  factory SitePagingList([void updates(SitePagingListBuilder b)]) = _$SitePagingList;
  static Serializer<SitePagingList> get serializer => _$sitePagingListSerializer;
}
