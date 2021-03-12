//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/content_info.dart';
import 'package:api_client/model/user_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'shared_link.g.dart';

abstract class SharedLink implements Built<SharedLink, SharedLinkBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'expiresAt')
  DateTime get expiresAt;

  @nullable
  @BuiltValueField(wireName: r'nodeId')
  String get nodeId;

  /// The name must not contain spaces or the following special characters: * \" < > \\ / ? : and |. The character . must not be used at the end of the name.
  @nullable
  @BuiltValueField(wireName: r'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  @nullable
  @BuiltValueField(wireName: r'description')
  String get description;

  @nullable
  @BuiltValueField(wireName: r'modifiedAt')
  DateTime get modifiedAt;

  @nullable
  @BuiltValueField(wireName: r'modifiedByUser')
  UserInfo get modifiedByUser;

  @nullable
  @BuiltValueField(wireName: r'sharedByUser')
  UserInfo get sharedByUser;

  @nullable
  @BuiltValueField(wireName: r'content')
  ContentInfo get content;

  /// The allowable operations for the Quickshare link itself. See allowableOperationsOnTarget for the allowable operations pertaining to the linked content node.
  @nullable
  @BuiltValueField(wireName: r'allowableOperations')
  BuiltList<String> get allowableOperations;

  /// The allowable operations for the content node being shared.
  @nullable
  @BuiltValueField(wireName: r'allowableOperationsOnTarget')
  BuiltList<String> get allowableOperationsOnTarget;

  @nullable
  @BuiltValueField(wireName: r'isFavorite')
  bool get isFavorite;

  /// A subset of the target node's properties, system properties and properties already available in the SharedLink are excluded.
  @nullable
  @BuiltValueField(wireName: r'properties')
  JsonObject get properties;

  @nullable
  @BuiltValueField(wireName: r'aspectNames')
  BuiltList<String> get aspectNames;

  // Boilerplate code needed to wire-up generated code
  SharedLink._();

  static void _initializeBuilder(SharedLinkBuilder b) => b;

  factory SharedLink([void updates(SharedLinkBuilder b)]) = _$SharedLink;
  static Serializer<SharedLink> get serializer => _$sharedLinkSerializer;
}
