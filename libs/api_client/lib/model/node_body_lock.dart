//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_body_lock.g.dart';

abstract class NodeBodyLock implements Built<NodeBodyLock, NodeBodyLockBuilder> {
  @nullable
  @BuiltValueField(wireName: r'timeToExpire')
  int get timeToExpire;

  @nullable
  @BuiltValueField(wireName: r'type')
  NodeBodyLockTypeEnum get type;
  // enum typeEnum {  ALLOW_OWNER_CHANGES,  FULL,  };

  @nullable
  @BuiltValueField(wireName: r'lifetime')
  NodeBodyLockLifetimeEnum get lifetime;
  // enum lifetimeEnum {  PERSISTENT,  EPHEMERAL,  };

  // Boilerplate code needed to wire-up generated code
  NodeBodyLock._();

  static void _initializeBuilder(NodeBodyLockBuilder b) => b
    ..type = const NodeBodyLockTypeEnum._('ALLOW_OWNER_CHANGES')
    ..lifetime = const NodeBodyLockLifetimeEnum._('PERSISTENT');

  factory NodeBodyLock([void updates(NodeBodyLockBuilder b)]) = _$NodeBodyLock;
  static Serializer<NodeBodyLock> get serializer => _$nodeBodyLockSerializer;
}

class NodeBodyLockTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ALLOW_OWNER_CHANGES')
  static const NodeBodyLockTypeEnum ALLOW_OWNER_CHANGES = _$nodeBodyLockTypeEnum_ALLOW_OWNER_CHANGES;
  @BuiltValueEnumConst(wireName: r'FULL')
  static const NodeBodyLockTypeEnum FULL = _$nodeBodyLockTypeEnum_FULL;

  static Serializer<NodeBodyLockTypeEnum> get serializer => _$nodeBodyLockTypeEnumSerializer;

  const NodeBodyLockTypeEnum._(String name) : super(name);

  static BuiltSet<NodeBodyLockTypeEnum> get values => _$nodeBodyLockTypeEnumValues;
  static NodeBodyLockTypeEnum valueOf(String name) => _$nodeBodyLockTypeEnumValueOf(name);
}

class NodeBodyLockLifetimeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PERSISTENT')
  static const NodeBodyLockLifetimeEnum PERSISTENT = _$nodeBodyLockLifetimeEnum_PERSISTENT;
  @BuiltValueEnumConst(wireName: r'EPHEMERAL')
  static const NodeBodyLockLifetimeEnum EPHEMERAL = _$nodeBodyLockLifetimeEnum_EPHEMERAL;

  static Serializer<NodeBodyLockLifetimeEnum> get serializer => _$nodeBodyLockLifetimeEnumSerializer;

  const NodeBodyLockLifetimeEnum._(String name) : super(name);

  static BuiltSet<NodeBodyLockLifetimeEnum> get values => _$nodeBodyLockLifetimeEnumValues;
  static NodeBodyLockLifetimeEnum valueOf(String name) => _$nodeBodyLockLifetimeEnumValueOf(name);
}
