//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_membership_request_body_create.g.dart';

abstract class SiteMembershipRequestBodyCreate
    implements Built<SiteMembershipRequestBodyCreate, SiteMembershipRequestBodyCreateBuilder> {
  @nullable
  @BuiltValueField(wireName: r'message')
  String get message;

  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  /// Optional client name used when sending an email to the end user, defaults to \"share\" if not provided. **Note:** The client must be registered before this API can send an email. **Note:** This is available in Alfresco 7.0.0 and newer versions.
  @nullable
  @BuiltValueField(wireName: r'client')
  String get client;

  // Boilerplate code needed to wire-up generated code
  SiteMembershipRequestBodyCreate._();

  static void _initializeBuilder(SiteMembershipRequestBodyCreateBuilder b) => b;

  factory SiteMembershipRequestBodyCreate([void updates(SiteMembershipRequestBodyCreateBuilder b)]) =
      _$SiteMembershipRequestBodyCreate;
  static Serializer<SiteMembershipRequestBodyCreate> get serializer => _$siteMembershipRequestBodyCreateSerializer;
}
