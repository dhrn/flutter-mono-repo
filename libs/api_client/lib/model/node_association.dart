//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/content_info.dart';
import 'package:api_client/model/definition.dart';
import 'package:api_client/model/node.dart';
import 'package:api_client/model/user_info.dart';
import 'package:api_client/model/association_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/path_info.dart';
import 'package:api_client/model/node_association_all_of.dart';
import 'package:api_client/model/permissions_info.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_association.g.dart';

abstract class NodeAssociation implements Built<NodeAssociation, NodeAssociationBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The name must not contain spaces or the following special characters: * \" < > \\ / ? : and |. The character . must not be used at the end of the name.
  @nullable
  @BuiltValueField(wireName: r'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: r'nodeType')
  String get nodeType;

  @nullable
  @BuiltValueField(wireName: r'isFolder')
  bool get isFolder;

  @nullable
  @BuiltValueField(wireName: r'isFile')
  bool get isFile;

  @nullable
  @BuiltValueField(wireName: r'isLocked')
  bool get isLocked;

  @nullable
  @BuiltValueField(wireName: r'modifiedAt')
  DateTime get modifiedAt;

  @nullable
  @BuiltValueField(wireName: r'modifiedByUser')
  UserInfo get modifiedByUser;

  @nullable
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @nullable
  @BuiltValueField(wireName: r'createdByUser')
  UserInfo get createdByUser;

  @nullable
  @BuiltValueField(wireName: r'parentId')
  String get parentId;

  @nullable
  @BuiltValueField(wireName: r'isLink')
  bool get isLink;

  @nullable
  @BuiltValueField(wireName: r'isFavorite')
  bool get isFavorite;

  @nullable
  @BuiltValueField(wireName: r'content')
  ContentInfo get content;

  @nullable
  @BuiltValueField(wireName: r'aspectNames')
  BuiltList<String> get aspectNames;

  @nullable
  @BuiltValueField(wireName: r'properties')
  JsonObject get properties;

  @nullable
  @BuiltValueField(wireName: r'allowableOperations')
  BuiltList<String> get allowableOperations;

  @nullable
  @BuiltValueField(wireName: r'path')
  PathInfo get path;

  @nullable
  @BuiltValueField(wireName: r'permissions')
  PermissionsInfo get permissions;

  @nullable
  @BuiltValueField(wireName: r'definition')
  Definition get definition;

  @nullable
  @BuiltValueField(wireName: r'association')
  AssociationInfo get association;

  // Boilerplate code needed to wire-up generated code
  NodeAssociation._();

  static void _initializeBuilder(NodeAssociationBuilder b) => b..isLocked = false;

  factory NodeAssociation([void updates(NodeAssociationBuilder b)]) = _$NodeAssociation;
  static Serializer<NodeAssociation> get serializer => _$nodeAssociationSerializer;
}
