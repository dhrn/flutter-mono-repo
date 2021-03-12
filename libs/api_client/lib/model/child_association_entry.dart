//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/child_association.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'child_association_entry.g.dart';

abstract class ChildAssociationEntry implements Built<ChildAssociationEntry, ChildAssociationEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  ChildAssociation get entry;

  // Boilerplate code needed to wire-up generated code
  ChildAssociationEntry._();

  static void _initializeBuilder(ChildAssociationEntryBuilder b) => b;

  factory ChildAssociationEntry([void updates(ChildAssociationEntryBuilder b)]) = _$ChildAssociationEntry;
  static Serializer<ChildAssociationEntry> get serializer => _$childAssociationEntrySerializer;
}
