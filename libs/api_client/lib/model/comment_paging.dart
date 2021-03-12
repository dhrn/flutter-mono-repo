//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/comment_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comment_paging.g.dart';

abstract class CommentPaging implements Built<CommentPaging, CommentPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  CommentPagingList get list;

  // Boilerplate code needed to wire-up generated code
  CommentPaging._();

  static void _initializeBuilder(CommentPagingBuilder b) => b;

  factory CommentPaging([void updates(CommentPagingBuilder b)]) = _$CommentPaging;
  static Serializer<CommentPaging> get serializer => _$commentPagingSerializer;
}
