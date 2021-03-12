import 'package:api_client/api.dart';
import 'package:api_client/api/actions_api.dart';
import 'package:test/test.dart';

/// tests for ActionsApi
void main() {
  final instance = ApiClient().getActionsApi();

  group(ActionsApi, () {
    // Retrieve the details of an action definition
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Retrieve the details of the action denoted by **actionDefinitionId**.
    //
    //Future<ActionDefinitionEntry> actionDetails(String actionDefinitionId) async
    test('test actionDetails', () async {
      // TODO
    });

    // Execute an action
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Executes an action  An action may be executed against a node specified by **targetId**. For example:  ``` {   \"actionDefinitionId\": \"copy\",   \"targetId\": \"4c4b3c43-f18b-43ff-af84-751f16f1ddfd\",   \"params\": {    \"destination-folder\": \"34219f79-66fa-4ebf-b371-118598af898c\"   } } ```  Performing a POST with the request body shown above will result in the node identified by ```targetId``` being copied to the destination folder specified in the ```params``` object by the key ```destination-folder```.  **targetId** is optional, however, currently **targetId** must be a valid node ID. In the future, actions may be executed against different entity types or executed without the need for the context of an entity.   Parameters supplied to the action within the ```params``` object will be converted to the expected type, where possible using the DefaultTypeConverter class. In addition:  * Node IDs may be supplied in their short form (implicit workspace://SpacesStore prefix) * Aspect names may be supplied using their short form, e.g. cm:versionable or cm:auditable  In this example, we add the aspect ```cm:versionable``` to a node using the QName resolution mentioned above:  ``` {   \"actionDefinitionId\": \"add-features\",   \"targetId\": \"16349e3f-2977-44d1-93f2-73c12b8083b5\",   \"params\": {    \"aspect-name\": \"cm:versionable\"   } } ```  The ```actionDefinitionId``` is the ```id``` of an action definition as returned by the _list actions_ operations (e.g. GET /action-definitions).  The action will be executed **asynchronously** with a `202` HTTP response signifying that the request has been accepted successfully. The response body contains the unique ID of the action pending execution. The ID may be used, for example to correlate an execution with output in the server logs.
    //
    //Future<ActionExecResultEntry> actionExec(ActionBodyExec actionBodyExec) async
    test('test actionExec', () async {
      // TODO
    });

    // Retrieve list of available actions
    //
    // **Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Gets a list of all available actions  The default sort order for the returned list is for actions to be sorted by ascending name. You can override the default by using the **orderBy** parameter.  You can use any of the following fields to order the results: * name * title
    //
    //Future<ActionDefinitionList> listActions({ int skipCount, int maxItems, BuiltList<String> orderBy, BuiltList<String> fields }) async
    test('test listActions', () async {
      // TODO
    });

    // Retrieve actions for a node
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Retrieve the list of actions that may be executed against the given **nodeId**.  The default sort order for the returned list is for actions to be sorted by ascending name. You can override the default by using the **orderBy** parameter.  You can use any of the following fields to order the results: * name * title
    //
    //Future<ActionDefinitionList> nodeActions(String nodeId, { int skipCount, int maxItems, BuiltList<String> orderBy, BuiltList<String> fields }) async
    test('test nodeActions', () async {
      // TODO
    });
  });
}
