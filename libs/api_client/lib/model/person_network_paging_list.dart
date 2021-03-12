//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/person_network_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person_network_paging_list.g.dart';

abstract class PersonNetworkPagingList implements Built<PersonNetworkPagingList, PersonNetworkPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<PersonNetworkEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  PersonNetworkPagingList._();

  static void _initializeBuilder(PersonNetworkPagingListBuilder b) => b;

  factory PersonNetworkPagingList([void updates(PersonNetworkPagingListBuilder b)]) = _$PersonNetworkPagingList;
  static Serializer<PersonNetworkPagingList> get serializer => _$personNetworkPagingListSerializer;
}
