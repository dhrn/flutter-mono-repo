//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/user_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deleted_node_all_of.g.dart';

abstract class DeletedNodeAllOf implements Built<DeletedNodeAllOf, DeletedNodeAllOfBuilder> {
  @nullable
  @BuiltValueField(wireName: r'archivedByUser')
  UserInfo get archivedByUser;

  @nullable
  @BuiltValueField(wireName: r'archivedAt')
  DateTime get archivedAt;

  // Boilerplate code needed to wire-up generated code
  DeletedNodeAllOf._();

  static void _initializeBuilder(DeletedNodeAllOfBuilder b) => b;

  factory DeletedNodeAllOf([void updates(DeletedNodeAllOfBuilder b)]) = _$DeletedNodeAllOf;
  static Serializer<DeletedNodeAllOf> get serializer => _$deletedNodeAllOfSerializer;
}
