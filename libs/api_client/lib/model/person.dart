//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/company.dart';
import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/capabilities.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person.g.dart';

abstract class Person implements Built<Person, PersonBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'firstName')
  String get firstName;

  @nullable
  @BuiltValueField(wireName: r'lastName')
  String get lastName;

  @nullable
  @BuiltValueField(wireName: r'displayName')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: r'description')
  String get description;

  @nullable
  @BuiltValueField(wireName: r'avatarId')
  String get avatarId;

  @nullable
  @BuiltValueField(wireName: r'email')
  String get email;

  @nullable
  @BuiltValueField(wireName: r'skypeId')
  String get skypeId;

  @nullable
  @BuiltValueField(wireName: r'googleId')
  String get googleId;

  @nullable
  @BuiltValueField(wireName: r'instantMessageId')
  String get instantMessageId;

  @nullable
  @BuiltValueField(wireName: r'jobTitle')
  String get jobTitle;

  @nullable
  @BuiltValueField(wireName: r'location')
  String get location;

  @nullable
  @BuiltValueField(wireName: r'company')
  Company get company;

  @nullable
  @BuiltValueField(wireName: r'mobile')
  String get mobile;

  @nullable
  @BuiltValueField(wireName: r'telephone')
  String get telephone;

  @nullable
  @BuiltValueField(wireName: r'statusUpdatedAt')
  DateTime get statusUpdatedAt;

  @nullable
  @BuiltValueField(wireName: r'userStatus')
  String get userStatus;

  @nullable
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @nullable
  @BuiltValueField(wireName: r'emailNotificationsEnabled')
  bool get emailNotificationsEnabled;

  @nullable
  @BuiltValueField(wireName: r'aspectNames')
  BuiltList<String> get aspectNames;

  @nullable
  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, String> get properties;

  @nullable
  @BuiltValueField(wireName: r'capabilities')
  Capabilities get capabilities;

  // Boilerplate code needed to wire-up generated code
  Person._();

  static void _initializeBuilder(PersonBuilder b) => b
    ..enabled = true
    ..emailNotificationsEnabled = true;

  factory Person([void updates(PersonBuilder b)]) = _$Person;
  static Serializer<Person> get serializer => _$personSerializer;
}
