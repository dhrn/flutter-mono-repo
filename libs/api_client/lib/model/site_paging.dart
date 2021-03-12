//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/site_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_paging.g.dart';

abstract class SitePaging implements Built<SitePaging, SitePagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  SitePagingList get list;

  // Boilerplate code needed to wire-up generated code
  SitePaging._();

  static void _initializeBuilder(SitePagingBuilder b) => b;

  factory SitePaging([void updates(SitePagingBuilder b)]) = _$SitePaging;
  static Serializer<SitePaging> get serializer => _$sitePagingSerializer;
}
