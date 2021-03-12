import 'package:api_client/api.dart';
import 'package:api_client/api/versions_api.dart';
import 'package:test/test.dart';

/// tests for VersionsApi
void main() {
  final instance = ApiClient().getVersionsApi();

  group(VersionsApi, () {
    // Create rendition for a file version
    //
    // **Note:** this endpoint is available in Alfresco 7.0.0 and newer versions.  An asynchronous request to create a rendition for version of file **nodeId** and **versionId**.  The version rendition is specified by name **id** in the request body: ```JSON {   \"id\":\"doclib\" } ```   Multiple names may be specified as a comma separated list or using a list format: ```JSON [   {       \"id\": \"doclib\"   },   {       \"id\": \"avatar\"   } ] ```
    //
    //Future createVersionRendition(String nodeId, String versionId, RenditionBodyCreate renditionBodyCreate) async
    test('test createVersionRendition', () async {
      // TODO
    });

    // Delete a version
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Delete the version identified by **versionId** and **nodeId*.  If the version is successfully deleted then the content and metadata for that versioned node will be deleted and will no longer appear in the version history. This operation cannot be undone.  If the most recent version is deleted the live node will revert to the next most recent version.  We currently do not allow the last version to be deleted. If you wish to clear the history then you can remove the \"cm:versionable\" aspect (via update node) which will also disable versioning. In this case, you can re-enable versioning by adding back the \"cm:versionable\" aspect or using the version params (majorVersion and comment) on a subsequent file content update.
    //
    //Future deleteVersion(String nodeId, String versionId) async
    test('test deleteVersion', () async {
      // TODO
    });

    // Get version information
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the version information for **versionId** of file node **nodeId**.
    //
    //Future<VersionEntry> getVersion(String nodeId, String versionId) async
    test('test getVersion', () async {
      // TODO
    });

    // Get version content
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the version content for **versionId** of file node **nodeId**.
    //
    //Future<Uint8List> getVersionContent(String nodeId, String versionId, { bool attachment, DateTime ifModifiedSince, String range }) async
    test('test getVersionContent', () async {
      // TODO
    });

    // Get rendition information for a file version
    //
    // **Note:** this endpoint is available in Alfresco 7.0.0 and newer versions.  Gets the rendition information for **renditionId** of version of file **nodeId** and **versionId**.
    //
    //Future<RenditionEntry> getVersionRendition(String nodeId, String versionId, String renditionId) async
    test('test getVersionRendition', () async {
      // TODO
    });

    // Get rendition content for a file version
    //
    // **Note:** this endpoint is available in Alfresco 7.0.0 and newer versions.  Gets the rendition content for **renditionId** of version of file **nodeId** and **versionId**.
    //
    //Future<Uint8List> getVersionRenditionContent(String nodeId, String versionId, String renditionId, { bool attachment, DateTime ifModifiedSince, String range, bool placeholder }) async
    test('test getVersionRenditionContent', () async {
      // TODO
    });

    // List version history
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the version history as an ordered list of versions for the specified **nodeId**.  The list is ordered in descending modified order. So the most recent version is first and the original version is last in the list.
    //
    //Future<VersionPaging> listVersionHistory(String nodeId, { BuiltList<String> include, BuiltList<String> fields, int skipCount, int maxItems }) async
    test('test listVersionHistory', () async {
      // TODO
    });

    // List renditions for a file version
    //
    // **Note:** this endpoint is available in Alfresco 7.0.0 and newer versions.  Gets a list of the rendition information for each rendition of the version of file **nodeId** and **versionId**, including the rendition id.  Each rendition returned has a **status**: CREATED means it is available to view or download, NOT_CREATED means the rendition can be requested.  You can use the **where** parameter to filter the returned renditions by **status**. For example, the following **where** clause will return just the CREATED renditions:  ``` (status='CREATED') ```
    //
    //Future<RenditionPaging> listVersionRenditions(String nodeId, String versionId, { String where }) async
    test('test listVersionRenditions', () async {
      // TODO
    });

    // Revert a version
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Attempts to revert the version identified by **versionId** and **nodeId** to the live node.  If the node is successfully reverted then the content and metadata for that versioned node will be promoted to the live node and a new version will appear in the version history.
    //
    //Future<VersionEntry> revertVersion(String nodeId, String versionId, RevertBody revertBody, { BuiltList<String> fields }) async
    test('test revertVersion', () async {
      // TODO
    });
  });
}
