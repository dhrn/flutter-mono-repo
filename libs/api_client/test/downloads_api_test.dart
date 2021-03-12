import 'package:api_client/api.dart';
import 'package:api_client/api/downloads_api.dart';
import 'package:test/test.dart';

/// tests for DownloadsApi
void main() {
  final instance = ApiClient().getDownloadsApi();

  group(DownloadsApi, () {
    // Cancel a download
    //
    // **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Cancels the creation of a download request.  **Note:** The download node can be deleted using the **DELETE /nodes/{downloadId}** endpoint  By default, if the download node is not deleted it will be picked up by a cleaner job which removes download nodes older than a configurable amount of time (default is 1 hour)  Information about the existing progress at the time of cancelling can be retrieved by calling the **GET /downloads/{downloadId}** endpoint  The cancel operation is done asynchronously.
    //
    //Future cancelDownload(String downloadId) async
    test('test cancelDownload', () async {
      // TODO
    });

    // Create a new download
    //
    // **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Creates a new download node asynchronously, the content of which will be the zipped content of the **nodeIds** specified in the JSON body like this:  ```JSON {     \"nodeIds\":      [        \"c8bb482a-ff3c-4704-a3a3-de1c83ccd84c\",        \"cffa62db-aa01-493d-9594-058bc058eeb1\"      ] } ```  **Note:** The content of the download node can be obtained using the **GET /nodes/{downloadId}/content** endpoint
    //
    //Future<DownloadEntry> createDownload(DownloadBodyCreate downloadBodyCreate, { BuiltList<String> fields }) async
    test('test createDownload', () async {
      // TODO
    });

    // Get a download
    //
    // **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Retrieve status information for download node **downloadId**
    //
    //Future<DownloadEntry> getDownload(String downloadId, { BuiltList<String> fields }) async
    test('test getDownload', () async {
      // TODO
    });
  });
}
