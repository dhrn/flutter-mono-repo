//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:api_client/model/comment_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comment_paging_list.g.dart';

abstract class CommentPagingList implements Built<CommentPagingList, CommentPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<CommentEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  CommentPagingList._();

  static void _initializeBuilder(CommentPagingListBuilder b) => b;

  factory CommentPagingList([void updates(CommentPagingListBuilder b)]) = _$CommentPagingList;
  static Serializer<CommentPagingList> get serializer => _$commentPagingListSerializer;
}
