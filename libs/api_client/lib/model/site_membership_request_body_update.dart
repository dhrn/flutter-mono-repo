//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_membership_request_body_update.g.dart';

abstract class SiteMembershipRequestBodyUpdate
    implements Built<SiteMembershipRequestBodyUpdate, SiteMembershipRequestBodyUpdateBuilder> {
  @nullable
  @BuiltValueField(wireName: r'message')
  String get message;

  // Boilerplate code needed to wire-up generated code
  SiteMembershipRequestBodyUpdate._();

  static void _initializeBuilder(SiteMembershipRequestBodyUpdateBuilder b) => b;

  factory SiteMembershipRequestBodyUpdate([void updates(SiteMembershipRequestBodyUpdateBuilder b)]) =
      _$SiteMembershipRequestBodyUpdate;
  static Serializer<SiteMembershipRequestBodyUpdate> get serializer => _$siteMembershipRequestBodyUpdateSerializer;
}
