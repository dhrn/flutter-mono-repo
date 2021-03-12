import 'package:api_client/api.dart';
import 'package:api_client/api/activities_api.dart';
import 'package:test/test.dart';

/// tests for ActivitiesApi
void main() {
  final instance = ApiClient().getActivitiesApi();

  group(ActivitiesApi, () {
    // List activities
    //
    // Gets a list of activities for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future<ActivityPaging> listActivitiesForPerson(String personId, { int skipCount, int maxItems, String who, String siteId, BuiltList<String> fields }) async
    test('test listActivitiesForPerson', () async {
      // TODO
    });
  });
}
