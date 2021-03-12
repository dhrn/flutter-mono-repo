//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_membership_rejection_body.g.dart';

abstract class SiteMembershipRejectionBody
    implements Built<SiteMembershipRejectionBody, SiteMembershipRejectionBodyBuilder> {
  @nullable
  @BuiltValueField(wireName: r'comment')
  String get comment;

  // Boilerplate code needed to wire-up generated code
  SiteMembershipRejectionBody._();

  static void _initializeBuilder(SiteMembershipRejectionBodyBuilder b) => b;

  factory SiteMembershipRejectionBody([void updates(SiteMembershipRejectionBodyBuilder b)]) =
      _$SiteMembershipRejectionBody;
  static Serializer<SiteMembershipRejectionBody> get serializer => _$siteMembershipRejectionBodySerializer;
}
