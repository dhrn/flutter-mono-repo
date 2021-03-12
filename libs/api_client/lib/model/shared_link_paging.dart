//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/shared_link_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'shared_link_paging.g.dart';

abstract class SharedLinkPaging implements Built<SharedLinkPaging, SharedLinkPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  SharedLinkPagingList get list;

  // Boilerplate code needed to wire-up generated code
  SharedLinkPaging._();

  static void _initializeBuilder(SharedLinkPagingBuilder b) => b;

  factory SharedLinkPaging([void updates(SharedLinkPagingBuilder b)]) = _$SharedLinkPaging;
  static Serializer<SharedLinkPaging> get serializer => _$sharedLinkPagingSerializer;
}
