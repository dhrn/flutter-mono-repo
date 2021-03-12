# api_client
**Core API**

Provides access to the core features of Alfresco Content Services.


This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1
- Build package: org.openapitools.codegen.languages.DartDioClientCodegen

## Requirements

Dart 1.20.0 or later OR Flutter 0.0.20 or later

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: api_client
version: 0.0.1
description: My API Client
dependencies:
  api_client:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  api_client:
    path: /path/to/api_client
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:api_client/api.dart';


var api_instance = new ActionsApi();
var actionDefinitionId = actionDefinitionId_example; // String | The identifier of an action definition.

try {
    var result = api_instance.actionDetails(actionDefinitionId);
    print(result);
} catch (e) {
    print("Exception when calling ActionsApi->actionDetails: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost/alfresco/api/-default-/public/alfresco/versions/1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ActionsApi* | [**actionDetails**](doc//ActionsApi.md#actiondetails) | **get** /action-definitions/{actionDefinitionId} | Retrieve the details of an action definition
*ActionsApi* | [**actionExec**](doc//ActionsApi.md#actionexec) | **post** /action-executions | Execute an action
*ActionsApi* | [**listActions**](doc//ActionsApi.md#listactions) | **get** /action-definitions | Retrieve list of available actions
*ActionsApi* | [**nodeActions**](doc//ActionsApi.md#nodeactions) | **get** /nodes/{nodeId}/action-definitions | Retrieve actions for a node
*ActivitiesApi* | [**listActivitiesForPerson**](doc//ActivitiesApi.md#listactivitiesforperson) | **get** /people/{personId}/activities | List activities
*AuditApi* | [**deleteAuditEntriesForAuditApp**](doc//AuditApi.md#deleteauditentriesforauditapp) | **delete** /audit-applications/{auditApplicationId}/audit-entries | Permanently delete audit entries for an audit application
*AuditApi* | [**deleteAuditEntry**](doc//AuditApi.md#deleteauditentry) | **delete** /audit-applications/{auditApplicationId}/audit-entries/{auditEntryId} | Permanently delete an audit entry
*AuditApi* | [**getAuditApp**](doc//AuditApi.md#getauditapp) | **get** /audit-applications/{auditApplicationId} | Get audit application info
*AuditApi* | [**getAuditEntry**](doc//AuditApi.md#getauditentry) | **get** /audit-applications/{auditApplicationId}/audit-entries/{auditEntryId} | Get audit entry
*AuditApi* | [**listAuditApps**](doc//AuditApi.md#listauditapps) | **get** /audit-applications | List audit applications
*AuditApi* | [**listAuditEntriesForAuditApp**](doc//AuditApi.md#listauditentriesforauditapp) | **get** /audit-applications/{auditApplicationId}/audit-entries | List audit entries for an audit application
*AuditApi* | [**listAuditEntriesForNode**](doc//AuditApi.md#listauditentriesfornode) | **get** /nodes/{nodeId}/audit-entries | List audit entries for a node
*AuditApi* | [**updateAuditApp**](doc//AuditApi.md#updateauditapp) | **put** /audit-applications/{auditApplicationId} | Update audit application info
*CommentsApi* | [**createComment**](doc//CommentsApi.md#createcomment) | **post** /nodes/{nodeId}/comments | Create a comment
*CommentsApi* | [**deleteComment**](doc//CommentsApi.md#deletecomment) | **delete** /nodes/{nodeId}/comments/{commentId} | Delete a comment
*CommentsApi* | [**listComments**](doc//CommentsApi.md#listcomments) | **get** /nodes/{nodeId}/comments | List comments
*CommentsApi* | [**updateComment**](doc//CommentsApi.md#updatecomment) | **put** /nodes/{nodeId}/comments/{commentId} | Update a comment
*DownloadsApi* | [**cancelDownload**](doc//DownloadsApi.md#canceldownload) | **delete** /downloads/{downloadId} | Cancel a download
*DownloadsApi* | [**createDownload**](doc//DownloadsApi.md#createdownload) | **post** /downloads | Create a new download
*DownloadsApi* | [**getDownload**](doc//DownloadsApi.md#getdownload) | **get** /downloads/{downloadId} | Get a download
*FavoritesApi* | [**createFavorite**](doc//FavoritesApi.md#createfavorite) | **post** /people/{personId}/favorites | Create a favorite
*FavoritesApi* | [**createSiteFavorite**](doc//FavoritesApi.md#createsitefavorite) | **post** /people/{personId}/favorite-sites | Create a site favorite
*FavoritesApi* | [**deleteFavorite**](doc//FavoritesApi.md#deletefavorite) | **delete** /people/{personId}/favorites/{favoriteId} | Delete a favorite
*FavoritesApi* | [**deleteSiteFavorite**](doc//FavoritesApi.md#deletesitefavorite) | **delete** /people/{personId}/favorite-sites/{siteId} | Delete a site favorite
*FavoritesApi* | [**getFavorite**](doc//FavoritesApi.md#getfavorite) | **get** /people/{personId}/favorites/{favoriteId} | Get a favorite
*FavoritesApi* | [**getFavoriteSite**](doc//FavoritesApi.md#getfavoritesite) | **get** /people/{personId}/favorite-sites/{siteId} | Get a favorite site
*FavoritesApi* | [**listFavoriteSitesForPerson**](doc//FavoritesApi.md#listfavoritesitesforperson) | **get** /people/{personId}/favorite-sites | List favorite sites
*FavoritesApi* | [**listFavorites**](doc//FavoritesApi.md#listfavorites) | **get** /people/{personId}/favorites | List favorites
*GroupsApi* | [**createGroup**](doc//GroupsApi.md#creategroup) | **post** /groups | Create a group
*GroupsApi* | [**createGroupMembership**](doc//GroupsApi.md#creategroupmembership) | **post** /groups/{groupId}/members | Create a group membership
*GroupsApi* | [**deleteGroup**](doc//GroupsApi.md#deletegroup) | **delete** /groups/{groupId} | Delete a group
*GroupsApi* | [**deleteGroupMembership**](doc//GroupsApi.md#deletegroupmembership) | **delete** /groups/{groupId}/members/{groupMemberId} | Delete a group membership
*GroupsApi* | [**getGroup**](doc//GroupsApi.md#getgroup) | **get** /groups/{groupId} | Get group details
*GroupsApi* | [**listGroupMemberships**](doc//GroupsApi.md#listgroupmemberships) | **get** /groups/{groupId}/members | List memberships of a group
*GroupsApi* | [**listGroupMembershipsForPerson**](doc//GroupsApi.md#listgroupmembershipsforperson) | **get** /people/{personId}/groups | List group memberships
*GroupsApi* | [**listGroups**](doc//GroupsApi.md#listgroups) | **get** /groups | List groups
*GroupsApi* | [**updateGroup**](doc//GroupsApi.md#updategroup) | **put** /groups/{groupId} | Update group details
*NetworksApi* | [**getNetwork**](doc//NetworksApi.md#getnetwork) | **get** /networks/{networkId} | Get a network
*NetworksApi* | [**getNetworkForPerson**](doc//NetworksApi.md#getnetworkforperson) | **get** /people/{personId}/networks/{networkId} | Get network information
*NetworksApi* | [**listNetworksForPerson**](doc//NetworksApi.md#listnetworksforperson) | **get** /people/{personId}/networks | List network membership
*NodesApi* | [**copyNode**](doc//NodesApi.md#copynode) | **post** /nodes/{nodeId}/copy | Copy a node
*NodesApi* | [**createAssociation**](doc//NodesApi.md#createassociation) | **post** /nodes/{nodeId}/targets | Create node association
*NodesApi* | [**createNode**](doc//NodesApi.md#createnode) | **post** /nodes/{nodeId}/children | Create a node
*NodesApi* | [**createSecondaryChildAssociation**](doc//NodesApi.md#createsecondarychildassociation) | **post** /nodes/{nodeId}/secondary-children | Create secondary child
*NodesApi* | [**deleteAssociation**](doc//NodesApi.md#deleteassociation) | **delete** /nodes/{nodeId}/targets/{targetId} | Delete node association(s)
*NodesApi* | [**deleteNode**](doc//NodesApi.md#deletenode) | **delete** /nodes/{nodeId} | Delete a node
*NodesApi* | [**deleteSecondaryChildAssociation**](doc//NodesApi.md#deletesecondarychildassociation) | **delete** /nodes/{nodeId}/secondary-children/{childId} | Delete secondary child or children
*NodesApi* | [**getNode**](doc//NodesApi.md#getnode) | **get** /nodes/{nodeId} | Get a node
*NodesApi* | [**getNodeContent**](doc//NodesApi.md#getnodecontent) | **get** /nodes/{nodeId}/content | Get node content
*NodesApi* | [**listNodeChildren**](doc//NodesApi.md#listnodechildren) | **get** /nodes/{nodeId}/children | List node children
*NodesApi* | [**listParents**](doc//NodesApi.md#listparents) | **get** /nodes/{nodeId}/parents | List parents
*NodesApi* | [**listSecondaryChildren**](doc//NodesApi.md#listsecondarychildren) | **get** /nodes/{nodeId}/secondary-children | List secondary children
*NodesApi* | [**listSourceAssociations**](doc//NodesApi.md#listsourceassociations) | **get** /nodes/{nodeId}/sources | List source associations
*NodesApi* | [**listTargetAssociations**](doc//NodesApi.md#listtargetassociations) | **get** /nodes/{nodeId}/targets | List target associations
*NodesApi* | [**lockNode**](doc//NodesApi.md#locknode) | **post** /nodes/{nodeId}/lock | Lock a node
*NodesApi* | [**moveNode**](doc//NodesApi.md#movenode) | **post** /nodes/{nodeId}/move | Move a node
*NodesApi* | [**requestContentUrl**](doc//NodesApi.md#requestcontenturl) | **post** /nodes/{nodeId}/request-content-url | Generate a direct access content url
*NodesApi* | [**requestContentUrl_0**](doc//NodesApi.md#requestcontenturl_0) | **post** /nodes/{nodeId}/renditions/{renditionId}/request-content-url | Generate a direct access content url
*NodesApi* | [**requestContentUrl_1**](doc//NodesApi.md#requestcontenturl_1) | **post** /nodes/{nodeId}/versions/{versionId}/request-content-url | Generate a direct access content url
*NodesApi* | [**requestContentUrl_2**](doc//NodesApi.md#requestcontenturl_2) | **post** /nodes/{nodeId}/versions/{versionId}/renditions/{renditionId}/request-content-url | Generate a direct access content url
*NodesApi* | [**unlockNode**](doc//NodesApi.md#unlocknode) | **post** /nodes/{nodeId}/unlock | Unlock a node
*NodesApi* | [**updateNode**](doc//NodesApi.md#updatenode) | **put** /nodes/{nodeId} | Update a node
*NodesApi* | [**updateNodeContent**](doc//NodesApi.md#updatenodecontent) | **put** /nodes/{nodeId}/content | Update node content
*PeopleApi* | [**createPerson**](doc//PeopleApi.md#createperson) | **post** /people | Create person
*PeopleApi* | [**deleteAvatarImage**](doc//PeopleApi.md#deleteavatarimage) | **delete** /people/{personId}/avatar | Delete avatar image
*PeopleApi* | [**getAvatarImage**](doc//PeopleApi.md#getavatarimage) | **get** /people/{personId}/avatar | Get avatar image
*PeopleApi* | [**getPerson**](doc//PeopleApi.md#getperson) | **get** /people/{personId} | Get a person
*PeopleApi* | [**listPeople**](doc//PeopleApi.md#listpeople) | **get** /people | List people
*PeopleApi* | [**requestPasswordReset**](doc//PeopleApi.md#requestpasswordreset) | **post** /people/{personId}/request-password-reset | Request password reset
*PeopleApi* | [**resetPassword**](doc//PeopleApi.md#resetpassword) | **post** /people/{personId}/reset-password | Reset password
*PeopleApi* | [**updateAvatarImage**](doc//PeopleApi.md#updateavatarimage) | **put** /people/{personId}/avatar | Update avatar image
*PeopleApi* | [**updatePerson**](doc//PeopleApi.md#updateperson) | **put** /people/{personId} | Update person
*PreferencesApi* | [**getPreference**](doc//PreferencesApi.md#getpreference) | **get** /people/{personId}/preferences/{preferenceName} | Get a preference
*PreferencesApi* | [**listPreferences**](doc//PreferencesApi.md#listpreferences) | **get** /people/{personId}/preferences | List preferences
*ProbesApi* | [**getProbe**](doc//ProbesApi.md#getprobe) | **get** /probes/{probeId} | Check readiness and liveness of the repository
*QueriesApi* | [**findNodes**](doc//QueriesApi.md#findnodes) | **get** /queries/nodes | Find nodes
*QueriesApi* | [**findPeople**](doc//QueriesApi.md#findpeople) | **get** /queries/people | Find people
*QueriesApi* | [**findSites**](doc//QueriesApi.md#findsites) | **get** /queries/sites | Find sites
*RatingsApi* | [**createRating**](doc//RatingsApi.md#createrating) | **post** /nodes/{nodeId}/ratings | Create a rating
*RatingsApi* | [**deleteRating**](doc//RatingsApi.md#deleterating) | **delete** /nodes/{nodeId}/ratings/{ratingId} | Delete a rating
*RatingsApi* | [**getRating**](doc//RatingsApi.md#getrating) | **get** /nodes/{nodeId}/ratings/{ratingId} | Get a rating
*RatingsApi* | [**listRatings**](doc//RatingsApi.md#listratings) | **get** /nodes/{nodeId}/ratings | List ratings
*RenditionsApi* | [**createRendition**](doc//RenditionsApi.md#createrendition) | **post** /nodes/{nodeId}/renditions | Create rendition
*RenditionsApi* | [**getRendition**](doc//RenditionsApi.md#getrendition) | **get** /nodes/{nodeId}/renditions/{renditionId} | Get rendition information
*RenditionsApi* | [**getRenditionContent**](doc//RenditionsApi.md#getrenditioncontent) | **get** /nodes/{nodeId}/renditions/{renditionId}/content | Get rendition content
*RenditionsApi* | [**listRenditions**](doc//RenditionsApi.md#listrenditions) | **get** /nodes/{nodeId}/renditions | List renditions
*SharedLinksApi* | [**createSharedLink**](doc//SharedLinksApi.md#createsharedlink) | **post** /shared-links | Create a shared link to a file
*SharedLinksApi* | [**deleteSharedLink**](doc//SharedLinksApi.md#deletesharedlink) | **delete** /shared-links/{sharedId} | Deletes a shared link
*SharedLinksApi* | [**emailSharedLink**](doc//SharedLinksApi.md#emailsharedlink) | **post** /shared-links/{sharedId}/email | Email shared link
*SharedLinksApi* | [**getSharedLink**](doc//SharedLinksApi.md#getsharedlink) | **get** /shared-links/{sharedId} | Get a shared link
*SharedLinksApi* | [**getSharedLinkContent**](doc//SharedLinksApi.md#getsharedlinkcontent) | **get** /shared-links/{sharedId}/content | Get shared link content
*SharedLinksApi* | [**getSharedLinkRendition**](doc//SharedLinksApi.md#getsharedlinkrendition) | **get** /shared-links/{sharedId}/renditions/{renditionId} | Get shared link rendition information
*SharedLinksApi* | [**getSharedLinkRenditionContent**](doc//SharedLinksApi.md#getsharedlinkrenditioncontent) | **get** /shared-links/{sharedId}/renditions/{renditionId}/content | Get shared link rendition content
*SharedLinksApi* | [**listSharedLinkRenditions**](doc//SharedLinksApi.md#listsharedlinkrenditions) | **get** /shared-links/{sharedId}/renditions | List renditions for a shared link
*SharedLinksApi* | [**listSharedLinks**](doc//SharedLinksApi.md#listsharedlinks) | **get** /shared-links | List shared links
*SitesApi* | [**approveSiteMembershipRequest**](doc//SitesApi.md#approvesitemembershiprequest) | **post** /sites/{siteId}/site-membership-requests/{inviteeId}/approve | Approve a site membership request
*SitesApi* | [**createSite**](doc//SitesApi.md#createsite) | **post** /sites | Create a site
*SitesApi* | [**createSiteGroupMembership**](doc//SitesApi.md#createsitegroupmembership) | **post** /sites/{siteId}/group-members | Create a site membership for group
*SitesApi* | [**createSiteMembership**](doc//SitesApi.md#createsitemembership) | **post** /sites/{siteId}/members | Create a site membership
*SitesApi* | [**createSiteMembershipRequestForPerson**](doc//SitesApi.md#createsitemembershiprequestforperson) | **post** /people/{personId}/site-membership-requests | Create a site membership request
*SitesApi* | [**deleteSite**](doc//SitesApi.md#deletesite) | **delete** /sites/{siteId} | Delete a site
*SitesApi* | [**deleteSiteGroupMembership**](doc//SitesApi.md#deletesitegroupmembership) | **delete** /sites/{siteId}/group-members/{groupId} | Delete a group membership for site
*SitesApi* | [**deleteSiteMembership**](doc//SitesApi.md#deletesitemembership) | **delete** /sites/{siteId}/members/{personId} | Delete a site membership
*SitesApi* | [**deleteSiteMembershipForPerson**](doc//SitesApi.md#deletesitemembershipforperson) | **delete** /people/{personId}/sites/{siteId} | Delete a site membership
*SitesApi* | [**deleteSiteMembershipRequestForPerson**](doc//SitesApi.md#deletesitemembershiprequestforperson) | **delete** /people/{personId}/site-membership-requests/{siteId} | Delete a site membership request
*SitesApi* | [**getSite**](doc//SitesApi.md#getsite) | **get** /sites/{siteId} | Get a site
*SitesApi* | [**getSiteContainer**](doc//SitesApi.md#getsitecontainer) | **get** /sites/{siteId}/containers/{containerId} | Get a site container
*SitesApi* | [**getSiteGroupMembership**](doc//SitesApi.md#getsitegroupmembership) | **get** /sites/{siteId}/group-members/{groupId} | Get information about site membership of group
*SitesApi* | [**getSiteMembership**](doc//SitesApi.md#getsitemembership) | **get** /sites/{siteId}/members/{personId} | Get a site membership
*SitesApi* | [**getSiteMembershipForPerson**](doc//SitesApi.md#getsitemembershipforperson) | **get** /people/{personId}/sites/{siteId} | Get a site membership
*SitesApi* | [**getSiteMembershipRequestForPerson**](doc//SitesApi.md#getsitemembershiprequestforperson) | **get** /people/{personId}/site-membership-requests/{siteId} | Get a site membership request
*SitesApi* | [**getSiteMembershipRequests**](doc//SitesApi.md#getsitemembershiprequests) | **get** /site-membership-requests | Get site membership requests
*SitesApi* | [**listSiteContainers**](doc//SitesApi.md#listsitecontainers) | **get** /sites/{siteId}/containers | List site containers
*SitesApi* | [**listSiteGroups**](doc//SitesApi.md#listsitegroups) | **get** /sites/{siteId}/group-members | List group membership for site
*SitesApi* | [**listSiteMembershipRequestsForPerson**](doc//SitesApi.md#listsitemembershiprequestsforperson) | **get** /people/{personId}/site-membership-requests | List site membership requests
*SitesApi* | [**listSiteMemberships**](doc//SitesApi.md#listsitememberships) | **get** /sites/{siteId}/members | List site memberships
*SitesApi* | [**listSiteMembershipsForPerson**](doc//SitesApi.md#listsitemembershipsforperson) | **get** /people/{personId}/sites | List site memberships
*SitesApi* | [**listSites**](doc//SitesApi.md#listsites) | **get** /sites | List sites
*SitesApi* | [**rejectSiteMembershipRequest**](doc//SitesApi.md#rejectsitemembershiprequest) | **post** /sites/{siteId}/site-membership-requests/{inviteeId}/reject | Reject a site membership request
*SitesApi* | [**updateSite**](doc//SitesApi.md#updatesite) | **put** /sites/{siteId} | Update a site
*SitesApi* | [**updateSiteGroupMembership**](doc//SitesApi.md#updatesitegroupmembership) | **put** /sites/{siteId}/group-members/{groupId} | Update site membership of group
*SitesApi* | [**updateSiteMembership**](doc//SitesApi.md#updatesitemembership) | **put** /sites/{siteId}/members/{personId} | Update a site membership
*SitesApi* | [**updateSiteMembershipRequestForPerson**](doc//SitesApi.md#updatesitemembershiprequestforperson) | **put** /people/{personId}/site-membership-requests/{siteId} | Update a site membership request
*TagsApi* | [**createTagForNode**](doc//TagsApi.md#createtagfornode) | **post** /nodes/{nodeId}/tags | Create a tag for a node
*TagsApi* | [**deleteTagFromNode**](doc//TagsApi.md#deletetagfromnode) | **delete** /nodes/{nodeId}/tags/{tagId} | Delete a tag from a node
*TagsApi* | [**getTag**](doc//TagsApi.md#gettag) | **get** /tags/{tagId} | Get a tag
*TagsApi* | [**listTags**](doc//TagsApi.md#listtags) | **get** /tags | List tags
*TagsApi* | [**listTagsForNode**](doc//TagsApi.md#listtagsfornode) | **get** /nodes/{nodeId}/tags | List tags for a node
*TagsApi* | [**updateTag**](doc//TagsApi.md#updatetag) | **put** /tags/{tagId} | Update a tag
*TrashcanApi* | [**deleteDeletedNode**](doc//TrashcanApi.md#deletedeletednode) | **delete** /deleted-nodes/{nodeId} | Permanently delete a deleted node
*TrashcanApi* | [**getArchivedNodeRendition**](doc//TrashcanApi.md#getarchivednoderendition) | **get** /deleted-nodes/{nodeId}/renditions/{renditionId} | Get rendition information for a deleted node
*TrashcanApi* | [**getArchivedNodeRenditionContent**](doc//TrashcanApi.md#getarchivednoderenditioncontent) | **get** /deleted-nodes/{nodeId}/renditions/{renditionId}/content | Get rendition content of a deleted node
*TrashcanApi* | [**getDeletedNode**](doc//TrashcanApi.md#getdeletednode) | **get** /deleted-nodes/{nodeId} | Get a deleted node
*TrashcanApi* | [**getDeletedNodeContent**](doc//TrashcanApi.md#getdeletednodecontent) | **get** /deleted-nodes/{nodeId}/content | Get deleted node content
*TrashcanApi* | [**listDeletedNodeRenditions**](doc//TrashcanApi.md#listdeletednoderenditions) | **get** /deleted-nodes/{nodeId}/renditions | List renditions for a deleted node
*TrashcanApi* | [**listDeletedNodes**](doc//TrashcanApi.md#listdeletednodes) | **get** /deleted-nodes | List deleted nodes
*TrashcanApi* | [**restoreDeletedNode**](doc//TrashcanApi.md#restoredeletednode) | **post** /deleted-nodes/{nodeId}/restore | Restore a deleted node
*VersionsApi* | [**createVersionRendition**](doc//VersionsApi.md#createversionrendition) | **post** /nodes/{nodeId}/versions/{versionId}/renditions | Create rendition for a file version
*VersionsApi* | [**deleteVersion**](doc//VersionsApi.md#deleteversion) | **delete** /nodes/{nodeId}/versions/{versionId} | Delete a version
*VersionsApi* | [**getVersion**](doc//VersionsApi.md#getversion) | **get** /nodes/{nodeId}/versions/{versionId} | Get version information
*VersionsApi* | [**getVersionContent**](doc//VersionsApi.md#getversioncontent) | **get** /nodes/{nodeId}/versions/{versionId}/content | Get version content
*VersionsApi* | [**getVersionRendition**](doc//VersionsApi.md#getversionrendition) | **get** /nodes/{nodeId}/versions/{versionId}/renditions/{renditionId} | Get rendition information for a file version
*VersionsApi* | [**getVersionRenditionContent**](doc//VersionsApi.md#getversionrenditioncontent) | **get** /nodes/{nodeId}/versions/{versionId}/renditions/{renditionId}/content | Get rendition content for a file version
*VersionsApi* | [**listVersionHistory**](doc//VersionsApi.md#listversionhistory) | **get** /nodes/{nodeId}/versions | List version history
*VersionsApi* | [**listVersionRenditions**](doc//VersionsApi.md#listversionrenditions) | **get** /nodes/{nodeId}/versions/{versionId}/renditions | List renditions for a file version
*VersionsApi* | [**revertVersion**](doc//VersionsApi.md#revertversion) | **post** /nodes/{nodeId}/versions/{versionId}/revert | Revert a version


## Documentation For Models

 - [ActionBodyExec](doc//ActionBodyExec.md)
 - [ActionDefinition](doc//ActionDefinition.md)
 - [ActionDefinitionEntry](doc//ActionDefinitionEntry.md)
 - [ActionDefinitionList](doc//ActionDefinitionList.md)
 - [ActionDefinitionListList](doc//ActionDefinitionListList.md)
 - [ActionExecResult](doc//ActionExecResult.md)
 - [ActionExecResultEntry](doc//ActionExecResultEntry.md)
 - [ActionParameterDefinition](doc//ActionParameterDefinition.md)
 - [Activity](doc//Activity.md)
 - [ActivityEntry](doc//ActivityEntry.md)
 - [ActivityPaging](doc//ActivityPaging.md)
 - [ActivityPagingList](doc//ActivityPagingList.md)
 - [Association](doc//Association.md)
 - [AssociationBody](doc//AssociationBody.md)
 - [AssociationEntry](doc//AssociationEntry.md)
 - [AssociationInfo](doc//AssociationInfo.md)
 - [AuditApp](doc//AuditApp.md)
 - [AuditAppEntry](doc//AuditAppEntry.md)
 - [AuditAppPaging](doc//AuditAppPaging.md)
 - [AuditAppPagingList](doc//AuditAppPagingList.md)
 - [AuditBodyUpdate](doc//AuditBodyUpdate.md)
 - [AuditEntry](doc//AuditEntry.md)
 - [AuditEntryEntry](doc//AuditEntryEntry.md)
 - [AuditEntryPaging](doc//AuditEntryPaging.md)
 - [AuditEntryPagingList](doc//AuditEntryPagingList.md)
 - [Capabilities](doc//Capabilities.md)
 - [ChildAssociation](doc//ChildAssociation.md)
 - [ChildAssociationBody](doc//ChildAssociationBody.md)
 - [ChildAssociationEntry](doc//ChildAssociationEntry.md)
 - [ChildAssociationInfo](doc//ChildAssociationInfo.md)
 - [ClientBody](doc//ClientBody.md)
 - [Comment](doc//Comment.md)
 - [CommentBody](doc//CommentBody.md)
 - [CommentEntry](doc//CommentEntry.md)
 - [CommentPaging](doc//CommentPaging.md)
 - [CommentPagingList](doc//CommentPagingList.md)
 - [Company](doc//Company.md)
 - [Constraint](doc//Constraint.md)
 - [ContentInfo](doc//ContentInfo.md)
 - [Definition](doc//Definition.md)
 - [DeletedNode](doc//DeletedNode.md)
 - [DeletedNodeAllOf](doc//DeletedNodeAllOf.md)
 - [DeletedNodeBodyRestore](doc//DeletedNodeBodyRestore.md)
 - [DeletedNodeEntry](doc//DeletedNodeEntry.md)
 - [DeletedNodesPaging](doc//DeletedNodesPaging.md)
 - [DeletedNodesPagingList](doc//DeletedNodesPagingList.md)
 - [DirectAccessUrl](doc//DirectAccessUrl.md)
 - [DirectAccessUrlBodyCreate](doc//DirectAccessUrlBodyCreate.md)
 - [DirectAccessUrlEntry](doc//DirectAccessUrlEntry.md)
 - [Download](doc//Download.md)
 - [DownloadBodyCreate](doc//DownloadBodyCreate.md)
 - [DownloadEntry](doc//DownloadEntry.md)
 - [Error](doc//Error.md)
 - [ErrorError](doc//ErrorError.md)
 - [Favorite](doc//Favorite.md)
 - [FavoriteBodyCreate](doc//FavoriteBodyCreate.md)
 - [FavoriteEntry](doc//FavoriteEntry.md)
 - [FavoritePaging](doc//FavoritePaging.md)
 - [FavoritePagingList](doc//FavoritePagingList.md)
 - [FavoriteSite](doc//FavoriteSite.md)
 - [FavoriteSiteBodyCreate](doc//FavoriteSiteBodyCreate.md)
 - [FavoriteSiteEntry](doc//FavoriteSiteEntry.md)
 - [Group](doc//Group.md)
 - [GroupBodyCreate](doc//GroupBodyCreate.md)
 - [GroupBodyUpdate](doc//GroupBodyUpdate.md)
 - [GroupEntry](doc//GroupEntry.md)
 - [GroupMember](doc//GroupMember.md)
 - [GroupMemberEntry](doc//GroupMemberEntry.md)
 - [GroupMemberPaging](doc//GroupMemberPaging.md)
 - [GroupMemberPagingList](doc//GroupMemberPagingList.md)
 - [GroupMembershipBodyCreate](doc//GroupMembershipBodyCreate.md)
 - [GroupPaging](doc//GroupPaging.md)
 - [GroupPagingList](doc//GroupPagingList.md)
 - [NetworkQuota](doc//NetworkQuota.md)
 - [Node](doc//Node.md)
 - [NodeAssociation](doc//NodeAssociation.md)
 - [NodeAssociationAllOf](doc//NodeAssociationAllOf.md)
 - [NodeAssociationEntry](doc//NodeAssociationEntry.md)
 - [NodeAssociationPaging](doc//NodeAssociationPaging.md)
 - [NodeAssociationPagingList](doc//NodeAssociationPagingList.md)
 - [NodeBodyCopy](doc//NodeBodyCopy.md)
 - [NodeBodyCreate](doc//NodeBodyCreate.md)
 - [NodeBodyCreateAssociation](doc//NodeBodyCreateAssociation.md)
 - [NodeBodyLock](doc//NodeBodyLock.md)
 - [NodeBodyMove](doc//NodeBodyMove.md)
 - [NodeBodyUpdate](doc//NodeBodyUpdate.md)
 - [NodeChildAssociation](doc//NodeChildAssociation.md)
 - [NodeChildAssociationAllOf](doc//NodeChildAssociationAllOf.md)
 - [NodeChildAssociationEntry](doc//NodeChildAssociationEntry.md)
 - [NodeChildAssociationPaging](doc//NodeChildAssociationPaging.md)
 - [NodeChildAssociationPagingList](doc//NodeChildAssociationPagingList.md)
 - [NodeEntry](doc//NodeEntry.md)
 - [NodePaging](doc//NodePaging.md)
 - [NodePagingList](doc//NodePagingList.md)
 - [Pagination](doc//Pagination.md)
 - [PasswordResetBody](doc//PasswordResetBody.md)
 - [PathElement](doc//PathElement.md)
 - [PathInfo](doc//PathInfo.md)
 - [PermissionElement](doc//PermissionElement.md)
 - [PermissionsBody](doc//PermissionsBody.md)
 - [PermissionsInfo](doc//PermissionsInfo.md)
 - [Person](doc//Person.md)
 - [PersonBodyCreate](doc//PersonBodyCreate.md)
 - [PersonBodyUpdate](doc//PersonBodyUpdate.md)
 - [PersonEntry](doc//PersonEntry.md)
 - [PersonNetwork](doc//PersonNetwork.md)
 - [PersonNetworkEntry](doc//PersonNetworkEntry.md)
 - [PersonNetworkPaging](doc//PersonNetworkPaging.md)
 - [PersonNetworkPagingList](doc//PersonNetworkPagingList.md)
 - [PersonPaging](doc//PersonPaging.md)
 - [PersonPagingList](doc//PersonPagingList.md)
 - [Preference](doc//Preference.md)
 - [PreferenceEntry](doc//PreferenceEntry.md)
 - [PreferencePaging](doc//PreferencePaging.md)
 - [PreferencePagingList](doc//PreferencePagingList.md)
 - [ProbeEntry](doc//ProbeEntry.md)
 - [ProbeEntryEntry](doc//ProbeEntryEntry.md)
 - [Property](doc//Property.md)
 - [Rating](doc//Rating.md)
 - [RatingAggregate](doc//RatingAggregate.md)
 - [RatingBody](doc//RatingBody.md)
 - [RatingEntry](doc//RatingEntry.md)
 - [RatingPaging](doc//RatingPaging.md)
 - [RatingPagingList](doc//RatingPagingList.md)
 - [Rendition](doc//Rendition.md)
 - [RenditionBodyCreate](doc//RenditionBodyCreate.md)
 - [RenditionEntry](doc//RenditionEntry.md)
 - [RenditionPaging](doc//RenditionPaging.md)
 - [RenditionPagingList](doc//RenditionPagingList.md)
 - [RevertBody](doc//RevertBody.md)
 - [SharedLink](doc//SharedLink.md)
 - [SharedLinkBodyCreate](doc//SharedLinkBodyCreate.md)
 - [SharedLinkBodyEmail](doc//SharedLinkBodyEmail.md)
 - [SharedLinkEntry](doc//SharedLinkEntry.md)
 - [SharedLinkPaging](doc//SharedLinkPaging.md)
 - [SharedLinkPagingList](doc//SharedLinkPagingList.md)
 - [Site](doc//Site.md)
 - [SiteBodyCreate](doc//SiteBodyCreate.md)
 - [SiteBodyUpdate](doc//SiteBodyUpdate.md)
 - [SiteContainer](doc//SiteContainer.md)
 - [SiteContainerEntry](doc//SiteContainerEntry.md)
 - [SiteContainerPaging](doc//SiteContainerPaging.md)
 - [SiteContainerPagingList](doc//SiteContainerPagingList.md)
 - [SiteEntry](doc//SiteEntry.md)
 - [SiteGroup](doc//SiteGroup.md)
 - [SiteGroupEntry](doc//SiteGroupEntry.md)
 - [SiteGroupPaging](doc//SiteGroupPaging.md)
 - [SiteGroupPagingList](doc//SiteGroupPagingList.md)
 - [SiteMember](doc//SiteMember.md)
 - [SiteMemberEntry](doc//SiteMemberEntry.md)
 - [SiteMemberPaging](doc//SiteMemberPaging.md)
 - [SiteMemberPagingList](doc//SiteMemberPagingList.md)
 - [SiteMembershipApprovalBody](doc//SiteMembershipApprovalBody.md)
 - [SiteMembershipBodyCreate](doc//SiteMembershipBodyCreate.md)
 - [SiteMembershipBodyUpdate](doc//SiteMembershipBodyUpdate.md)
 - [SiteMembershipRejectionBody](doc//SiteMembershipRejectionBody.md)
 - [SiteMembershipRequest](doc//SiteMembershipRequest.md)
 - [SiteMembershipRequestBodyCreate](doc//SiteMembershipRequestBodyCreate.md)
 - [SiteMembershipRequestBodyUpdate](doc//SiteMembershipRequestBodyUpdate.md)
 - [SiteMembershipRequestEntry](doc//SiteMembershipRequestEntry.md)
 - [SiteMembershipRequestPaging](doc//SiteMembershipRequestPaging.md)
 - [SiteMembershipRequestPagingList](doc//SiteMembershipRequestPagingList.md)
 - [SiteMembershipRequestWithPerson](doc//SiteMembershipRequestWithPerson.md)
 - [SiteMembershipRequestWithPersonEntry](doc//SiteMembershipRequestWithPersonEntry.md)
 - [SiteMembershipRequestWithPersonPaging](doc//SiteMembershipRequestWithPersonPaging.md)
 - [SiteMembershipRequestWithPersonPagingList](doc//SiteMembershipRequestWithPersonPagingList.md)
 - [SitePaging](doc//SitePaging.md)
 - [SitePagingList](doc//SitePagingList.md)
 - [SiteRole](doc//SiteRole.md)
 - [SiteRoleEntry](doc//SiteRoleEntry.md)
 - [SiteRolePaging](doc//SiteRolePaging.md)
 - [SiteRolePagingList](doc//SiteRolePagingList.md)
 - [Tag](doc//Tag.md)
 - [TagBody](doc//TagBody.md)
 - [TagEntry](doc//TagEntry.md)
 - [TagPaging](doc//TagPaging.md)
 - [TagPagingList](doc//TagPagingList.md)
 - [UserInfo](doc//UserInfo.md)
 - [Version](doc//Version.md)
 - [VersionEntry](doc//VersionEntry.md)
 - [VersionPaging](doc//VersionPaging.md)
 - [VersionPagingList](doc//VersionPagingList.md)


## Documentation For Authorization


## basicAuth

- **Type**: HTTP basic authentication


## Author



