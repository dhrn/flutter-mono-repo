//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/person_network.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person_network_entry.g.dart';

abstract class PersonNetworkEntry implements Built<PersonNetworkEntry, PersonNetworkEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  PersonNetwork get entry;

  // Boilerplate code needed to wire-up generated code
  PersonNetworkEntry._();

  static void _initializeBuilder(PersonNetworkEntryBuilder b) => b;

  factory PersonNetworkEntry([void updates(PersonNetworkEntryBuilder b)]) = _$PersonNetworkEntry;
  static Serializer<PersonNetworkEntry> get serializer => _$personNetworkEntrySerializer;
}
