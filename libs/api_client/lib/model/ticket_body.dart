//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ticket_body.g.dart';

abstract class TicketBody implements Built<TicketBody, TicketBodyBuilder> {
  @nullable
  @BuiltValueField(wireName: r'userId')
  String get userId;

  @nullable
  @BuiltValueField(wireName: r'password')
  String get password;

  // Boilerplate code needed to wire-up generated code
  TicketBody._();

  static void _initializeBuilder(TicketBodyBuilder b) => b;

  factory TicketBody([void updates(TicketBodyBuilder b)]) = _$TicketBody;
  static Serializer<TicketBody> get serializer => _$ticketBodySerializer;
}
