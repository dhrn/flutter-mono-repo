//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/person_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person_paging.g.dart';

abstract class PersonPaging implements Built<PersonPaging, PersonPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  PersonPagingList get list;

  // Boilerplate code needed to wire-up generated code
  PersonPaging._();

  static void _initializeBuilder(PersonPagingBuilder b) => b;

  factory PersonPaging([void updates(PersonPagingBuilder b)]) = _$PersonPaging;
  static Serializer<PersonPaging> get serializer => _$personPagingSerializer;
}
