//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/audit_entry_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audit_entry_paging_list.g.dart';

abstract class AuditEntryPagingList implements Built<AuditEntryPagingList, AuditEntryPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<AuditEntryEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  AuditEntryPagingList._();

  static void _initializeBuilder(AuditEntryPagingListBuilder b) => b;

  factory AuditEntryPagingList([void updates(AuditEntryPagingListBuilder b)]) = _$AuditEntryPagingList;
  static Serializer<AuditEntryPagingList> get serializer => _$auditEntryPagingListSerializer;
}
