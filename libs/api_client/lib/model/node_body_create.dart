//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/definition.dart';
import 'package:api_client/model/node_body_create_association.dart';
import 'package:api_client/model/child_association_body.dart';
import 'package:api_client/model/association_body.dart';
import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/permissions_body.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_body_create.g.dart';

abstract class NodeBodyCreate implements Built<NodeBodyCreate, NodeBodyCreateBuilder> {
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
  JsonObject get properties;

  @nullable
  @BuiltValueField(wireName: r'permissions')
  PermissionsBody get permissions;

  @nullable
  @BuiltValueField(wireName: r'definition')
  Definition get definition;

  @nullable
  @BuiltValueField(wireName: r'relativePath')
  String get relativePath;

  @nullable
  @BuiltValueField(wireName: r'association')
  NodeBodyCreateAssociation get association;

  @nullable
  @BuiltValueField(wireName: r'secondaryChildren')
  BuiltList<ChildAssociationBody> get secondaryChildren;

  @nullable
  @BuiltValueField(wireName: r'targets')
  BuiltList<AssociationBody> get targets;

  // Boilerplate code needed to wire-up generated code
  NodeBodyCreate._();

  static void _initializeBuilder(NodeBodyCreateBuilder b) => b;

  factory NodeBodyCreate([void updates(NodeBodyCreateBuilder b)]) = _$NodeBodyCreate;
  static Serializer<NodeBodyCreate> get serializer => _$nodeBodyCreateSerializer;
}
