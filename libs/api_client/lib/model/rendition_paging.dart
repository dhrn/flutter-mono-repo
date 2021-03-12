//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/rendition_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rendition_paging.g.dart';

abstract class RenditionPaging implements Built<RenditionPaging, RenditionPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  RenditionPagingList get list;

  // Boilerplate code needed to wire-up generated code
  RenditionPaging._();

  static void _initializeBuilder(RenditionPagingBuilder b) => b;

  factory RenditionPaging([void updates(RenditionPagingBuilder b)]) = _$RenditionPaging;
  static Serializer<RenditionPaging> get serializer => _$renditionPagingSerializer;
}
