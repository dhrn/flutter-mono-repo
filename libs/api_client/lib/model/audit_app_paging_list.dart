//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/audit_app_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audit_app_paging_list.g.dart';

abstract class AuditAppPagingList implements Built<AuditAppPagingList, AuditAppPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<AuditAppEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  AuditAppPagingList._();

  static void _initializeBuilder(AuditAppPagingListBuilder b) => b;

  factory AuditAppPagingList([void updates(AuditAppPagingListBuilder b)]) = _$AuditAppPagingList;
  static Serializer<AuditAppPagingList> get serializer => _$auditAppPagingListSerializer;
}
