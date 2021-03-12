//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_container.g.dart';

abstract class SiteContainer implements Built<SiteContainer, SiteContainerBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'folderId')
  String get folderId;

  // Boilerplate code needed to wire-up generated code
  SiteContainer._();

  static void _initializeBuilder(SiteContainerBuilder b) => b;

  factory SiteContainer([void updates(SiteContainerBuilder b)]) = _$SiteContainer;
  static Serializer<SiteContainer> get serializer => _$siteContainerSerializer;
}
