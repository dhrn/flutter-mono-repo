import 'package:api_client/api.dart';
import 'package:api_client/api/people_api.dart';
import 'package:test/test.dart';

/// tests for PeopleApi
void main() {
  final instance = ApiClient().getPeopleApi();

  group(PeopleApi, () {
    // Create person
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Create a person.  If applicable, the given person's login access can also be optionally disabled.  You must have admin rights to create a person.  You can set custom properties when you create a person: ```JSON {   \"id\": \"abeecher\",   \"firstName\": \"Alice\",   \"lastName\": \"Beecher\",   \"displayName\": \"Alice Beecher\",   \"email\": \"abeecher@example.com\",   \"password\": \"secret\",   \"properties\":   {     \"my:property\": \"The value\"   } } ``` **Note:** setting properties of type d:content and d:category are not supported.
    //
    //Future<PersonEntry> createPerson(PersonBodyCreate personBodyCreate, { BuiltList<String> fields }) async
    test('test createPerson', () async {
      // TODO
    });

    // Delete avatar image
    //
    // **Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Deletes the avatar image related to person **personId**.  You must be the person or have admin rights to update a person's avatar.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future deleteAvatarImage(String personId) async
    test('test deleteAvatarImage', () async {
      // TODO
    });

    // Get avatar image
    //
    // **Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Gets the avatar image related to the person **personId**. If the person has no related avatar then the **placeholder** query parameter can be optionally used to request a placeholder image to be returned.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future<Uint8List> getAvatarImage(String personId, { bool attachment, DateTime ifModifiedSince, bool placeholder }) async
    test('test getAvatarImage', () async {
      // TODO
    });

    // Get a person
    //
    // Gets information for the person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future<PersonEntry> getPerson(String personId, { BuiltList<String> fields }) async
    test('test getPerson', () async {
      // TODO
    });

    // List people
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  List people.  You can use the **include** parameter to return any additional information.  The default sort order for the returned list is for people to be sorted by ascending id. You can override the default by using the **orderBy** parameter.  You can use any of the following fields to order the results: * id * firstName * lastName
    //
    //Future<PersonPaging> listPeople({ int skipCount, int maxItems, BuiltList<String> orderBy, BuiltList<String> include, BuiltList<String> fields }) async
    test('test listPeople', () async {
      // TODO
    });

    // Request password reset
    //
    // **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Initiates the reset password workflow to send an email with reset password instruction to the user's registered email.  The client is mandatory in the request body. For example: ```JSON {   \"client\": \"myClient\" } ``` **Note:** The client must be registered before this API can send an email. See [server documentation]. However, out-of-the-box share is registered as a default client, so you could pass **share** as the client name: ```JSON {   \"client\": \"share\" } ``` **Note:** No authentication is required to call this endpoint.
    //
    //Future requestPasswordReset(String personId, ClientBody clientBody) async
    test('test requestPasswordReset', () async {
      // TODO
    });

    // Reset password
    //
    // **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Resets user's password  The password, id and key properties are mandatory in the request body. For example: ```JSON {   \"password\":\"newPassword\",   \"id\":\"activiti$10\",   \"key\":\"4dad6d00-0daf-413a-b200-f64af4e12345\" } ``` **Note:** No authentication is required to call this endpoint.
    //
    //Future resetPassword(String personId, PasswordResetBody passwordResetBody) async
    test('test resetPassword', () async {
      // TODO
    });

    // Update avatar image
    //
    // **Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Updates the avatar image related to the person **personId**.  The request body should be the binary stream for the avatar image. The content type of the file should be an image file. This will be used to generate an \"avatar\" thumbnail rendition.  You must be the person or have admin rights to update a person's avatar.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future updateAvatarImage(String personId, Uint8List contentBodyUpdate) async
    test('test updateAvatarImage', () async {
      // TODO
    });

    // Update person
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Update the given person's details.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.  If applicable, the given person's login access can also be optionally disabled or re-enabled.  You must have admin rights to update a person — unless updating your own details.  If you are changing your password, as a non-admin user, then the existing password must also be supplied (using the oldPassword field in addition to the new password value).  Admin users cannot be disabled by setting enabled to false.  Non-admin users may not disable themselves.  You can set custom properties when you update a person: ```JSON {   \"firstName\": \"Alice\",   \"properties\":   {     \"my:property\": \"The value\"   } } ``` **Note:** setting properties of type d:content and d:category are not supported.
    //
    //Future<PersonEntry> updatePerson(String personId, PersonBodyUpdate personBodyUpdate, { BuiltList<String> fields }) async
    test('test updatePerson', () async {
      // TODO
    });
  });
}
