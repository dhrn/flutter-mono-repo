//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'download.g.dart';

abstract class Download implements Built<Download, DownloadBuilder> {
  /// number of files added so far in the zip
  @nullable
  @BuiltValueField(wireName: r'filesAdded')
  int get filesAdded;

  /// number of bytes added so far in the zip
  @nullable
  @BuiltValueField(wireName: r'bytesAdded')
  int get bytesAdded;

  /// the id of the download node
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  /// the total number of files to be added in the zip
  @nullable
  @BuiltValueField(wireName: r'totalFiles')
  int get totalFiles;

  /// the total number of bytes to be added in the zip
  @nullable
  @BuiltValueField(wireName: r'totalBytes')
  int get totalBytes;

  /// the current status of the download node creation
  @nullable
  @BuiltValueField(wireName: r'status')
  DownloadStatusEnum get status;
  // enum statusEnum {  PENDING,  CANCELLED,  IN_PROGRESS,  DONE,  MAX_CONTENT_SIZE_EXCEEDED,  };

  // Boilerplate code needed to wire-up generated code
  Download._();

  static void _initializeBuilder(DownloadBuilder b) => b..status = const DownloadStatusEnum._('PENDING');

  factory Download([void updates(DownloadBuilder b)]) = _$Download;
  static Serializer<Download> get serializer => _$downloadSerializer;
}

class DownloadStatusEnum extends EnumClass {
  /// the current status of the download node creation
  @BuiltValueEnumConst(wireName: r'PENDING')
  static const DownloadStatusEnum PENDING = _$downloadStatusEnum_PENDING;

  /// the current status of the download node creation
  @BuiltValueEnumConst(wireName: r'CANCELLED')
  static const DownloadStatusEnum CANCELLED = _$downloadStatusEnum_CANCELLED;

  /// the current status of the download node creation
  @BuiltValueEnumConst(wireName: r'IN_PROGRESS')
  static const DownloadStatusEnum IN_PROGRESS = _$downloadStatusEnum_IN_PROGRESS;

  /// the current status of the download node creation
  @BuiltValueEnumConst(wireName: r'DONE')
  static const DownloadStatusEnum DONE = _$downloadStatusEnum_DONE;

  /// the current status of the download node creation
  @BuiltValueEnumConst(wireName: r'MAX_CONTENT_SIZE_EXCEEDED')
  static const DownloadStatusEnum MAX_CONTENT_SIZE_EXCEEDED = _$downloadStatusEnum_MAX_CONTENT_SIZE_EXCEEDED;

  static Serializer<DownloadStatusEnum> get serializer => _$downloadStatusEnumSerializer;

  const DownloadStatusEnum._(String name) : super(name);

  static BuiltSet<DownloadStatusEnum> get values => _$downloadStatusEnumValues;
  static DownloadStatusEnum valueOf(String name) => _$downloadStatusEnumValueOf(name);
}
