//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/audit_entry_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audit_entry_paging.g.dart';

abstract class AuditEntryPaging implements Built<AuditEntryPaging, AuditEntryPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  AuditEntryPagingList get list;

  // Boilerplate code needed to wire-up generated code
  AuditEntryPaging._();

  static void _initializeBuilder(AuditEntryPagingBuilder b) => b;

  factory AuditEntryPaging([void updates(AuditEntryPagingBuilder b)]) = _$AuditEntryPaging;
  static Serializer<AuditEntryPaging> get serializer => _$auditEntryPagingSerializer;
}
