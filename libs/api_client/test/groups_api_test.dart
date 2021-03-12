import 'package:api_client/api.dart';
import 'package:api_client/api/groups_api.dart';
import 'package:test/test.dart';

/// tests for GroupsApi
void main() {
  final instance = ApiClient().getGroupsApi();

  group(GroupsApi, () {
    // Create a group
    //
    // **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Create a group.  The group id must start with \"GROUP\\_\". If this is omitted it will be added automatically. This format is also returned when listing groups or group memberships. It should be noted that the other group-related operations also expect the id to start with \"GROUP\\_\".  If one or more parentIds are specified then the group will be created and become a member of each of the specified parent groups.  If no parentIds are specified then the group will be created as a root group.  The group will be created in the **APP.DEFAULT** and **AUTH.ALF** zones.  You must have admin rights to create a group.
    //
    //Future<GroupEntry> createGroup(GroupBodyCreate groupBodyCreate, { BuiltList<String> include, BuiltList<String> fields }) async
    test('test createGroup', () async {
      // TODO
    });

    // Create a group membership
    //
    // **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Create a group membership (for an existing person or group) within a group **groupId**.  If the added group was previously a root group then it becomes a non-root group since it now has a parent.  It is an error to specify an **id** that does not exist.  You must have admin rights to create a group membership.
    //
    //Future<GroupMemberEntry> createGroupMembership(String groupId, GroupMembershipBodyCreate groupMembershipBodyCreate, { BuiltList<String> fields }) async
    test('test createGroupMembership', () async {
      // TODO
    });

    // Delete a group
    //
    // **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Delete group **groupId**.  The option to cascade delete applies this recursively to any hierarchy of group members. In this case, removing a group member does not delete the person or sub-group itself. If a removed sub-group no longer has any parent groups then it becomes a root group.  You must have admin rights to delete a group.
    //
    //Future deleteGroup(String groupId, { bool cascade }) async
    test('test deleteGroup', () async {
      // TODO
    });

    // Delete a group membership
    //
    // **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Delete group member **groupMemberId** (person or sub-group) from group **groupId**.  Removing a group member does not delete the person or sub-group itself.  If a removed sub-group no longer has any parent groups then it becomes a root group.  You must have admin rights to delete a group membership.
    //
    //Future deleteGroupMembership(String groupId, String groupMemberId) async
    test('test deleteGroupMembership', () async {
      // TODO
    });

    // Get group details
    //
    // **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Get details for group **groupId**.  You can use the **include** parameter to return additional information.
    //
    //Future<GroupEntry> getGroup(String groupId, { BuiltList<String> include, BuiltList<String> fields }) async
    test('test getGroup', () async {
      // TODO
    });

    // List memberships of a group
    //
    // **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Gets a list of the group memberships for the group **groupId**.  You can use the **where** parameter to filter the returned groups by **memberType**.  Example to filter by **memberType**, use any one of:  ``` (memberType='GROUP') (memberType='PERSON') ```  The default sort order for the returned list is for group members to be sorted by ascending displayName. You can override the default by using the **orderBy** parameter. You can specify one of the following fields in the **orderBy** parameter: * id * displayName
    //
    //Future<GroupMemberPaging> listGroupMemberships(String groupId, { int skipCount, int maxItems, BuiltList<String> orderBy, String where, BuiltList<String> fields }) async
    test('test listGroupMemberships', () async {
      // TODO
    });

    // List group memberships
    //
    // **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.   Gets a list of group membership information for person **personId**.   You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.   You can use the **include** parameter to return additional information.   You can use the **where** parameter to filter the returned groups by **isRoot**. For example, the following **where**  clause will return just the root groups:   ```  (isRoot=true)  ```   The **where** parameter can also be used to filter by ***zone***. This may be combined with isRoot to narrow  a result set even further. For example, the following where clause will only return groups belonging to the  `MY.ZONE` zone.   ```  where=(zones in ('MY.ZONE'))  ```   This may be combined with the isRoot filter, as shown below:   ```  where=(isRoot=false AND zones in ('MY.ZONE'))  ```   ***Note:*** restrictions include  * `AND` is the only supported operator when combining `isRoot` and `zones` filters  * Only one zone is supported by the filter  * The quoted zone name must be placed in parenthesis — a 400 error will result if these are omitted.    The default sort order for the returned list is for groups to be sorted by ascending displayName.  You can override the default by using the **orderBy** parameter. You can specify one or more of the following fields in the **orderBy** parameter:  * id  * displayName
    //
    //Future<GroupPaging> listGroupMembershipsForPerson(String personId, { int skipCount, int maxItems, BuiltList<String> orderBy, BuiltList<String> include, String where, BuiltList<String> fields }) async
    test('test listGroupMembershipsForPerson', () async {
      // TODO
    });

    // List groups
    //
    // **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Gets a list of groups.  You can use the **include** parameter to return additional information.  You can use the **where** parameter to filter the returned groups by **isRoot**. For example, the following **where** clause will return just the root groups:  ``` (isRoot=true) ```  The **where** parameter can also be used to filter by ***zone***. This may be combined with isRoot to narrow a result set even further. For example, the following where clause will only return groups belonging to the `MY.ZONE` zone.  ``` where=(zones in ('MY.ZONE')) ```  This may be combined with the isRoot filter, as shown below:  ``` where=(isRoot=false AND zones in ('MY.ZONE')) ```  ***Note:*** restrictions include * `AND` is the only supported operator when combining `isRoot` and `zones` filters * Only one zone is supported by the filter * The quoted zone name must be placed in parenthesis — a 400 error will result if these are omitted.  The default sort order for the returned list is for groups to be sorted by ascending displayName. You can override the default by using the **orderBy** parameter. You can specify one of the following fields in the **orderBy** parameter: * id * displayName
    //
    //Future<GroupPaging> listGroups({ int skipCount, int maxItems, BuiltList<String> orderBy, BuiltList<String> include, String where, BuiltList<String> fields }) async
    test('test listGroups', () async {
      // TODO
    });

    // Update group details
    //
    // **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Update details (displayName) for group **groupId**.  You must have admin rights to update a group.
    //
    //Future<GroupEntry> updateGroup(String groupId, GroupBodyUpdate groupBodyUpdate, { BuiltList<String> include, BuiltList<String> fields }) async
    test('test updateGroup', () async {
      // TODO
    });
  });
}
