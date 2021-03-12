//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/site.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_membership_request.g.dart';

abstract class SiteMembershipRequest implements Built<SiteMembershipRequest, SiteMembershipRequestBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @nullable
  @BuiltValueField(wireName: r'site')
  Site get site;

  @nullable
  @BuiltValueField(wireName: r'message')
  String get message;

  // Boilerplate code needed to wire-up generated code
  SiteMembershipRequest._();

  static void _initializeBuilder(SiteMembershipRequestBuilder b) => b;

  factory SiteMembershipRequest([void updates(SiteMembershipRequestBuilder b)]) = _$SiteMembershipRequest;
  static Serializer<SiteMembershipRequest> get serializer => _$siteMembershipRequestSerializer;
}
