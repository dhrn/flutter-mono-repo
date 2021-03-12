import 'package:api_client/api.dart';
import 'package:api_client/api/queries_api.dart';
import 'package:test/test.dart';

/// tests for QueriesApi
void main() {
  final instance = ApiClient().getQueriesApi();

  group(QueriesApi, () {
    // Find nodes
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of nodes that match the given search criteria.  The search term is used to look for nodes that match against name, title, description, full text content or tags.  The search term: - must contain a minimum of 3 alphanumeric characters - allows \"quoted term\" - can optionally use '*' for wildcard matching  By default, file and folder types will be searched unless a specific type is provided as a query parameter.  By default, the search will be across the repository unless a specific root node id is provided to start the search from.  You can sort the result list using the **orderBy** parameter. You can specify one or more of the following fields in the **orderBy** parameter: * name * modifiedAt * createdAt
    //
    //Future<NodePaging> findNodes(String term, { String rootNodeId, int skipCount, int maxItems, String nodeType, BuiltList<String> include, BuiltList<String> orderBy, BuiltList<String> fields }) async
    test('test findNodes', () async {
      // TODO
    });

    // Find people
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of people that match the given search criteria.  The search term is used to look for matches against person id, firstname and lastname.  The search term: - must contain a minimum of 2 alphanumeric characters - can optionally use '*' for wildcard matching within the term  You can sort the result list using the **orderBy** parameter. You can specify one or more of the following fields in the **orderBy** parameter: * id * firstName * lastName
    //
    //Future<PersonPaging> findPeople(String term, { int skipCount, int maxItems, BuiltList<String> fields, BuiltList<String> orderBy }) async
    test('test findPeople', () async {
      // TODO
    });

    // Find sites
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of sites that match the given search criteria.  The search term is used to look for sites that match against site id, title or description.  The search term: - must contain a minimum of 2 alphanumeric characters - can optionally use '*' for wildcard matching within the term  The default sort order for the returned list is for sites to be sorted by ascending id. You can override the default by using the **orderBy** parameter. You can specify one or more of the following fields in the **orderBy** parameter: * id * title * description
    //
    //Future<SitePaging> findSites(String term, { int skipCount, int maxItems, BuiltList<String> orderBy, BuiltList<String> fields }) async
    test('test findSites', () async {
      // TODO
    });
  });
}
