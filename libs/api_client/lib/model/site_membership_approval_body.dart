//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_membership_approval_body.g.dart';

abstract class SiteMembershipApprovalBody
    implements Built<SiteMembershipApprovalBody, SiteMembershipApprovalBodyBuilder> {
  @nullable
  @BuiltValueField(wireName: r'role')
  String get role;

  // Boilerplate code needed to wire-up generated code
  SiteMembershipApprovalBody._();

  static void _initializeBuilder(SiteMembershipApprovalBodyBuilder b) => b;

  factory SiteMembershipApprovalBody([void updates(SiteMembershipApprovalBodyBuilder b)]) =
      _$SiteMembershipApprovalBody;
  static Serializer<SiteMembershipApprovalBody> get serializer => _$siteMembershipApprovalBodySerializer;
}
