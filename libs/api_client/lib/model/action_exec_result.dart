//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'action_exec_result.g.dart';

abstract class ActionExecResult implements Built<ActionExecResult, ActionExecResultBuilder> {
  /// The unique identifier of the action pending execution
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  // Boilerplate code needed to wire-up generated code
  ActionExecResult._();

  static void _initializeBuilder(ActionExecResultBuilder b) => b;

  factory ActionExecResult([void updates(ActionExecResultBuilder b)]) = _$ActionExecResult;
  static Serializer<ActionExecResult> get serializer => _$actionExecResultSerializer;
}
