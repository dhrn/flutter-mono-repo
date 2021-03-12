//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'direct_access_url.g.dart';

abstract class DirectAccessUrl implements Built<DirectAccessUrl, DirectAccessUrlBuilder> {
  /// The direct access URL of a binary content
  @nullable
  @BuiltValueField(wireName: r'contentUrl')
  String get contentUrl;

  /// The direct access URL would become invalid when the expiry date is reached
  @nullable
  @BuiltValueField(wireName: r'expiresAt')
  DateTime get expiresAt;

  // Boilerplate code needed to wire-up generated code
  DirectAccessUrl._();

  static void _initializeBuilder(DirectAccessUrlBuilder b) => b;

  factory DirectAccessUrl([void updates(DirectAccessUrlBuilder b)]) = _$DirectAccessUrl;
  static Serializer<DirectAccessUrl> get serializer => _$directAccessUrlSerializer;
}
