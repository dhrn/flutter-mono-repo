//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/site_membership_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_membership_request_entry.g.dart';

abstract class SiteMembershipRequestEntry
    implements Built<SiteMembershipRequestEntry, SiteMembershipRequestEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  SiteMembershipRequest get entry;

  // Boilerplate code needed to wire-up generated code
  SiteMembershipRequestEntry._();

  static void _initializeBuilder(SiteMembershipRequestEntryBuilder b) => b;

  factory SiteMembershipRequestEntry([void updates(SiteMembershipRequestEntryBuilder b)]) =
      _$SiteMembershipRequestEntry;
  static Serializer<SiteMembershipRequestEntry> get serializer => _$siteMembershipRequestEntrySerializer;
}
