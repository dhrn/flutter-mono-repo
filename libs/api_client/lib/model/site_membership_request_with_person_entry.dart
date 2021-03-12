//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/site_membership_request_with_person.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_membership_request_with_person_entry.g.dart';

abstract class SiteMembershipRequestWithPersonEntry
    implements Built<SiteMembershipRequestWithPersonEntry, SiteMembershipRequestWithPersonEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  SiteMembershipRequestWithPerson get entry;

  // Boilerplate code needed to wire-up generated code
  SiteMembershipRequestWithPersonEntry._();

  static void _initializeBuilder(SiteMembershipRequestWithPersonEntryBuilder b) => b;

  factory SiteMembershipRequestWithPersonEntry([void updates(SiteMembershipRequestWithPersonEntryBuilder b)]) =
      _$SiteMembershipRequestWithPersonEntry;
  static Serializer<SiteMembershipRequestWithPersonEntry> get serializer =>
      _$siteMembershipRequestWithPersonEntrySerializer;
}
