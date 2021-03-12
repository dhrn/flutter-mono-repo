//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/permission_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permissions_body.g.dart';

abstract class PermissionsBody implements Built<PermissionsBody, PermissionsBodyBuilder> {
  @nullable
  @BuiltValueField(wireName: r'isInheritanceEnabled')
  bool get isInheritanceEnabled;

  @nullable
  @BuiltValueField(wireName: r'locallySet')
  BuiltList<PermissionElement> get locallySet;

  // Boilerplate code needed to wire-up generated code
  PermissionsBody._();

  static void _initializeBuilder(PermissionsBodyBuilder b) => b;

  factory PermissionsBody([void updates(PermissionsBodyBuilder b)]) = _$PermissionsBody;
  static Serializer<PermissionsBody> get serializer => _$permissionsBodySerializer;
}
