//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comment_body.g.dart';

abstract class CommentBody implements Built<CommentBody, CommentBodyBuilder> {
  @nullable
  @BuiltValueField(wireName: r'content')
  String get content;

  // Boilerplate code needed to wire-up generated code
  CommentBody._();

  static void _initializeBuilder(CommentBodyBuilder b) => b;

  factory CommentBody([void updates(CommentBodyBuilder b)]) = _$CommentBody;
  static Serializer<CommentBody> get serializer => _$commentBodySerializer;
}
