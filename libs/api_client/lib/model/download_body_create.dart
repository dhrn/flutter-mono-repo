//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'download_body_create.g.dart';

abstract class DownloadBodyCreate implements Built<DownloadBodyCreate, DownloadBodyCreateBuilder> {
  @nullable
  @BuiltValueField(wireName: r'nodeIds')
  BuiltList<String> get nodeIds;

  // Boilerplate code needed to wire-up generated code
  DownloadBodyCreate._();

  static void _initializeBuilder(DownloadBodyCreateBuilder b) => b;

  factory DownloadBodyCreate([void updates(DownloadBodyCreateBuilder b)]) = _$DownloadBodyCreate;
  static Serializer<DownloadBodyCreate> get serializer => _$downloadBodyCreateSerializer;
}
