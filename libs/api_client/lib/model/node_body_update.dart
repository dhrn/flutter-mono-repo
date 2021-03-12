//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/permissions_body.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_body_update.g.dart';

abstract class NodeBodyUpdate implements Built<NodeBodyUpdate, NodeBodyUpdateBuilder> {
  /// The name must not contain spaces or the following special characters: * \" < > \\ / ? : and |. The character . must not be used at the end of the name.
  @nullable
  @BuiltValueField(wireName: r'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: r'nodeType')
  String get nodeType;

  @nullable
  @BuiltValueField(wireName: r'aspectNames')
  BuiltList<String> get aspectNames;

  @nullable
  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, String> get properties;

  @nullable
  @BuiltValueField(wireName: r'permissions')
  PermissionsBody get permissions;

  // Boilerplate code needed to wire-up generated code
  NodeBodyUpdate._();

  static void _initializeBuilder(NodeBodyUpdateBuilder b) => b;

  factory NodeBodyUpdate([void updates(NodeBodyUpdateBuilder b)]) = _$NodeBodyUpdate;
  static Serializer<NodeBodyUpdate> get serializer => _$nodeBodyUpdateSerializer;
}
