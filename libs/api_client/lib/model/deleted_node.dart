//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/content_info.dart';
import 'package:api_client/model/definition.dart';
import 'package:api_client/model/node.dart';
import 'package:api_client/model/user_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/deleted_node_all_of.dart';
import 'package:api_client/model/path_info.dart';
import 'package:api_client/model/permissions_info.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deleted_node.g.dart';

abstract class DeletedNode implements Built<DeletedNode, DeletedNodeBuilder> {
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
  @BuiltValueField(wireName: r'archivedByUser')
  UserInfo get archivedByUser;

  @nullable
  @BuiltValueField(wireName: r'archivedAt')
  DateTime get archivedAt;

  // Boilerplate code needed to wire-up generated code
  DeletedNode._();

  static void _initializeBuilder(DeletedNodeBuilder b) => b..isLocked = false;

  factory DeletedNode([void updates(DeletedNodeBuilder b)]) = _$DeletedNode;
  static Serializer<DeletedNode> get serializer => _$deletedNodeSerializer;
}
