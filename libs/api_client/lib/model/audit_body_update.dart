//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audit_body_update.g.dart';

abstract class AuditBodyUpdate implements Built<AuditBodyUpdate, AuditBodyUpdateBuilder> {
  @nullable
  @BuiltValueField(wireName: r'isEnabled')
  bool get isEnabled;

  // Boilerplate code needed to wire-up generated code
  AuditBodyUpdate._();

  static void _initializeBuilder(AuditBodyUpdateBuilder b) => b;

  factory AuditBodyUpdate([void updates(AuditBodyUpdateBuilder b)]) = _$AuditBodyUpdate;
  static Serializer<AuditBodyUpdate> get serializer => _$auditBodyUpdateSerializer;
}
