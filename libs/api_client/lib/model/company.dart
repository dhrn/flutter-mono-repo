//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'company.g.dart';

abstract class Company implements Built<Company, CompanyBuilder> {
  @nullable
  @BuiltValueField(wireName: r'organization')
  String get organization;

  @nullable
  @BuiltValueField(wireName: r'address1')
  String get address1;

  @nullable
  @BuiltValueField(wireName: r'address2')
  String get address2;

  @nullable
  @BuiltValueField(wireName: r'address3')
  String get address3;

  @nullable
  @BuiltValueField(wireName: r'postcode')
  String get postcode;

  @nullable
  @BuiltValueField(wireName: r'telephone')
  String get telephone;

  @nullable
  @BuiltValueField(wireName: r'fax')
  String get fax;

  @nullable
  @BuiltValueField(wireName: r'email')
  String get email;

  // Boilerplate code needed to wire-up generated code
  Company._();

  static void _initializeBuilder(CompanyBuilder b) => b;

  factory Company([void updates(CompanyBuilder b)]) = _$Company;
  static Serializer<Company> get serializer => _$companySerializer;
}
