import 'package:api_client/api.dart';
import 'package:api_client/api/networks_api.dart';
import 'package:test/test.dart';

/// tests for NetworksApi
void main() {
  final instance = ApiClient().getNetworksApi();

  group(NetworksApi, () {
    // Get a network
    //
    // Gets information for a network **networkId**.
    //
    //Future<PersonNetworkEntry> getNetwork(String networkId, { BuiltList<String> fields }) async
    test('test getNetwork', () async {
      // TODO
    });

    // Get network information
    //
    // Gets network information on a single network specified by **networkId** for **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future<PersonNetworkEntry> getNetworkForPerson(String personId, String networkId, { BuiltList<String> fields }) async
    test('test getNetworkForPerson', () async {
      // TODO
    });

    // List network membership
    //
    // Gets a list of network memberships for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future<PersonNetworkPaging> listNetworksForPerson(String personId, { int skipCount, int maxItems, BuiltList<String> fields }) async
    test('test listNetworksForPerson', () async {
      // TODO
    });
  });
}
