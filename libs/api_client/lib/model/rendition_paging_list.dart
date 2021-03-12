//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/rendition_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rendition_paging_list.g.dart';

abstract class RenditionPagingList implements Built<RenditionPagingList, RenditionPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<RenditionEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  RenditionPagingList._();

  static void _initializeBuilder(RenditionPagingListBuilder b) => b;

  factory RenditionPagingList([void updates(RenditionPagingListBuilder b)]) = _$RenditionPagingList;
  static Serializer<RenditionPagingList> get serializer => _$renditionPagingListSerializer;
}
