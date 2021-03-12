//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/site_membership_request_with_person_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_membership_request_with_person_paging.g.dart';

abstract class SiteMembershipRequestWithPersonPaging
    implements Built<SiteMembershipRequestWithPersonPaging, SiteMembershipRequestWithPersonPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  SiteMembershipRequestWithPersonPagingList get list;

  // Boilerplate code needed to wire-up generated code
  SiteMembershipRequestWithPersonPaging._();

  static void _initializeBuilder(SiteMembershipRequestWithPersonPagingBuilder b) => b;

  factory SiteMembershipRequestWithPersonPaging([void updates(SiteMembershipRequestWithPersonPagingBuilder b)]) =
      _$SiteMembershipRequestWithPersonPaging;
  static Serializer<SiteMembershipRequestWithPersonPaging> get serializer =>
      _$siteMembershipRequestWithPersonPagingSerializer;
}
