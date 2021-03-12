//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'valid_ticket.g.dart';

abstract class ValidTicket implements Built<ValidTicket, ValidTicketBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  // Boilerplate code needed to wire-up generated code
  ValidTicket._();

  static void _initializeBuilder(ValidTicketBuilder b) => b;

  factory ValidTicket([void updates(ValidTicketBuilder b)]) = _$ValidTicket;
  static Serializer<ValidTicket> get serializer => _$validTicketSerializer;
}
