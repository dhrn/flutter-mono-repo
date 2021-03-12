//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'action_body_exec.g.dart';

abstract class ActionBodyExec implements Built<ActionBodyExec, ActionBodyExecBuilder> {
  @nullable
  @BuiltValueField(wireName: r'actionDefinitionId')
  String get actionDefinitionId;

  /// The entity upon which to execute the action, typically a node ID or similar.
  @nullable
  @BuiltValueField(wireName: r'targetId')
  String get targetId;

  @nullable
  @BuiltValueField(wireName: r'params')
  JsonObject get params;

  // Boilerplate code needed to wire-up generated code
  ActionBodyExec._();

  static void _initializeBuilder(ActionBodyExecBuilder b) => b;

  factory ActionBodyExec([void updates(ActionBodyExecBuilder b)]) = _$ActionBodyExec;
  static Serializer<ActionBodyExec> get serializer => _$actionBodyExecSerializer;
}
