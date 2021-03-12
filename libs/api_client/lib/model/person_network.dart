//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/network_quota.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person_network.g.dart';

abstract class PersonNetwork implements Built<PersonNetwork, PersonNetworkBuilder> {
  /// This network's unique id
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Is this the home network?
  @nullable
  @BuiltValueField(wireName: r'homeNetwork')
  bool get homeNetwork;

  @nullable
  @BuiltValueField(wireName: r'isEnabled')
  bool get isEnabled;

  @nullable
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @nullable
  @BuiltValueField(wireName: r'paidNetwork')
  bool get paidNetwork;

  @nullable
  @BuiltValueField(wireName: r'subscriptionLevel')
  PersonNetworkSubscriptionLevelEnum get subscriptionLevel;
  // enum subscriptionLevelEnum {  Free,  Standard,  Enterprise,  };

  @nullable
  @BuiltValueField(wireName: r'quotas')
  BuiltList<NetworkQuota> get quotas;

  // Boilerplate code needed to wire-up generated code
  PersonNetwork._();

  static void _initializeBuilder(PersonNetworkBuilder b) => b;

  factory PersonNetwork([void updates(PersonNetworkBuilder b)]) = _$PersonNetwork;
  static Serializer<PersonNetwork> get serializer => _$personNetworkSerializer;
}

class PersonNetworkSubscriptionLevelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Free')
  static const PersonNetworkSubscriptionLevelEnum free = _$personNetworkSubscriptionLevelEnum_free;
  @BuiltValueEnumConst(wireName: r'Standard')
  static const PersonNetworkSubscriptionLevelEnum standard = _$personNetworkSubscriptionLevelEnum_standard;
  @BuiltValueEnumConst(wireName: r'Enterprise')
  static const PersonNetworkSubscriptionLevelEnum enterprise = _$personNetworkSubscriptionLevelEnum_enterprise;

  static Serializer<PersonNetworkSubscriptionLevelEnum> get serializer =>
      _$personNetworkSubscriptionLevelEnumSerializer;

  const PersonNetworkSubscriptionLevelEnum._(String name) : super(name);

  static BuiltSet<PersonNetworkSubscriptionLevelEnum> get values => _$personNetworkSubscriptionLevelEnumValues;
  static PersonNetworkSubscriptionLevelEnum valueOf(String name) => _$personNetworkSubscriptionLevelEnumValueOf(name);
}
