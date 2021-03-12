//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'association_info.g.dart';

abstract class AssociationInfo implements Built<AssociationInfo, AssociationInfoBuilder> {
  @nullable
  @BuiltValueField(wireName: r'assocType')
  String get assocType;

  // Boilerplate code needed to wire-up generated code
  AssociationInfo._();

  static void _initializeBuilder(AssociationInfoBuilder b) => b;

  factory AssociationInfo([void updates(AssociationInfoBuilder b)]) = _$AssociationInfo;
  static Serializer<AssociationInfo> get serializer => _$associationInfoSerializer;
}
