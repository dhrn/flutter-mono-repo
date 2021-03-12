//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'capabilities.g.dart';

abstract class Capabilities implements Built<Capabilities, CapabilitiesBuilder> {
  @nullable
  @BuiltValueField(wireName: r'isAdmin')
  bool get isAdmin;

  @nullable
  @BuiltValueField(wireName: r'isGuest')
  bool get isGuest;

  @nullable
  @BuiltValueField(wireName: r'isMutable')
  bool get isMutable;

  // Boilerplate code needed to wire-up generated code
  Capabilities._();

  static void _initializeBuilder(CapabilitiesBuilder b) => b;

  factory Capabilities([void updates(CapabilitiesBuilder b)]) = _$Capabilities;
  static Serializer<Capabilities> get serializer => _$capabilitiesSerializer;
}
