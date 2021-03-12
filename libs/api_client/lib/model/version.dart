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

part 'version.g.dart';

abstract class Version implements Built<Version, VersionBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'versionComment')
  String get versionComment;

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
  @BuiltValueField(wireName: r'modifiedAt')
  DateTime get modifiedAt;

  @nullable
  @BuiltValueField(wireName: r'modifiedByUser')
  UserInfo get modifiedByUser;

  @nullable
  @BuiltValueField(wireName: r'content')
  ContentInfo get content;

  @nullable
  @BuiltValueField(wireName: r'aspectNames')
  BuiltList<String> get aspectNames;

  @nullable
  @BuiltValueField(wireName: r'properties')
  JsonObject get properties;

  // Boilerplate code needed to wire-up generated code
  Version._();

  static void _initializeBuilder(VersionBuilder b) => b;

  factory Version([void updates(VersionBuilder b)]) = _$Version;
  static Serializer<Version> get serializer => _$versionSerializer;
}
