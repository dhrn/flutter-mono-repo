//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/version_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'version_paging.g.dart';

abstract class VersionPaging implements Built<VersionPaging, VersionPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  VersionPagingList get list;

  // Boilerplate code needed to wire-up generated code
  VersionPaging._();

  static void _initializeBuilder(VersionPagingBuilder b) => b;

  factory VersionPaging([void updates(VersionPagingBuilder b)]) = _$VersionPaging;
  static Serializer<VersionPaging> get serializer => _$versionPagingSerializer;
}
