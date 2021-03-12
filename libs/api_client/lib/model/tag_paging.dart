//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/tag_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tag_paging.g.dart';

abstract class TagPaging implements Built<TagPaging, TagPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  TagPagingList get list;

  // Boilerplate code needed to wire-up generated code
  TagPaging._();

  static void _initializeBuilder(TagPagingBuilder b) => b;

  factory TagPaging([void updates(TagPagingBuilder b)]) = _$TagPaging;
  static Serializer<TagPaging> get serializer => _$tagPagingSerializer;
}
