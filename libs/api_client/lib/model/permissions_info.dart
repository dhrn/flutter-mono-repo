//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/permission_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permissions_info.g.dart';

abstract class PermissionsInfo implements Built<PermissionsInfo, PermissionsInfoBuilder> {
  @nullable
  @BuiltValueField(wireName: r'isInheritanceEnabled')
  bool get isInheritanceEnabled;

  @nullable
  @BuiltValueField(wireName: r'inherited')
  BuiltList<PermissionElement> get inherited;

  @nullable
  @BuiltValueField(wireName: r'locallySet')
  BuiltList<PermissionElement> get locallySet;

  @nullable
  @BuiltValueField(wireName: r'settable')
  BuiltList<String> get settable;

  // Boilerplate code needed to wire-up generated code
  PermissionsInfo._();

  static void _initializeBuilder(PermissionsInfoBuilder b) => b;

  factory PermissionsInfo([void updates(PermissionsInfoBuilder b)]) = _$PermissionsInfo;
  static Serializer<PermissionsInfo> get serializer => _$permissionsInfoSerializer;
}
