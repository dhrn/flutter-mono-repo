//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'association_body.g.dart';

abstract class AssociationBody implements Built<AssociationBody, AssociationBodyBuilder> {
  @nullable
  @BuiltValueField(wireName: r'targetId')
  String get targetId;

  @nullable
  @BuiltValueField(wireName: r'assocType')
  String get assocType;

  // Boilerplate code needed to wire-up generated code
  AssociationBody._();

  static void _initializeBuilder(AssociationBodyBuilder b) => b;

  factory AssociationBody([void updates(AssociationBodyBuilder b)]) = _$AssociationBody;
  static Serializer<AssociationBody> get serializer => _$associationBodySerializer;
}
