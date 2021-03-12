//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'client_body.g.dart';

abstract class ClientBody implements Built<ClientBody, ClientBodyBuilder> {
  /// the client name
  @nullable
  @BuiltValueField(wireName: r'client')
  String get client;

  // Boilerplate code needed to wire-up generated code
  ClientBody._();

  static void _initializeBuilder(ClientBodyBuilder b) => b;

  factory ClientBody([void updates(ClientBodyBuilder b)]) = _$ClientBody;
  static Serializer<ClientBody> get serializer => _$clientBodySerializer;
}
