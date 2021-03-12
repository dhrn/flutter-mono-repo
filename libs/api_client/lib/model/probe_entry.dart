//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/probe_entry_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'probe_entry.g.dart';

abstract class ProbeEntry implements Built<ProbeEntry, ProbeEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  ProbeEntryEntry get entry;

  // Boilerplate code needed to wire-up generated code
  ProbeEntry._();

  static void _initializeBuilder(ProbeEntryBuilder b) => b;

  factory ProbeEntry([void updates(ProbeEntryBuilder b)]) = _$ProbeEntry;
  static Serializer<ProbeEntry> get serializer => _$probeEntrySerializer;
}
