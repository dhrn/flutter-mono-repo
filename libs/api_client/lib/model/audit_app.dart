//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audit_app.g.dart';

abstract class AuditApp implements Built<AuditApp, AuditAppBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: r'isEnabled')
  bool get isEnabled;

  @nullable
  @BuiltValueField(wireName: r'maxEntryId')
  int get maxEntryId;

  @nullable
  @BuiltValueField(wireName: r'minEntryId')
  int get minEntryId;

  // Boilerplate code needed to wire-up generated code
  AuditApp._();

  static void _initializeBuilder(AuditAppBuilder b) => b..isEnabled = true;

  factory AuditApp([void updates(AuditAppBuilder b)]) = _$AuditApp;
  static Serializer<AuditApp> get serializer => _$auditAppSerializer;
}
