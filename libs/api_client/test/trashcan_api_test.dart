import 'package:api_client/api.dart';
import 'package:api_client/api/trashcan_api.dart';
import 'package:test/test.dart';

/// tests for TrashcanApi
void main() {
  final instance = ApiClient().getTrashcanApi();

  group(TrashcanApi, () {
    // Permanently delete a deleted node
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Permanently deletes the deleted node **nodeId**.
    //
    //Future deleteDeletedNode(String nodeId) async
    test('test deleteDeletedNode', () async {
      // TODO
    });

    // Get rendition information for a deleted node
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the rendition information for **renditionId** of file **nodeId**.
    //
    //Future<RenditionEntry> getArchivedNodeRendition(String nodeId, String renditionId) async
    test('test getArchivedNodeRendition', () async {
      // TODO
    });

    // Get rendition content of a deleted node
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the rendition content for **renditionId** of file **nodeId**.
    //
    //Future<Uint8List> getArchivedNodeRenditionContent(String nodeId, String renditionId, { bool attachment, DateTime ifModifiedSince, String range, bool placeholder }) async
    test('test getArchivedNodeRenditionContent', () async {
      // TODO
    });

    // Get a deleted node
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the specific deleted node **nodeId**.
    //
    //Future<DeletedNodeEntry> getDeletedNode(String nodeId, { BuiltList<String> include }) async
    test('test getDeletedNode', () async {
      // TODO
    });

    // Get deleted node content
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the content of the deleted node with identifier **nodeId**.
    //
    //Future<Uint8List> getDeletedNodeContent(String nodeId, { bool attachment, DateTime ifModifiedSince, String range }) async
    test('test getDeletedNodeContent', () async {
      // TODO
    });

    // List renditions for a deleted node
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of the rendition information for each rendition of the file **nodeId**, including the rendition id.  Each rendition returned has a **status**: CREATED means it is available to view or download, NOT_CREATED means the rendition can be requested.  You can use the **where** parameter to filter the returned renditions by **status**. For example, the following **where** clause will return just the CREATED renditions:  ``` (status='CREATED') ```
    //
    //Future<RenditionPaging> listDeletedNodeRenditions(String nodeId, { String where }) async
    test('test listDeletedNodeRenditions', () async {
      // TODO
    });

    // List deleted nodes
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of deleted nodes for the current user.  If the current user is an administrator deleted nodes for all users will be returned.  The list of deleted nodes will be ordered with the most recently deleted node at the top of the list.
    //
    //Future<DeletedNodesPaging> listDeletedNodes({ int skipCount, int maxItems, BuiltList<String> include }) async
    test('test listDeletedNodes', () async {
      // TODO
    });

    // Restore a deleted node
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Attempts to restore the deleted node **nodeId** to its original location or to a new location.  If the node is successfully restored to its former primary parent, then only the primary child association will be restored, including recursively for any primary children. It should be noted that no other secondary child associations or peer associations will be restored, for any of the nodes within the primary parent-child hierarchy of restored nodes, irrespective of whether these associations were to nodes within or outside of the restored hierarchy.  Also, any previously shared link will not be restored since it is deleted at the time of delete of each node.
    //
    //Future<NodeEntry> restoreDeletedNode(String nodeId, { BuiltList<String> fields, DeletedNodeBodyRestore deletedNodeBodyRestore }) async
    test('test restoreDeletedNode', () async {
      // TODO
    });
  });
}
