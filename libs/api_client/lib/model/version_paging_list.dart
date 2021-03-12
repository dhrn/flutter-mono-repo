//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:api_client/model/version_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'version_paging_list.g.dart';

abstract class VersionPagingList implements Built<VersionPagingList, VersionPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<VersionEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  VersionPagingList._();

  static void _initializeBuilder(VersionPagingListBuilder b) => b;

  factory VersionPagingList([void updates(VersionPagingListBuilder b)]) = _$VersionPagingList;
  static Serializer<VersionPagingList> get serializer => _$versionPagingListSerializer;
}
