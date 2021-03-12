//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/site.dart';
import 'package:api_client/model/person.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_membership_request_with_person.g.dart';

abstract class SiteMembershipRequestWithPerson
    implements Built<SiteMembershipRequestWithPerson, SiteMembershipRequestWithPersonBuilder> {
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
  @BuiltValueField(wireName: r'person')
  Person get person;

  @nullable
  @BuiltValueField(wireName: r'message')
  String get message;

  // Boilerplate code needed to wire-up generated code
  SiteMembershipRequestWithPerson._();

  static void _initializeBuilder(SiteMembershipRequestWithPersonBuilder b) => b;

  factory SiteMembershipRequestWithPerson([void updates(SiteMembershipRequestWithPersonBuilder b)]) =
      _$SiteMembershipRequestWithPerson;
  static Serializer<SiteMembershipRequestWithPerson> get serializer => _$siteMembershipRequestWithPersonSerializer;
}
