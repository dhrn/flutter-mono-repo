//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/person_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person_paging_list.g.dart';

abstract class PersonPagingList implements Built<PersonPagingList, PersonPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<PersonEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  PersonPagingList._();

  static void _initializeBuilder(PersonPagingListBuilder b) => b;

  factory PersonPagingList([void updates(PersonPagingListBuilder b)]) = _$PersonPagingList;
  static Serializer<PersonPagingList> get serializer => _$personPagingListSerializer;
}
