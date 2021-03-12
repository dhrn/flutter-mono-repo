import 'package:api_client/api.dart';
import 'package:api_client/api/probes_api.dart';
import 'package:test/test.dart';

/// tests for ProbesApi
void main() {
  final instance = ApiClient().getProbesApi();

  group(ProbesApi, () {
    // Check readiness and liveness of the repository
    //
    // **Note:** this endpoint is available in Alfresco 6.0 and newer versions.  Returns a status of 200 to indicate success and 503 for failure.  The readiness probe is normally only used to check repository startup.  The liveness probe should then be used to check the repository is still responding to requests.  **Note:** No authentication is required to call this endpoint.
    //
    //Future<ProbeEntry> getProbe(String probeId) async
    test('test getProbe', () async {
      // TODO
    });
  });
}
