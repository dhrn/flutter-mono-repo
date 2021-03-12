//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/download.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'download_entry.g.dart';

abstract class DownloadEntry implements Built<DownloadEntry, DownloadEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  Download get entry;

  // Boilerplate code needed to wire-up generated code
  DownloadEntry._();

  static void _initializeBuilder(DownloadEntryBuilder b) => b;

  factory DownloadEntry([void updates(DownloadEntryBuilder b)]) = _$DownloadEntry;
  static Serializer<DownloadEntry> get serializer => _$downloadEntrySerializer;
}
