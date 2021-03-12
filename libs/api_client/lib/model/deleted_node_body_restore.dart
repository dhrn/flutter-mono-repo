//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deleted_node_body_restore.g.dart';

abstract class DeletedNodeBodyRestore implements Built<DeletedNodeBodyRestore, DeletedNodeBodyRestoreBuilder> {
  @nullable
  @BuiltValueField(wireName: r'targetParentId')
  String get targetParentId;

  @nullable
  @BuiltValueField(wireName: r'assocType')
  String get assocType;

  // Boilerplate code needed to wire-up generated code
  DeletedNodeBodyRestore._();

  static void _initializeBuilder(DeletedNodeBodyRestoreBuilder b) => b;

  factory DeletedNodeBodyRestore([void updates(DeletedNodeBodyRestoreBuilder b)]) = _$DeletedNodeBodyRestore;
  static Serializer<DeletedNodeBodyRestore> get serializer => _$deletedNodeBodyRestoreSerializer;
}
