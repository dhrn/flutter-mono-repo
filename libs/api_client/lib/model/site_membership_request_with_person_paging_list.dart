//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:api_client/model/site_membership_request_with_person_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_membership_request_with_person_paging_list.g.dart';

abstract class SiteMembershipRequestWithPersonPagingList
    implements Built<SiteMembershipRequestWithPersonPagingList, SiteMembershipRequestWithPersonPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<SiteMembershipRequestWithPersonEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  SiteMembershipRequestWithPersonPagingList._();

  static void _initializeBuilder(SiteMembershipRequestWithPersonPagingListBuilder b) => b;

  factory SiteMembershipRequestWithPersonPagingList(
      [void updates(SiteMembershipRequestWithPersonPagingListBuilder b)]) = _$SiteMembershipRequestWithPersonPagingList;
  static Serializer<SiteMembershipRequestWithPersonPagingList> get serializer =>
      _$siteMembershipRequestWithPersonPagingListSerializer;
}
