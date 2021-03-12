import 'package:api_client/api.dart';
import 'package:api_client/api/nodes_api.dart';
import 'package:test/test.dart';

/// tests for NodesApi
void main() {
  final instance = ApiClient().getNodesApi();

  group(NodesApi, () {
    // Copy a node
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Copies the node **nodeId** to the parent folder node **targetParentId**. You specify the **targetParentId** in the request body.  The new node has the same name as the source node unless you specify a new **name** in the request body.  If the source **nodeId** is a folder, then all of its children are also copied.  If the source **nodeId** is a file, it's properties, aspects and tags are copied, it's ratings, comments and locks are not.
    //
    //Future<NodeEntry> copyNode(String nodeId, NodeBodyCopy nodeBodyCopy, { BuiltList<String> include, BuiltList<String> fields }) async
    test('test copyNode', () async {
      // TODO
    });

    // Create node association
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Create an association, with the given association type, between the source **nodeId** and a target node.  **Note:** You can create more than one association by specifying a list of associations in the JSON body like this:  ```JSON [   {      \"targetId\": \"string\",      \"assocType\": \"string\"   },   {     \"targetId\": \"string\",     \"assocType\": \"string\"   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ```
    //
    //Future<AssociationEntry> createAssociation(String nodeId, AssociationBody associationBodyCreate, { BuiltList<String> fields }) async
    test('test createAssociation', () async {
      // TODO
    });

    // Create a node
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Create a node and add it as a primary child of node **nodeId**.  This endpoint supports both JSON and multipart/form-data (file upload).  **Using multipart/form-data**  Use the **filedata** field to represent the content to upload, for example, the following curl command will create a node with the contents of test.txt in the test user's home folder.  ```curl -utest:test -X POST host:port/alfresco/api/-default-/public/alfresco/versions/1/nodes/-my-/children -F filedata=@test.txt```  You can use the **name** field to give an alternative name for the new file.  You can use the **nodeType** field to create a specific type. The default is cm:content.  You can use the **renditions** field to create renditions (e.g. doclib) asynchronously upon upload. Also, as requesting rendition is a background process, any rendition failure (e.g. No transformer is currently available) will not fail the whole upload and has the potential to silently fail.  Use **overwrite** to overwrite an existing file, matched by name. If the file is versionable, the existing content is replaced.  When you overwrite existing content, you can set the **majorVersion** boolean field to **true** to indicate a major version should be created. The default for **majorVersion** is **false**. Setting  **majorVersion** enables versioning of the node, if it is not already versioned.  When you overwrite existing content, you can use the **comment** field to add a version comment that appears in the version history. This also enables versioning of this node, if it is not already versioned.  You can set the **autoRename** boolean field to automatically resolve name clashes. If there is a name clash, then the API method tries to create a unique name using an integer suffix.  You can use the **relativePath** field to specify the folder structure to create relative to the node **nodeId**. Folders in the **relativePath** that do not exist are created before the node is created.  Any other field provided will be treated as a property to set on the newly created node.  **Note:** setting properties of type d:content and d:category are not supported.  **Using JSON**  You must specify at least a **name** and **nodeType**. For example, to create a folder: ```JSON {   \"name\":\"My Folder\",   \"nodeType\":\"cm:folder\" } ```  You can create an empty file like this: ```JSON {   \"name\":\"My text file.txt\",   \"nodeType\":\"cm:content\" } ``` You can update binary content using the ```PUT /nodes/{nodeId}``` API method.  You can create a folder, or other node, inside a folder hierarchy: ```JSON {   \"name\":\"My Special Folder\",   \"nodeType\":\"cm:folder\",   \"relativePath\":\"X/Y/Z\" } ``` The **relativePath** specifies the folder structure to create relative to the node **nodeId**. Folders in the **relativePath** that do not exist are created before the node is created.  You can set properties when you create a new node: ```JSON {   \"name\":\"My Other Folder\",   \"nodeType\":\"cm:folder\",   \"properties\":   {     \"cm:title\":\"Folder title\",     \"cm:description\":\"This is an important folder\"   } } ```  You can set multi-value properties when you create a new node which supports properties of type multiple.  ```JSON {   \"name\":\"My Other Folder\",   \"nodeType\":\"custom:destination\",   \"properties\":   {     \"cm:title\":\"Folder title\",     \"cm:description\":\"This is an important folder\",     \"custom:locations\": [                          \"location X\",                          \"location Y\"                         ]   } } ```  Any missing aspects are applied automatically. For example, **cm:titled** in the JSON shown above. You can set aspects explicitly, if needed, using an **aspectNames** field.  **Note:** setting properties of type d:content and d:category are not supported.  You can also optionally disable (or enable) inherited permissions via *isInheritanceEnabled* flag: ```JSON {   \"permissions\":     {       \"isInheritanceEnabled\": false,       \"locallySet\":         [           {\"authorityId\": \"GROUP_special\", \"name\": \"Read\", \"accessStatus\":\"DENIED\"},           {\"authorityId\": \"testuser\", \"name\": \"Contributor\", \"accessStatus\":\"ALLOWED\"}         ]     } } ```  Typically, for files and folders, the primary children are created within the parent folder using the default \"cm:contains\" assocType. If the content model allows then it is also possible to create primary children with a different assoc type. For example: ```JSON {   \"name\":\"My Node\",   \"nodeType\":\"my:specialNodeType\",   \"association\":   {     \"assocType\":\"my:specialAssocType\"   } } ```  Additional associations can be added after creating a node. You can also add associations at the time the node is created. This is required, for example, if the content model specifies that a node has mandatory associations to one or more existing nodes. You can optionally specify an array of **secondaryChildren** to create one or more secondary child associations, such that the newly created node acts as a parent node. You can optionally specify an array of **targets** to create one or more peer associations such that the newly created node acts as a source node. For example, to associate one or more secondary children at time of creation: ```JSON {   \"name\":\"My Folder\",   \"nodeType\":\"cm:folder\",   \"secondaryChildren\":     [ {\"childId\":\"abcde-01234-...\", \"assocType\":\"my:specialChildAssocType\"} ] } ``` For example, to associate one or more targets at time of creation: ```JSON {   \"name\":\"My Folder\",   \"nodeType\":\"cm:folder\",   \"targets\":     [ {\"targetId\":\"abcde-01234-...\", \"assocType\":\"my:specialPeerAssocType\"} ] } ```  **Note:** You can create more than one child by specifying a list of nodes in the JSON body. For example, the following JSON body creates two folders inside the specified **nodeId**, if the **nodeId** identifies a folder:  ```JSON [   {     \"name\":\"My Folder 1\",     \"nodeType\":\"cm:folder\"   },   {     \"name\":\"My Folder 2\",     \"nodeType\":\"cm:folder\"   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ```
    //
    //Future<NodeEntry> createNode(String nodeId, { bool autoRename, BuiltList<String> include, BuiltList<String> fields, UNKNOWN_BASE_TYPE nodeBodyCreate }) async
    test('test createNode', () async {
      // TODO
    });

    // Create secondary child
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Create a secondary child association, with the given association type, between the parent **nodeId** and a child node.  **Note:** You can create more than one secondary child association by specifying a list of associations in the JSON body like this:  ```JSON [   {     \"childId\": \"string\",     \"assocType\": \"string\"   },   {     \"childId\": \"string\",     \"assocType\": \"string\"   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ```
    //
    //Future<ChildAssociationEntry> createSecondaryChildAssociation(String nodeId, ChildAssociationBody secondaryChildAssociationBodyCreate, { BuiltList<String> fields }) async
    test('test createSecondaryChildAssociation', () async {
      // TODO
    });

    // Delete node association(s)
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Delete an association, or associations, from the source **nodeId* to a target node for the given association type.  If the association type is **not** specified, then all peer associations, of any type, in the direction from source to target, are deleted.  **Note:** After removal of the peer association, or associations, from source to target, the two nodes may still have peer associations in the other direction.
    //
    //Future deleteAssociation(String nodeId, String targetId, { String assocType }) async
    test('test deleteAssociation', () async {
      // TODO
    });

    // Delete a node
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Deletes the node **nodeId**.  If **nodeId** is a folder, then its children are also deleted.  Deleted nodes move to the trashcan unless the **permanent** query parameter is **true** and the current user is the owner of the node or an admin.  Deleting a node deletes it from its primary parent and also from any secondary parents. Peer associations are also deleted, where the deleted node is either a source or target of an association. This applies recursively to any hierarchy of primary children of the deleted node.  **Note:** If the node is not permanently deleted, and is later successfully restored to its former primary parent, then the primary child association is restored. This applies recursively for any primary children. No other secondary child associations or peer associations are restored for any of the nodes in the primary parent-child hierarchy of restored nodes, regardless of whether the original associations were to nodes inside or outside the restored hierarchy.
    //
    //Future deleteNode(String nodeId, { bool permanent }) async
    test('test deleteNode', () async {
      // TODO
    });

    // Delete secondary child or children
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Delete secondary child associations between the parent **nodeId** and child nodes for the given association type.  If the association type is **not** specified, then all secondary child associations, of any type in the direction from parent to secondary child, will be deleted. The child will still have a primary parent and may still be associated as a secondary child with other secondary parents.
    //
    //Future deleteSecondaryChildAssociation(String nodeId, String childId, { String assocType }) async
    test('test deleteSecondaryChildAssociation', () async {
      // TODO
    });

    // Get a node
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Get information for node **nodeId**.  You can use the **include** parameter to return additional information.
    //
    //Future<NodeEntry> getNode(String nodeId, { BuiltList<String> include, String relativePath, BuiltList<String> fields }) async
    test('test getNode', () async {
      // TODO
    });

    // Get node content
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the content of the node with identifier **nodeId**.
    //
    //Future<Uint8List> getNodeContent(String nodeId, { bool attachment, DateTime ifModifiedSince, String range }) async
    test('test getNodeContent', () async {
      // TODO
    });

    // List node children
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of children of the parent node **nodeId**.  Minimal information for each child is returned by default.  You can use the **include** parameter to return additional information.  The list of child nodes includes primary children and secondary children, if there are any.  You can use the **include** parameter (include=association) to return child association details for each child, including the **assocTyp**e and the **isPrimary** flag.  The default sort order for the returned list is for folders to be sorted before files, and by ascending name.  You can override the default using **orderBy** to specify one or more fields to sort by. The default order is always ascending, but you can use an optional **ASC** or **DESC** modifier to specify an ascending or descending sort order.  For example, specifying ```orderBy=name DESC``` returns a mixed folder/file list in descending **name** order.  You can use any of the following fields to order the results: * isFolder * name * mimeType * nodeType * sizeInBytes * modifiedAt * createdAt * modifiedByUser * createdByUser
    //
    //Future<NodeChildAssociationPaging> listNodeChildren(String nodeId, { int skipCount, int maxItems, BuiltList<String> orderBy, String where, BuiltList<String> include, String relativePath, bool includeSource, BuiltList<String> fields }) async
    test('test listNodeChildren', () async {
      // TODO
    });

    // List parents
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of parent nodes that are associated with the current child **nodeId**.  The list includes both the primary parent and any secondary parents.
    //
    //Future<NodeAssociationPaging> listParents(String nodeId, { String where, BuiltList<String> include, int skipCount, int maxItems, bool includeSource, BuiltList<String> fields }) async
    test('test listParents', () async {
      // TODO
    });

    // List secondary children
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of secondary child nodes that are associated with the current parent **nodeId**, via a secondary child association.
    //
    //Future<NodeChildAssociationPaging> listSecondaryChildren(String nodeId, { String where, BuiltList<String> include, int skipCount, int maxItems, bool includeSource, BuiltList<String> fields }) async
    test('test listSecondaryChildren', () async {
      // TODO
    });

    // List source associations
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of source nodes that are associated with the current target **nodeId**.
    //
    //Future<NodeAssociationPaging> listSourceAssociations(String nodeId, { String where, BuiltList<String> include, BuiltList<String> fields }) async
    test('test listSourceAssociations', () async {
      // TODO
    });

    // List target associations
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of target nodes that are associated with the current source **nodeId**.
    //
    //Future<NodeAssociationPaging> listTargetAssociations(String nodeId, { String where, BuiltList<String> include, BuiltList<String> fields }) async
    test('test listTargetAssociations', () async {
      // TODO
    });

    // Lock a node
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Places a lock on node **nodeId**.  **Note:** you can only lock files. More specifically, a node can only be locked if it is of type `cm:content` or a subtype of `cm:content`.  The lock is owned by the current user, and prevents other users or processes from making updates to the node until the lock is released.  If the **timeToExpire** is not set or is zero, then the lock never expires.  Otherwise, the **timeToExpire** is the number of seconds before the lock expires.  When a lock expires, the lock is released.  If the node is already locked, and the user is the lock owner, then the lock is renewed with the new **timeToExpire**.  By default, a lock is applied that allows the owner to update or delete the node. You can use **type** to change the lock type to one of the following: * **ALLOW_OWNER_CHANGES** (default) changes to the node can be made only by the lock owner. This enum is the same value as the deprecated WRITE_LOCK described in `org.alfresco.service.cmr.lock.LockType` in the Alfresco Public Java API. This is the default value. * **FULL** no changes by any user are allowed. This enum is the same value as the deprecated READ_ONLY_LOCK described in `org.alfresco.service.cmr.lock.LockType` in the Alfresco Public Java API.  By default, a lock is persisted in the database. You can create a volatile in-memory lock by setting the **lifetime** property to EPHEMERAL. You might choose use EPHEMERAL locks, for example, if you are taking frequent short-term locks that you don't need to be kept over a restart of the repository. In this case you don't need the overhead of writing the locks to the database.  If a lock on the node cannot be taken, then an error is returned.
    //
    //Future<NodeEntry> lockNode(String nodeId, NodeBodyLock nodeBodyLock, { BuiltList<String> include, BuiltList<String> fields }) async
    test('test lockNode', () async {
      // TODO
    });

    // Move a node
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Move the node **nodeId** to the parent folder node **targetParentId**.  The **targetParentId** is specified in the in request body.  The moved node retains its name unless you specify a new **name** in the request body.  If the source **nodeId** is a folder, then its children are also moved.  The move will effectively change the primary parent.
    //
    //Future<NodeEntry> moveNode(String nodeId, NodeBodyMove nodeBodyMove, { BuiltList<String> include, BuiltList<String> fields }) async
    test('test moveNode', () async {
      // TODO
    });

    // Generate a direct access content url
    //
    // **Note:** this endpoint is available in Alfresco 7.0 and newer versions.  Generate a direct access content url for the given **nodeId**. Optionally the expiry at date could be set, so the direct access link would become invalid when the expiry date is reached. For example:  ```JSON  {    \"expiresAt\": \"2017-03-23T23:00:00.000+0000\"  } ``` Or optionally the validFor (in seconds) could be set, so the direct access link is valid for that length of time.  ```JSON  {    \"validFor\": \"60\"  } ```  **Note:** If an expiryAt date or validFor time length isn't provided then a default of 300 seconds (5 minutes) validity time is used if not configured otherwise. **Note:** It is up to the actual ContentStore implementation if it can fulfil this request or not.
    //
    //Future<DirectAccessUrlEntry> requestContentUrl(String nodeId, { DirectAccessUrlBodyCreate requestContentUrlBodyCreate }) async
    test('test requestContentUrl', () async {
      // TODO
    });

    // Generate a direct access content url
    //
    // **Note:** this endpoint is available in Alfresco 7.0 and newer versions.  Generate a direct access content url for the given **nodeId**. Optionally the expiry at date could be set, so the direct access link would become invalid when the expiry date is reached. For example:  ```JSON  {    \"expiresAt\": \"2017-03-23T23:00:00.000+0000\"  } ``` Or optionally the validFor (in seconds) could be set, so the direct access link is valid for that length of time.  ```JSON  {    \"validFor\": \"60\"  } ```  **Note:** If an expiryAt date or validFor time length isn't provided then a default of 300 seconds (5 minutes) validity time is used if not configured otherwise. **Note:** It is up to the actual ContentStore implementation if it can fulfil this request or not.
    //
    //Future<DirectAccessUrlEntry> requestContentUrl_0(String nodeId, String renditionId, { DirectAccessUrlBodyCreate requestContentUrlBodyCreate }) async
    test('test requestContentUrl_0', () async {
      // TODO
    });

    // Generate a direct access content url
    //
    // **Note:** this endpoint is available in Alfresco 7.0 and newer versions.  Generate a direct access content url for the given **nodeId**. Optionally the expiry at date could be set, so the direct access link would become invalid when the expiry date is reached. For example:  ```JSON  {    \"expiresAt\": \"2017-03-23T23:00:00.000+0000\"  } ``` Or optionally the validFor (in seconds) could be set, so the direct access link is valid for that length of time.  ```JSON  {    \"validFor\": \"60\"  } ```  **Note:** If an expiryAt date or validFor time length isn't provided then a default of 300 seconds (5 minutes) validity time is used if not configured otherwise. **Note:** It is up to the actual ContentStore implementation if it can fulfil this request or not.
    //
    //Future<DirectAccessUrlEntry> requestContentUrl_1(String nodeId, String versionId, { DirectAccessUrlBodyCreate requestContentUrlBodyCreate }) async
    test('test requestContentUrl_1', () async {
      // TODO
    });

    // Generate a direct access content url
    //
    // **Note:** this endpoint is available in Alfresco 7.0 and newer versions.  Generate a direct access content url for the given **nodeId**. Optionally the expiry at date could be set, so the direct access link would become invalid when the expiry date is reached. For example:  ```JSON  {    \"expiresAt\": \"2017-03-23T23:00:00.000+0000\"  } ``` Or optionally the validFor (in seconds) could be set, so the direct access link is valid for that length of time.  ```JSON  {    \"validFor\": \"60\"  } ```  **Note:** If an expiryAt date or validFor time length isn't provided then a default of 300 seconds (5 minutes) validity time is used if not configured otherwise. **Note:** It is up to the actual ContentStore implementation if it can fulfil this request or not.
    //
    //Future<DirectAccessUrlEntry> requestContentUrl_2(String nodeId, String versionId, String renditionId, { DirectAccessUrlBodyCreate requestContentUrlBodyCreate }) async
    test('test requestContentUrl_2', () async {
      // TODO
    });

    // Unlock a node
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Deletes a lock on node **nodeId**.  The current user must be the owner of the locks or have admin rights, otherwise an error is returned.  If a lock on the node cannot be released, then an error is returned.
    //
    //Future<NodeEntry> unlockNode(String nodeId, { BuiltList<String> include, BuiltList<String> fields }) async
    test('test unlockNode', () async {
      // TODO
    });

    // Update a node
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Updates the node **nodeId**. For example, you can rename a file or folder: ```JSON {   \"name\":\"My new name\" } ``` You can also set or update one or more properties: ```JSON {   \"properties\":   {     \"cm:title\":\"Folder title\"   } } ``` You can update multi-value properties of a node which supports properties of type multiple.  ```JSON {   \"name\":\"My Other Folder\",   \"nodeType\":\"custom:destination\",   \"properties\":   {     \"cm:title\":\"Folder title\",     \"cm:description\":\"This is an important folder\",     \"custom:locations\": [                          \"location NewX\",                          \"location NewY\"                         ]   } } ```  **Note:** setting properties of type d:content and d:category are not supported.  **Note:** if you want to add or remove aspects, then you must use **GET /nodes/{nodeId}** first to get the complete set of *aspectNames*.  You can add (or remove) *locallySet* permissions, if any, in addition to any inherited permissions. You can also optionally disable (or re-enable) inherited permissions via *isInheritanceEnabled* flag: ```JSON {   \"permissions\":     {       \"isInheritanceEnabled\": false,       \"locallySet\":         [           {\"authorityId\": \"GROUP_special\", \"name\": \"Read\", \"accessStatus\":\"DENIED\"},           {\"authorityId\": \"testuser\", \"name\": \"Contributor\", \"accessStatus\":\"ALLOWED\"}         ]     } } ``` **Note:** if you want to add or remove locally set permissions then you must use **GET /nodes/{nodeId}** first to get the complete set of *locallySet* permissions.  **Note:** Currently there is no optimistic locking for updates, so they are applied in \"last one wins\" order.
    //
    //Future<NodeEntry> updateNode(String nodeId, NodeBodyUpdate nodeBodyUpdate, { BuiltList<String> include, BuiltList<String> fields }) async
    test('test updateNode', () async {
      // TODO
    });

    // Update node content
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Updates the content of the node with identifier **nodeId**.  The request body for this endpoint can be any text or binary stream.  The **majorVersion** and **comment** parameters can be used to control versioning behaviour. If the content is versionable, a new minor version is created by default.  Optionally a new **name** parameter can also be specified that must be unique within the parent folder. If specified and valid then this will rename the node. If invalid then an error is returned and the content is not updated.  **Note:** This API method accepts any content type, but for testing with this tool text based content can be provided. This is because the OpenAPI Specification does not allow a wildcard to be provided or the ability for tooling to accept an arbitrary file.
    //
    //Future<NodeEntry> updateNodeContent(String nodeId, Uint8List contentBodyUpdate, { bool majorVersion, String comment, String name, BuiltList<String> include, BuiltList<String> fields }) async
    test('test updateNodeContent', () async {
      // TODO
    });
  });
}
