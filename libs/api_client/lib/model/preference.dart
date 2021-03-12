//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'preference.g.dart';

abstract class Preference implements Built<Preference, PreferenceBuilder> {
  /// The unique id of the preference
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The value of the preference. Note that this can be of any JSON type.
  @nullable
  @BuiltValueField(wireName: r'value')
  String get value;

  // Boilerplate code needed to wire-up generated code
  Preference._();

  static void _initializeBuilder(PreferenceBuilder b) => b;

  factory Preference([void updates(PreferenceBuilder b)]) = _$Preference;
  static Serializer<Preference> get serializer => _$preferenceSerializer;
}
