//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/person_network_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person_network_paging.g.dart';

abstract class PersonNetworkPaging implements Built<PersonNetworkPaging, PersonNetworkPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  PersonNetworkPagingList get list;

  // Boilerplate code needed to wire-up generated code
  PersonNetworkPaging._();

  static void _initializeBuilder(PersonNetworkPagingBuilder b) => b;

  factory PersonNetworkPaging([void updates(PersonNetworkPagingBuilder b)]) = _$PersonNetworkPaging;
  static Serializer<PersonNetworkPaging> get serializer => _$personNetworkPagingSerializer;
}
