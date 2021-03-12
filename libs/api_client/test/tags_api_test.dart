import 'package:api_client/api.dart';
import 'package:api_client/api/tags_api.dart';
import 'package:test/test.dart';

/// tests for TagsApi
void main() {
  final instance = ApiClient().getTagsApi();

  group(TagsApi, () {
    // Create a tag for a node
    //
    // Creates a tag on the node **nodeId**. You specify the tag in a JSON body like this:  ```JSON {   \"tag\":\"test-tag-1\" } ```  **Note:** You can create more than one tag by specifying a list of tags in the JSON body like this:  ```JSON [   {     \"tag\":\"test-tag-1\"   },   {     \"tag\":\"test-tag-2\"   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {          ...         }       }     ]   } } ```
    //
    //Future<TagEntry> createTagForNode(String nodeId, BuiltList<TagBody> tagBodyCreate, { BuiltList<String> fields }) async
    test('test createTagForNode', () async {
      // TODO
    });

    // Delete a tag from a node
    //
    // Deletes tag **tagId** from node **nodeId**.
    //
    //Future deleteTagFromNode(String nodeId, String tagId) async
    test('test deleteTagFromNode', () async {
      // TODO
    });

    // Get a tag
    //
    // Get a specific tag with **tagId**.
    //
    //Future<TagEntry> getTag(String tagId, { BuiltList<String> fields }) async
    test('test getTag', () async {
      // TODO
    });

    // List tags
    //
    // Gets a list of tags in this repository.  You can use the **include** parameter to return additional **values** information.
    //
    //Future<TagPaging> listTags({ int skipCount, int maxItems, BuiltList<String> fields, BuiltList<String> include }) async
    test('test listTags', () async {
      // TODO
    });

    // List tags for a node
    //
    // Gets a list of tags for node **nodeId**.
    //
    //Future<TagPaging> listTagsForNode(String nodeId, { int skipCount, int maxItems, BuiltList<String> fields }) async
    test('test listTagsForNode', () async {
      // TODO
    });

    // Update a tag
    //
    // Updates the tag **tagId**.
    //
    //Future<TagEntry> updateTag(String tagId, TagBody tagBodyUpdate, { BuiltList<String> fields }) async
    test('test updateTag', () async {
      // TODO
    });
  });
}
