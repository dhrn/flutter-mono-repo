import 'package:api_client/model/pagination.dart';
import 'package:test/test.dart';

// tests for Pagination
void main() {
  final instance = Pagination();

  group(Pagination, () {
    // The number of objects in the entries array.
    // int count
    test('to test the property `count`', () async {
      // TODO
    });

    // A boolean value which is **true** if there are more entities in the collection beyond those in this response. A true value means a request with a larger value for the **skipCount** or the **maxItems** parameter will return more entities.
    // bool hasMoreItems
    test('to test the property `hasMoreItems`', () async {
      // TODO
    });

    // An integer describing the total number of entities in the collection. The API might not be able to determine this value, in which case this property will not be present.
    // int totalItems
    test('to test the property `totalItems`', () async {
      // TODO
    });

    // An integer describing how many entities exist in the collection before those included in this list. If there was no **skipCount** parameter then the default value is 0.
    // int skipCount
    test('to test the property `skipCount`', () async {
      // TODO
    });

    // The value of the **maxItems** parameter used to generate this list. If there was no **maxItems** parameter then the default value is 100.
    // int maxItems
    test('to test the property `maxItems`', () async {
      // TODO
    });
  });
}
