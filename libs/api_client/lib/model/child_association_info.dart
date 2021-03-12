//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'child_association_info.g.dart';

abstract class ChildAssociationInfo implements Built<ChildAssociationInfo, ChildAssociationInfoBuilder> {
  @nullable
  @BuiltValueField(wireName: r'assocType')
  String get assocType;

  @nullable
  @BuiltValueField(wireName: r'isPrimary')
  bool get isPrimary;

  // Boilerplate code needed to wire-up generated code
  ChildAssociationInfo._();

  static void _initializeBuilder(ChildAssociationInfoBuilder b) => b;

  factory ChildAssociationInfo([void updates(ChildAssociationInfoBuilder b)]) = _$ChildAssociationInfo;
  static Serializer<ChildAssociationInfo> get serializer => _$childAssociationInfoSerializer;
}
