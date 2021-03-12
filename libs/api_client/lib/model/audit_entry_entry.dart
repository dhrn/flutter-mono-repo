//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/audit_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audit_entry_entry.g.dart';

abstract class AuditEntryEntry implements Built<AuditEntryEntry, AuditEntryEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  AuditEntry get entry;

  // Boilerplate code needed to wire-up generated code
  AuditEntryEntry._();

  static void _initializeBuilder(AuditEntryEntryBuilder b) => b;

  factory AuditEntryEntry([void updates(AuditEntryEntryBuilder b)]) = _$AuditEntryEntry;
  static Serializer<AuditEntryEntry> get serializer => _$auditEntryEntrySerializer;
}
