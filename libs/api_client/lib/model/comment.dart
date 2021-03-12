//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/person.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comment.g.dart';

abstract class Comment implements Built<Comment, CommentBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  @nullable
  @BuiltValueField(wireName: r'content')
  String get content;

  @nullable
  @BuiltValueField(wireName: r'createdBy')
  Person get createdBy;

  @nullable
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @nullable
  @BuiltValueField(wireName: r'edited')
  bool get edited;

  @nullable
  @BuiltValueField(wireName: r'modifiedBy')
  Person get modifiedBy;

  @nullable
  @BuiltValueField(wireName: r'modifiedAt')
  DateTime get modifiedAt;

  @nullable
  @BuiltValueField(wireName: r'canEdit')
  bool get canEdit;

  @nullable
  @BuiltValueField(wireName: r'canDelete')
  bool get canDelete;

  // Boilerplate code needed to wire-up generated code
  Comment._();

  static void _initializeBuilder(CommentBuilder b) => b;

  factory Comment([void updates(CommentBuilder b)]) = _$Comment;
  static Serializer<Comment> get serializer => _$commentSerializer;
}
