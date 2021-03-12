import 'package:api_client/api.dart';
import 'package:api_client/api/shared_links_api.dart';
import 'package:test/test.dart';

/// tests for SharedLinksApi
void main() {
  final instance = ApiClient().getSharedLinksApi();

  group(SharedLinksApi, () {
    // Create a shared link to a file
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Create a shared link to the file **nodeId** in the request body. Also, an optional expiry date could be set, so the shared link would become invalid when the expiry date is reached. For example:  ```JSON   {     \"nodeId\": \"1ff9da1a-ee2f-4b9c-8c34-3333333333\",     \"expiresAt\": \"2017-03-23T23:00:00.000+0000\"   } ```  **Note:** You can create shared links to more than one file specifying a list of **nodeId**s in the JSON body like this:  ```JSON [   {     \"nodeId\": \"1ff9da1a-ee2f-4b9c-8c34-4444444444\"   },   {     \"nodeId\": \"1ff9da1a-ee2f-4b9c-8c34-5555555555\"   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ```
    //
    //Future<SharedLinkEntry> createSharedLink(SharedLinkBodyCreate sharedLinkBodyCreate, { BuiltList<String> include, BuiltList<String> fields }) async
    test('test createSharedLink', () async {
      // TODO
    });

    // Deletes a shared link
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Deletes the shared link with identifier **sharedId**.
    //
    //Future deleteSharedLink(String sharedId) async
    test('test deleteSharedLink', () async {
      // TODO
    });

    // Email shared link
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Sends email with app-specific url including identifier **sharedId**.  The client and recipientEmails properties are mandatory in the request body. For example, to email a shared link with minimum info: ```JSON {     \"client\": \"myClient\",     \"recipientEmails\": [\"john.doe@acme.com\", \"joe.bloggs@acme.com\"] } ``` A plain text message property can be optionally provided in the request body to customise the sent email. Also, a locale property can be optionally provided in the request body to send the emails in a particular language (if the locale is supported by Alfresco). For example, to email a shared link with a messages and a locale: ```JSON {     \"client\": \"myClient\",     \"recipientEmails\": [\"john.doe@acme.com\", \"joe.bloggs@acme.com\"],     \"message\": \"myMessage\",     \"locale\":\"en-GB\" } ``` **Note:** The client must be registered before you can send a shared link email. See [server documentation]. However, out-of-the-box  share is registered as a default client, so you could pass **share** as the client name: ```JSON {     \"client\": \"share\",     \"recipientEmails\": [\"john.doe@acme.com\"] } ```
    //
    //Future emailSharedLink(String sharedId, SharedLinkBodyEmail sharedLinkBodyEmail) async
    test('test emailSharedLink', () async {
      // TODO
    });

    // Get a shared link
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets minimal information for the file with shared link identifier **sharedId**.  **Note:** No authentication is required to call this endpoint.
    //
    //Future<SharedLinkEntry> getSharedLink(String sharedId, { BuiltList<String> fields }) async
    test('test getSharedLink', () async {
      // TODO
    });

    // Get shared link content
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the content of the file with shared link identifier **sharedId**.  **Note:** No authentication is required to call this endpoint.
    //
    //Future<Uint8List> getSharedLinkContent(String sharedId, { bool attachment, DateTime ifModifiedSince, String range }) async
    test('test getSharedLinkContent', () async {
      // TODO
    });

    // Get shared link rendition information
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets rendition information for the file with shared link identifier **sharedId**.  This API method returns rendition information where the rendition status is CREATED, which means the rendition is available to view/download.  **Note:** No authentication is required to call this endpoint.
    //
    //Future<RenditionEntry> getSharedLinkRendition(String sharedId, String renditionId) async
    test('test getSharedLinkRendition', () async {
      // TODO
    });

    // Get shared link rendition content
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the rendition content for file with shared link identifier **sharedId**.  **Note:** No authentication is required to call this endpoint.
    //
    //Future<Uint8List> getSharedLinkRenditionContent(String sharedId, String renditionId, { bool attachment, DateTime ifModifiedSince, String range }) async
    test('test getSharedLinkRenditionContent', () async {
      // TODO
    });

    // List renditions for a shared link
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of the rendition information for the file with shared link identifier **sharedId**.  This API method returns rendition information, including the rendition id, for each rendition where the rendition status is CREATED, which means the rendition is available to view/download.  **Note:** No authentication is required to call this endpoint.
    //
    //Future<RenditionPaging> listSharedLinkRenditions(String sharedId) async
    test('test listSharedLinkRenditions', () async {
      // TODO
    });

    // List shared links
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Get a list of links that the current user has read permission on source node.  The list is ordered in descending modified order.  **Note:** The list of links is eventually consistent so newly created shared links may not appear immediately.
    //
    //Future<SharedLinkPaging> listSharedLinks({ int skipCount, int maxItems, String where, BuiltList<String> include, BuiltList<String> fields }) async
    test('test listSharedLinks', () async {
      // TODO
    });
  });
}
