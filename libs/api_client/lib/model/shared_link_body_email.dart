//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'shared_link_body_email.g.dart';

abstract class SharedLinkBodyEmail implements Built<SharedLinkBodyEmail, SharedLinkBodyEmailBuilder> {
  @nullable
  @BuiltValueField(wireName: r'client')
  String get client;

  @nullable
  @BuiltValueField(wireName: r'message')
  String get message;

  @nullable
  @BuiltValueField(wireName: r'locale')
  String get locale;

  @nullable
  @BuiltValueField(wireName: r'recipientEmails')
  BuiltList<String> get recipientEmails;

  // Boilerplate code needed to wire-up generated code
  SharedLinkBodyEmail._();

  static void _initializeBuilder(SharedLinkBodyEmailBuilder b) => b;

  factory SharedLinkBodyEmail([void updates(SharedLinkBodyEmailBuilder b)]) = _$SharedLinkBodyEmail;
  static Serializer<SharedLinkBodyEmail> get serializer => _$sharedLinkBodyEmailSerializer;
}
