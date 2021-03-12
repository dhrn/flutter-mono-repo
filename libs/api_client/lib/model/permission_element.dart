//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission_element.g.dart';

abstract class PermissionElement implements Built<PermissionElement, PermissionElementBuilder> {
  @nullable
  @BuiltValueField(wireName: r'authorityId')
  String get authorityId;

  @nullable
  @BuiltValueField(wireName: r'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: r'accessStatus')
  PermissionElementAccessStatusEnum get accessStatus;
  // enum accessStatusEnum {  ALLOWED,  DENIED,  };

  // Boilerplate code needed to wire-up generated code
  PermissionElement._();

  static void _initializeBuilder(PermissionElementBuilder b) =>
      b..accessStatus = const PermissionElementAccessStatusEnum._('ALLOWED');

  factory PermissionElement([void updates(PermissionElementBuilder b)]) = _$PermissionElement;
  static Serializer<PermissionElement> get serializer => _$permissionElementSerializer;
}

class PermissionElementAccessStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ALLOWED')
  static const PermissionElementAccessStatusEnum ALLOWED = _$permissionElementAccessStatusEnum_ALLOWED;
  @BuiltValueEnumConst(wireName: r'DENIED')
  static const PermissionElementAccessStatusEnum DENIED = _$permissionElementAccessStatusEnum_DENIED;

  static Serializer<PermissionElementAccessStatusEnum> get serializer => _$permissionElementAccessStatusEnumSerializer;

  const PermissionElementAccessStatusEnum._(String name) : super(name);

  static BuiltSet<PermissionElementAccessStatusEnum> get values => _$permissionElementAccessStatusEnumValues;
  static PermissionElementAccessStatusEnum valueOf(String name) => _$permissionElementAccessStatusEnumValueOf(name);
}
