//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'network_quota.g.dart';

abstract class NetworkQuota implements Built<NetworkQuota, NetworkQuotaBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'limit')
  int get limit;

  @nullable
  @BuiltValueField(wireName: r'usage')
  int get usage;

  // Boilerplate code needed to wire-up generated code
  NetworkQuota._();

  static void _initializeBuilder(NetworkQuotaBuilder b) => b;

  factory NetworkQuota([void updates(NetworkQuotaBuilder b)]) = _$NetworkQuota;
  static Serializer<NetworkQuota> get serializer => _$networkQuotaSerializer;
}
