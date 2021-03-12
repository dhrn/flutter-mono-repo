import 'package:api_client/api.dart';
import 'package:api_client/api/comments_api.dart';
import 'package:test/test.dart';

/// tests for CommentsApi
void main() {
  final instance = ApiClient().getCommentsApi();

  group(CommentsApi, () {
    // Create a comment
    //
    // Creates a comment on node **nodeId**. You specify the comment in a JSON body like this:  ```JSON {   \"content\": \"This is a comment\" } ```  **Note:** You can create more than one comment by specifying a list of comments in the JSON body like this:  ```JSON [   {     \"content\": \"This is a comment\"   },   {     \"content\": \"This is another comment\"   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ```
    //
    //Future<CommentEntry> createComment(String nodeId, CommentBody commentBodyCreate, { BuiltList<String> fields }) async
    test('test createComment', () async {
      // TODO
    });

    // Delete a comment
    //
    // Deletes the comment **commentId** from node **nodeId**.
    //
    //Future deleteComment(String nodeId, String commentId) async
    test('test deleteComment', () async {
      // TODO
    });

    // List comments
    //
    // Gets a list of comments for the node **nodeId**, sorted chronologically with the newest comment first.
    //
    //Future<CommentPaging> listComments(String nodeId, { int skipCount, int maxItems, BuiltList<String> fields }) async
    test('test listComments', () async {
      // TODO
    });

    // Update a comment
    //
    // Updates an existing comment **commentId** on node **nodeId**.
    //
    //Future<CommentEntry> updateComment(String nodeId, String commentId, CommentBody commentBodyUpdate, { BuiltList<String> fields }) async
    test('test updateComment', () async {
      // TODO
    });
  });
}
