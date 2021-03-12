import 'package:api_client/api.dart';
import 'package:api_client/api/sites_api.dart';
import 'package:test/test.dart';

/// tests for SitesApi
void main() {
  final instance = ApiClient().getSitesApi();

  group(SitesApi, () {
    // Approve a site membership request
    //
    // Approve a site membership request.
    //
    //Future approveSiteMembershipRequest(String siteId, String inviteeId, { SiteMembershipApprovalBody siteMembershipApprovalBody }) async
    test('test approveSiteMembershipRequest', () async {
      // TODO
    });

    // Create a site
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Creates a default site with the given details.  Unless explicitly specified, the site id will be generated from the site title. The site id must be unique and only contain alphanumeric and/or dash characters.  Note: the id of a site cannot be updated once the site has been created.  For example, to create a public site called \"Marketing\" the following body could be used: ```JSON {   \"title\": \"Marketing\",   \"visibility\": \"PUBLIC\" } ```  The creation of the (surf) configuration files required by Share can be skipped via the **skipConfiguration** query parameter.  **Note:** if skipped then such a site will **not** work within Share.  The addition of the site to the user's site favorites can be skipped via the **skipAddToFavorites** query parameter.  The creator will be added as a member with Site Manager role.  When you create a site, a container called **documentLibrary** is created for you in the new site. This container is the root folder for content stored in the site.
    //
    //Future<SiteEntry> createSite(SiteBodyCreate siteBodyCreate, { bool skipConfiguration, bool skipAddToFavorites, BuiltList<String> fields }) async
    test('test createSite', () async {
      // TODO
    });

    // Create a site membership for group
    //
    // **Note:** this endpoint is available in Alfresco 7.0.0 and newer versions.  Creates a site membership for group **groupId** on site **siteId**. You can set the **role** to one of four types: * SiteConsumer * SiteCollaborator * SiteContributor * SiteManager **Note:** You can create more than one site membership by specifying a list of group in the JSON body like this:  ```JSON   [    {      \"role\": \"SiteConsumer\",      \"id\": \"authorityId\"    },    {      \"role\": \"SiteConsumer\",      \"id\": \"authorityId\"    }   ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example: ```JSON   {     \"list\": {       \"pagination\": {         \"count\": 2,         \"hasMoreItems\": false,         \"totalItems\": 2,         \"skipCount\": 0,         \"maxItems\": 100       },       \"entries\": [         {           \"entry\": {             ...           }         },         {           \"entry\": {             ...           }         }       ]     }   } ```
    //
    //Future<SiteGroupEntry> createSiteGroupMembership(String siteId, SiteMembershipBodyCreate siteMembershipBodyCreate, { BuiltList<String> fields }) async
    test('test createSiteGroupMembership', () async {
      // TODO
    });

    // Create a site membership
    //
    // Creates a site membership for person **personId** on site **siteId**.  You can set the **role** to one of four types:  * SiteConsumer * SiteCollaborator * SiteContributor * SiteManager  **Note:** You can create more than one site membership by specifying a list of people in the JSON body like this:  ```JSON [   {     \"role\": \"SiteConsumer\",     \"id\": \"joe\"   },   {     \"role\": \"SiteConsumer\",     \"id\": \"fred\"   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ```
    //
    //Future<SiteMemberEntry> createSiteMembership(String siteId, SiteMembershipBodyCreate siteMembershipBodyCreate, { BuiltList<String> fields }) async
    test('test createSiteMembership', () async {
      // TODO
    });

    // Create a site membership request
    //
    // Create a site membership request for yourself on the site with the identifier of **id**, specified in the JSON body. The result of the request differs depending on the type of site.  * For a **public** site, you join the site immediately as a SiteConsumer. * For a **moderated** site, your request is added to the site membership request list. The request waits for approval from the Site Manager. * You cannot request membership of a **private** site. Members are invited by the site administrator.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.   **Note:** You can create site membership requests for more than one site by specifying a list of sites in the JSON body like this:  ```JSON [   {     \"message\": \"Please can you add me\",     \"id\": \"test-site-1\",     \"title\": \"Request for test site 1\",   },   {     \"message\": \"Please can you add me\",     \"id\": \"test-site-2\",     \"title\": \"Request for test site 2\",   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ```
    //
    //Future<SiteMembershipRequestEntry> createSiteMembershipRequestForPerson(String personId, SiteMembershipRequestBodyCreate siteMembershipRequestBodyCreate, { BuiltList<String> fields }) async
    test('test createSiteMembershipRequestForPerson', () async {
      // TODO
    });

    // Delete a site
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Deletes the site with **siteId**.
    //
    //Future deleteSite(String siteId, { bool permanent }) async
    test('test deleteSite', () async {
      // TODO
    });

    // Delete a group membership for site
    //
    // **Note:** this endpoint is available in Alfresco 7.0.0 and newer versions.  Deletes group **groupId** as a member of site **siteId**.
    //
    //Future deleteSiteGroupMembership(String siteId, String groupId) async
    test('test deleteSiteGroupMembership', () async {
      // TODO
    });

    // Delete a site membership
    //
    // Deletes person **personId** as a member of site **siteId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future deleteSiteMembership(String siteId, String personId) async
    test('test deleteSiteMembership', () async {
      // TODO
    });

    // Delete a site membership
    //
    // Deletes person **personId** as a member of site **siteId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future deleteSiteMembershipForPerson(String personId, String siteId) async
    test('test deleteSiteMembershipForPerson', () async {
      // TODO
    });

    // Delete a site membership request
    //
    // Deletes the site membership request to site **siteId** for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future deleteSiteMembershipRequestForPerson(String personId, String siteId) async
    test('test deleteSiteMembershipRequestForPerson', () async {
      // TODO
    });

    // Get a site
    //
    // Gets information for site **siteId**.  You can use the **relations** parameter to include one or more related entities in a single response and so reduce network traffic.  The entity types in Alfresco are organized in a tree structure. The **sites** entity has two children, **containers** and **members**. The following relations parameter returns all the container and member objects related to the site **siteId**:  ``` containers,members ```
    //
    //Future<SiteEntry> getSite(String siteId, { BuiltList<String> relations, BuiltList<String> fields }) async
    test('test getSite', () async {
      // TODO
    });

    // Get a site container
    //
    // Gets information on the container **containerId** in site **siteId**.
    //
    //Future<SiteContainerEntry> getSiteContainer(String siteId, String containerId, { BuiltList<String> fields }) async
    test('test getSiteContainer', () async {
      // TODO
    });

    // Get information about site membership of group
    //
    // **Note:** this endpoint is available in Alfresco 7.0.0 and newer versions.  Gets site membership information for group **groupId** on site **siteId**.
    //
    //Future<SiteGroupEntry> getSiteGroupMembership(String siteId, String groupId, { BuiltList<String> fields }) async
    test('test getSiteGroupMembership', () async {
      // TODO
    });

    // Get a site membership
    //
    // Gets site membership information for person **personId** on site **siteId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future<SiteMemberEntry> getSiteMembership(String siteId, String personId, { BuiltList<String> fields }) async
    test('test getSiteMembership', () async {
      // TODO
    });

    // Get a site membership
    //
    // Gets site membership information for person **personId** on site **siteId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future<SiteRoleEntry> getSiteMembershipForPerson(String personId, String siteId) async
    test('test getSiteMembershipForPerson', () async {
      // TODO
    });

    // Get a site membership request
    //
    // Gets the site membership request for site **siteId** for person **personId**, if one exists.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future<SiteMembershipRequestEntry> getSiteMembershipRequestForPerson(String personId, String siteId, { BuiltList<String> fields }) async
    test('test getSiteMembershipRequestForPerson', () async {
      // TODO
    });

    // Get site membership requests
    //
    // Get the list of site membership requests the user can action.  You can use the **where** parameter to filter the returned site membership requests by **siteId**. For example:  ``` (siteId=mySite) ```  The **where** parameter can also be used to filter by ***personId***. For example:  ``` where=(personId=person) ```  This may be combined with the siteId filter, as shown below:  ``` where=(siteId=mySite AND personId=person)) ```
    //
    //Future<SiteMembershipRequestWithPersonPaging> getSiteMembershipRequests({ int skipCount, int maxItems, String where, BuiltList<String> fields }) async
    test('test getSiteMembershipRequests', () async {
      // TODO
    });

    // List site containers
    //
    // Gets a list of containers for the site **siteId**.
    //
    //Future<SiteContainerPaging> listSiteContainers(String siteId, { int skipCount, int maxItems, BuiltList<String> fields }) async
    test('test listSiteContainers', () async {
      // TODO
    });

    // List group membership for site
    //
    // **Note:** this endpoint is available in Alfresco 7.0.0 and newer versions.  Gets a list of group membership for site **siteId**.
    //
    //Future<SiteGroupPaging> listSiteGroups(String siteId, { int skipCount, int maxItems, BuiltList<String> fields }) async
    test('test listSiteGroups', () async {
      // TODO
    });

    // List site membership requests
    //
    // Gets a list of the current site membership requests for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future<SiteMembershipRequestPaging> listSiteMembershipRequestsForPerson(String personId, { int skipCount, int maxItems, BuiltList<String> fields }) async
    test('test listSiteMembershipRequestsForPerson', () async {
      // TODO
    });

    // List site memberships
    //
    // Gets a list of site memberships for site **siteId**.
    //
    //Future<SiteMemberPaging> listSiteMemberships(String siteId, { int skipCount, int maxItems, BuiltList<String> fields, String where }) async
    test('test listSiteMemberships', () async {
      // TODO
    });

    // List site memberships
    //
    // Gets a list of site membership information for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.  You can use the **where** parameter to filter the returned sites by **visibility** or site **preset**.  Example to filter by **visibility**, use any one of:  ``` (visibility='PRIVATE') (visibility='PUBLIC') (visibility='MODERATED') ```  Example to filter by site **preset**:  ``` (preset='site-dashboard') ```  The default sort order for the returned list is for sites to be sorted by ascending title. You can override the default by using the **orderBy** parameter. You can specify one or more of the following fields in the **orderBy** parameter: * id * title * role
    //
    //Future<SiteRolePaging> listSiteMembershipsForPerson(String personId, { int skipCount, int maxItems, BuiltList<String> orderBy, BuiltList<String> relations, BuiltList<String> fields, String where }) async
    test('test listSiteMembershipsForPerson', () async {
      // TODO
    });

    // List sites
    //
    // Gets a list of sites in this repository.  You can use the **where** parameter to filter the returned sites by **visibility** or site **preset**.  Example to filter by **visibility**, use any one of:  ``` (visibility='PRIVATE') (visibility='PUBLIC') (visibility='MODERATED') ```  Example to filter by site **preset**:  ``` (preset='site-dashboard') ```  The default sort order for the returned list is for sites to be sorted by ascending title. You can override the default by using the **orderBy** parameter. You can specify one or more of the following fields in the **orderBy** parameter: * id * title * description  You can use the **relations** parameter to include one or more related entities in a single response and so reduce network traffic.  The entity types in Alfresco are organized in a tree structure. The **sites** entity has two children, **containers** and **members**. The following relations parameter returns all the container and member objects related to each site:  ``` containers,members ```
    //
    //Future<SitePaging> listSites({ int skipCount, int maxItems, BuiltList<String> orderBy, BuiltList<String> relations, BuiltList<String> fields, String where }) async
    test('test listSites', () async {
      // TODO
    });

    // Reject a site membership request
    //
    // Reject a site membership request.
    //
    //Future rejectSiteMembershipRequest(String siteId, String inviteeId, { SiteMembershipRejectionBody siteMembershipRejectionBody }) async
    test('test rejectSiteMembershipRequest', () async {
      // TODO
    });

    // Update a site
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Update the details for the given site **siteId**. Site Manager or otherwise a (site) admin can update title, description or visibility.  Note: the id of a site cannot be updated once the site has been created.
    //
    //Future<SiteEntry> updateSite(String siteId, SiteBodyUpdate siteBodyUpdate, { BuiltList<String> fields }) async
    test('test updateSite', () async {
      // TODO
    });

    // Update site membership of group
    //
    // **Note:** this endpoint is available in Alfresco 7.0.0 and newer versions.  Update the membership of person **groupId** in site **siteId**. You can set the **role** to one of four types: * SiteConsumer * SiteCollaborator * SiteContributor * SiteManager
    //
    //Future<SiteGroupEntry> updateSiteGroupMembership(String siteId, String groupId, SiteMembershipBodyUpdate siteMembershipBodyUpdate, { BuiltList<String> fields }) async
    test('test updateSiteGroupMembership', () async {
      // TODO
    });

    // Update a site membership
    //
    // Update the membership of person **personId** in site **siteId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.  You can set the **role** to one of four types:  * SiteConsumer * SiteCollaborator * SiteContributor * SiteManager
    //
    //Future<SiteMemberEntry> updateSiteMembership(String siteId, String personId, SiteMembershipBodyUpdate siteMembershipBodyUpdate, { BuiltList<String> fields }) async
    test('test updateSiteMembership', () async {
      // TODO
    });

    // Update a site membership request
    //
    // Updates the message for the site membership request to site **siteId** for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
    //
    //Future<SiteMembershipRequestEntry> updateSiteMembershipRequestForPerson(String personId, String siteId, SiteMembershipRequestBodyUpdate siteMembershipRequestBodyUpdate, { BuiltList<String> fields }) async
    test('test updateSiteMembershipRequestForPerson', () async {
      // TODO
    });
  });
}
