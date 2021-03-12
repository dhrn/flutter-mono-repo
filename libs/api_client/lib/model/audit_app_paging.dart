//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/audit_app_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audit_app_paging.g.dart';

abstract class AuditAppPaging implements Built<AuditAppPaging, AuditAppPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  AuditAppPagingList get list;

  // Boilerplate code needed to wire-up generated code
  AuditAppPaging._();

  static void _initializeBuilder(AuditAppPagingBuilder b) => b;

  factory AuditAppPaging([void updates(AuditAppPagingBuilder b)]) = _$AuditAppPaging;
  static Serializer<AuditAppPaging> get serializer => _$auditAppPagingSerializer;
}
