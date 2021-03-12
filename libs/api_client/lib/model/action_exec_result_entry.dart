//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/action_exec_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'action_exec_result_entry.g.dart';

abstract class ActionExecResultEntry implements Built<ActionExecResultEntry, ActionExecResultEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  ActionExecResult get entry;

  // Boilerplate code needed to wire-up generated code
  ActionExecResultEntry._();

  static void _initializeBuilder(ActionExecResultEntryBuilder b) => b;

  factory ActionExecResultEntry([void updates(ActionExecResultEntryBuilder b)]) = _$ActionExecResultEntry;
  static Serializer<ActionExecResultEntry> get serializer => _$actionExecResultEntrySerializer;
}
