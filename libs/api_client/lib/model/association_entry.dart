//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/association.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'association_entry.g.dart';

abstract class AssociationEntry implements Built<AssociationEntry, AssociationEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  Association get entry;

  // Boilerplate code needed to wire-up generated code
  AssociationEntry._();

  static void _initializeBuilder(AssociationEntryBuilder b) => b;

  factory AssociationEntry([void updates(AssociationEntryBuilder b)]) = _$AssociationEntry;
  static Serializer<AssociationEntry> get serializer => _$associationEntrySerializer;
}
