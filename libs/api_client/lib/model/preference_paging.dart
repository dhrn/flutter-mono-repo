//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/preference_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'preference_paging.g.dart';

abstract class PreferencePaging implements Built<PreferencePaging, PreferencePagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  PreferencePagingList get list;

  // Boilerplate code needed to wire-up generated code
  PreferencePaging._();

  static void _initializeBuilder(PreferencePagingBuilder b) => b;

  factory PreferencePaging([void updates(PreferencePagingBuilder b)]) = _$PreferencePaging;
  static Serializer<PreferencePaging> get serializer => _$preferencePagingSerializer;
}
