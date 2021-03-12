//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/ticket.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ticket_entry.g.dart';

abstract class TicketEntry implements Built<TicketEntry, TicketEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  Ticket get entry;

  // Boilerplate code needed to wire-up generated code
  TicketEntry._();

  static void _initializeBuilder(TicketEntryBuilder b) => b;

  factory TicketEntry([void updates(TicketEntryBuilder b)]) = _$TicketEntry;
  static Serializer<TicketEntry> get serializer => _$ticketEntrySerializer;
}
