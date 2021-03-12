//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/audit_app.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audit_app_entry.g.dart';

abstract class AuditAppEntry implements Built<AuditAppEntry, AuditAppEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  AuditApp get entry;

  // Boilerplate code needed to wire-up generated code
  AuditAppEntry._();

  static void _initializeBuilder(AuditAppEntryBuilder b) => b;

  factory AuditAppEntry([void updates(AuditAppEntryBuilder b)]) = _$AuditAppEntry;
  static Serializer<AuditAppEntry> get serializer => _$auditAppEntrySerializer;
}
