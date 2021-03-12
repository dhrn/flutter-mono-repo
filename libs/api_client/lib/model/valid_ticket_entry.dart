//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/valid_ticket.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'valid_ticket_entry.g.dart';

abstract class ValidTicketEntry implements Built<ValidTicketEntry, ValidTicketEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  ValidTicket get entry;

  // Boilerplate code needed to wire-up generated code
  ValidTicketEntry._();

  static void _initializeBuilder(ValidTicketEntryBuilder b) => b;

  factory ValidTicketEntry([void updates(ValidTicketEntryBuilder b)]) = _$ValidTicketEntry;
  static Serializer<ValidTicketEntry> get serializer => _$validTicketEntrySerializer;
}
