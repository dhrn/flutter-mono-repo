//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/site_membership_request_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_membership_request_paging.g.dart';

abstract class SiteMembershipRequestPaging
    implements Built<SiteMembershipRequestPaging, SiteMembershipRequestPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  SiteMembershipRequestPagingList get list;

  // Boilerplate code needed to wire-up generated code
  SiteMembershipRequestPaging._();

  static void _initializeBuilder(SiteMembershipRequestPagingBuilder b) => b;

  factory SiteMembershipRequestPaging([void updates(SiteMembershipRequestPagingBuilder b)]) =
      _$SiteMembershipRequestPaging;
  static Serializer<SiteMembershipRequestPaging> get serializer => _$siteMembershipRequestPagingSerializer;
}
