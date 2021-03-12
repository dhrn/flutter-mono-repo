//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/preference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'preference_entry.g.dart';

abstract class PreferenceEntry implements Built<PreferenceEntry, PreferenceEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  Preference get entry;

  // Boilerplate code needed to wire-up generated code
  PreferenceEntry._();

  static void _initializeBuilder(PreferenceEntryBuilder b) => b;

  factory PreferenceEntry([void updates(PreferenceEntryBuilder b)]) = _$PreferenceEntry;
  static Serializer<PreferenceEntry> get serializer => _$preferenceEntrySerializer;
}
