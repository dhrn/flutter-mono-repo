import 'package:api_client/api.dart';
import 'package:api_client/api/renditions_api.dart';
import 'package:test/test.dart';

/// tests for RenditionsApi
void main() {
  final instance = ApiClient().getRenditionsApi();

  group(RenditionsApi, () {
    // Create rendition
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  An asynchronous request to create a rendition for file **nodeId**.  The rendition is specified by name **id** in the request body: ```JSON {   \"id\":\"doclib\" } ```  Multiple names may be specified as a comma separated list or using a list format: ```JSON [   {      \"id\": \"doclib\"   },   {      \"id\": \"avatar\"   } ] ```
    //
    //Future createRendition(String nodeId, RenditionBodyCreate renditionBodyCreate) async
    test('test createRendition', () async {
      // TODO
    });

    // Get rendition information
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the rendition information for **renditionId** of file **nodeId**.
    //
    //Future<RenditionEntry> getRendition(String nodeId, String renditionId) async
    test('test getRendition', () async {
      // TODO
    });

    // Get rendition content
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the rendition content for **renditionId** of file **nodeId**.
    //
    //Future<Uint8List> getRenditionContent(String nodeId, String renditionId, { bool attachment, DateTime ifModifiedSince, String range, bool placeholder }) async
    test('test getRenditionContent', () async {
      // TODO
    });

    // List renditions
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of the rendition information for each rendition of the the file **nodeId**, including the rendition id.  Each rendition returned has a **status**: CREATED means it is available to view or download, NOT_CREATED means the rendition can be requested.  You can use the **where** parameter to filter the returned renditions by **status**. For example, the following **where** clause will return just the CREATED renditions:  ``` (status='CREATED') ```
    //
    //Future<RenditionPaging> listRenditions(String nodeId, { String where }) async
    test('test listRenditions', () async {
      // TODO
    });
  });
}
