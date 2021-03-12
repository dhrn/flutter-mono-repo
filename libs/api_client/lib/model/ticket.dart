//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ticket.g.dart';

abstract class Ticket implements Built<Ticket, TicketBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'userId')
  String get userId;

  // Boilerplate code needed to wire-up generated code
  Ticket._();

  static void _initializeBuilder(TicketBuilder b) => b;

  factory Ticket([void updates(TicketBuilder b)]) = _$Ticket;
  static Serializer<Ticket> get serializer => _$ticketSerializer;
}
