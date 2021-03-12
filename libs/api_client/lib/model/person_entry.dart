//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/person.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person_entry.g.dart';

abstract class PersonEntry implements Built<PersonEntry, PersonEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  Person get entry;

  // Boilerplate code needed to wire-up generated code
  PersonEntry._();

  static void _initializeBuilder(PersonEntryBuilder b) => b;

  factory PersonEntry([void updates(PersonEntryBuilder b)]) = _$PersonEntry;
  static Serializer<PersonEntry> get serializer => _$personEntrySerializer;
}
