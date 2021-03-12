//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'probe_entry_entry.g.dart';

abstract class ProbeEntryEntry implements Built<ProbeEntryEntry, ProbeEntryEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'message')
  String get message;

  // Boilerplate code needed to wire-up generated code
  ProbeEntryEntry._();

  static void _initializeBuilder(ProbeEntryEntryBuilder b) => b;

  factory ProbeEntryEntry([void updates(ProbeEntryEntryBuilder b)]) = _$ProbeEntryEntry;
  static Serializer<ProbeEntryEntry> get serializer => _$probeEntryEntrySerializer;
}
