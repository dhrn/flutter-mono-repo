//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pagination.g.dart';

abstract class Pagination implements Built<Pagination, PaginationBuilder> {
  /// The number of objects in the entries array.
  @nullable
  @BuiltValueField(wireName: r'count')
  int get count;

  /// A boolean value which is **true** if there are more entities in the collection beyond those in this response. A true value means a request with a larger value for the **skipCount** or the **maxItems** parameter will return more entities.
  @nullable
  @BuiltValueField(wireName: r'hasMoreItems')
  bool get hasMoreItems;

  /// An integer describing the total number of entities in the collection. The API might not be able to determine this value, in which case this property will not be present.
  @nullable
  @BuiltValueField(wireName: r'totalItems')
  int get totalItems;

  /// An integer describing how many entities exist in the collection before those included in this list. If there was no **skipCount** parameter then the default value is 0.
  @nullable
  @BuiltValueField(wireName: r'skipCount')
  int get skipCount;

  /// The value of the **maxItems** parameter used to generate this list. If there was no **maxItems** parameter then the default value is 100.
  @nullable
  @BuiltValueField(wireName: r'maxItems')
  int get maxItems;

  // Boilerplate code needed to wire-up generated code
  Pagination._();

  static void _initializeBuilder(PaginationBuilder b) => b;

  factory Pagination([void updates(PaginationBuilder b)]) = _$Pagination;
  static Serializer<Pagination> get serializer => _$paginationSerializer;
}
