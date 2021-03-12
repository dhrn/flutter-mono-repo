import 'package:api_client/model/shared_link.dart';
import 'package:test/test.dart';

// tests for SharedLink
void main() {
  final instance = SharedLink();

  group(SharedLink, () {
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // DateTime expiresAt
    test('to test the property `expiresAt`', () async {
      // TODO
    });

    // String nodeId
    test('to test the property `nodeId`', () async {
      // TODO
    });

    // The name must not contain spaces or the following special characters: * \" < > \\ / ? : and |. The character . must not be used at the end of the name.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // String title
    test('to test the property `title`', () async {
      // TODO
    });

    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // DateTime modifiedAt
    test('to test the property `modifiedAt`', () async {
      // TODO
    });

    // UserInfo modifiedByUser
    test('to test the property `modifiedByUser`', () async {
      // TODO
    });

    // UserInfo sharedByUser
    test('to test the property `sharedByUser`', () async {
      // TODO
    });

    // ContentInfo content
    test('to test the property `content`', () async {
      // TODO
    });

    // The allowable operations for the Quickshare link itself. See allowableOperationsOnTarget for the allowable operations pertaining to the linked content node.
    // BuiltList<String> allowableOperations
    test('to test the property `allowableOperations`', () async {
      // TODO
    });

    // The allowable operations for the content node being shared.
    // BuiltList<String> allowableOperationsOnTarget
    test('to test the property `allowableOperationsOnTarget`', () async {
      // TODO
    });

    // bool isFavorite
    test('to test the property `isFavorite`', () async {
      // TODO
    });

    // A subset of the target node's properties, system properties and properties already available in the SharedLink are excluded.
    // JsonObject properties
    test('to test the property `properties`', () async {
      // TODO
    });

    // BuiltList<String> aspectNames
    test('to test the property `aspectNames`', () async {
      // TODO
    });
  });
}
