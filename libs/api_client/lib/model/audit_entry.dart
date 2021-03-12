//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/user_info.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audit_entry.g.dart';

abstract class AuditEntry implements Built<AuditEntry, AuditEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'auditApplicationId')
  String get auditApplicationId;

  @nullable
  @BuiltValueField(wireName: r'createdByUser')
  UserInfo get createdByUser;

  @nullable
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @nullable
  @BuiltValueField(wireName: r'values')
  JsonObject get values;

  // Boilerplate code needed to wire-up generated code
  AuditEntry._();

  static void _initializeBuilder(AuditEntryBuilder b) => b;

  factory AuditEntry([void updates(AuditEntryBuilder b)]) = _$AuditEntry;
  static Serializer<AuditEntry> get serializer => _$auditEntrySerializer;
}
