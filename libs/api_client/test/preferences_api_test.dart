import 'package:api_client/api.dart';
import 'package:api_client/api/preferences_api.dart';
import 'package:test/test.dart';

/// tests for PreferencesApi
void main() {
  final instance = ApiClient().getPreferencesApi();

  group(PreferencesApi, () {
    // Get a preference
    //
    // Gets a specific preference for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future<PreferenceEntry> getPreference(String personId, String preferenceName, { BuiltList<String> fields }) async
    test('test getPreference', () async {
      // TODO
    });

    // List preferences
    //
    // Gets a list of preferences for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user. Note that each preference consists of an **id** and a **value**.  The **value** can be of any JSON type.
    //
    //Future<PreferencePaging> listPreferences(String personId, { int skipCount, int maxItems, BuiltList<String> fields }) async
    test('test listPreferences', () async {
      // TODO
    });
  });
}
