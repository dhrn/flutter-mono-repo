import 'package:api_client/api.dart';
import 'package:api_client/api/favorites_api.dart';
import 'package:test/test.dart';

/// tests for FavoritesApi
void main() {
  final instance = ApiClient().getFavoritesApi();

  group(FavoritesApi, () {
    // Create a favorite
    //
    // Favorite a **site**, **file**, or **folder** in the repository.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.  **Note:** You can favorite more than one entity by specifying a list of objects in the JSON body like this:  ```JSON [   {        \"target\": {           \"file\": {              \"guid\": \"abcde-01234-....\"           }        }    },    {        \"target\": {           \"file\": {              \"guid\": \"abcde-09863-....\"           }        }    }, ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ```
    //
    //Future<FavoriteEntry> createFavorite(String personId, FavoriteBodyCreate favoriteBodyCreate, { BuiltList<String> include, BuiltList<String> fields }) async
    test('test createFavorite', () async {
      // TODO
    });

    // Create a site favorite
    //
    // **Note:** this endpoint is deprecated as of Alfresco 4.2, and will be removed in the future. Use `/people/{personId}/favorites` instead.  Create a site favorite for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.   **Note:** You can favorite more than one site by specifying a list of sites in the JSON body like this:  ```JSON [   {     \"id\": \"test-site-1\"   },   {     \"id\": \"test-site-2\"   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ```
    //
    //Future<FavoriteSiteEntry> createSiteFavorite(String personId, FavoriteSiteBodyCreate favoriteSiteBodyCreate, { BuiltList<String> fields }) async
    test('test createSiteFavorite', () async {
      // TODO
    });

    // Delete a favorite
    //
    // Deletes **favoriteId** as a favorite of person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future deleteFavorite(String personId, String favoriteId) async
    test('test deleteFavorite', () async {
      // TODO
    });

    // Delete a site favorite
    //
    // **Note:** this endpoint is deprecated as of Alfresco 4.2, and will be removed in the future. Use `/people/{personId}/favorites/{favoriteId}` instead.  Deletes site **siteId** from the favorite site list of person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future deleteSiteFavorite(String personId, String siteId) async
    test('test deleteSiteFavorite', () async {
      // TODO
    });

    // Get a favorite
    //
    // Gets favorite **favoriteId** for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future<FavoriteEntry> getFavorite(String personId, String favoriteId, { BuiltList<String> include, BuiltList<String> fields }) async
    test('test getFavorite', () async {
      // TODO
    });

    // Get a favorite site
    //
    // **Note:** this endpoint is deprecated as of Alfresco 4.2, and will be removed in the future. Use `/people/{personId}/favorites/{favoriteId}` instead.  Gets information on favorite site **siteId** of person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future<SiteEntry> getFavoriteSite(String personId, String siteId, { BuiltList<String> fields }) async
    test('test getFavoriteSite', () async {
      // TODO
    });

    // List favorite sites
    //
    // **Note:** this endpoint is deprecated as of Alfresco 4.2, and will be removed in the future. Use `/people/{personId}/favorites` instead.  Gets a list of a person's favorite sites.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future<SitePaging> listFavoriteSitesForPerson(String personId, { int skipCount, int maxItems, BuiltList<String> fields }) async
    test('test listFavoriteSitesForPerson', () async {
      // TODO
    });

    // List favorites
    //
    // Gets a list of favorites for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.  The default sort order for the returned list of favorites is type ascending, createdAt descending. You can override the default by using the **orderBy** parameter.  You can use any of the following fields to order the results: *   `type` *   `createdAt` *   `title`  You can use the **where** parameter to restrict the list in the response to entries of a specific kind. The **where** parameter takes a value. The value is a single predicate that can include one or more **EXISTS** conditions. The **EXISTS** condition uses a single operand to limit the list to include entries that include that one property. The property values are:  *   `target/file` *   `target/folder` *   `target/site`  For example, the following **where** parameter restricts the returned list to the file favorites for a person:  ```SQL (EXISTS(target/file)) ``` You can specify more than one condition using **OR**. The predicate must be enclosed in parentheses.   For example, the following **where** parameter restricts the returned list to the file and folder favorites for a person:  ```SQL (EXISTS(target/file) OR EXISTS(target/folder)) ```
    //
    //Future<FavoritePaging> listFavorites(String personId, { int skipCount, int maxItems, BuiltList<String> orderBy, String where, BuiltList<String> include, BuiltList<String> fields }) async
    test('test listFavorites', () async {
      // TODO
    });
  });
}
