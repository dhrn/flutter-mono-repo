//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/comment.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comment_entry.g.dart';

abstract class CommentEntry implements Built<CommentEntry, CommentEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  Comment get entry;

  // Boilerplate code needed to wire-up generated code
  CommentEntry._();

  static void _initializeBuilder(CommentEntryBuilder b) => b;

  factory CommentEntry([void updates(CommentEntryBuilder b)]) = _$CommentEntry;
  static Serializer<CommentEntry> get serializer => _$commentEntrySerializer;
}
