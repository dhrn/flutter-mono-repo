//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:api_client/model/association_entry.dart';
import 'package:api_client/model/node_body_lock.dart';
import 'package:api_client/model/unknown_base_type.dart';
import 'package:api_client/model/node_body_update.dart';
import 'package:api_client/model/association_body.dart';
import 'package:api_client/model/direct_access_url_body_create.dart';
import 'package:api_client/model/error.dart';
import 'package:api_client/model/child_association_body.dart';
import 'package:api_client/model/node_entry.dart';
import 'package:api_client/model/node_body_copy.dart';
import 'package:api_client/model/node_association_paging.dart';
import 'package:api_client/model/direct_access_url_entry.dart';
import 'package:api_client/model/node_body_move.dart';
import 'package:api_client/model/child_association_entry.dart';
import 'package:api_client/model/node_child_association_paging.dart';
import 'dart:typed_data';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';

class NodesApi {
  final Dio _dio;

  final Serializers _serializers;

  const NodesApi(this._dio, this._serializers);

  /// Copy a node
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Copies the node **nodeId** to the parent folder node **targetParentId**. You specify the **targetParentId** in the request body.  The new node has the same name as the source node unless you specify a new **name** in the request body.  If the source **nodeId** is a folder, then all of its children are also copied.  If the source **nodeId** is a file, it's properties, aspects and tags are copied, it's ratings, comments and locks are not.
  Future<Response<NodeEntry>> copyNode(
    String nodeId,
    NodeBodyCopy nodeBodyCopy, {
    BuiltList<String> include,
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/copy'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'include'] = include;
    queryParams[r'fields'] = fields;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[
      'application/json',
    ];

    final bodySerializer = _serializers.serializerForType(NodeBodyCopy) as Serializer<NodeBodyCopy>;
    final serializedBody = _serializers.serializeWith(bodySerializer, nodeBodyCopy);
    final jsonnodeBodyCopy = json.encode(serializedBody);
    bodyData = jsonnodeBodyCopy;

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'post'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(NodeEntry) as Serializer<NodeEntry>;
      final data = _serializers.deserializeWith<NodeEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<NodeEntry>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  /// Create node association
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Create an association, with the given association type, between the source **nodeId** and a target node.  **Note:** You can create more than one association by specifying a list of associations in the JSON body like this:  ```JSON [   {      \"targetId\": \"string\",      \"assocType\": \"string\"   },   {     \"targetId\": \"string\",     \"assocType\": \"string\"   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ```
  Future<Response<AssociationEntry>> createAssociation(
    String nodeId,
    AssociationBody associationBodyCreate, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/targets'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'fields'] = fields;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[
      'application/json',
    ];

    final bodySerializer = _serializers.serializerForType(AssociationBody) as Serializer<AssociationBody>;
    final serializedBody = _serializers.serializeWith(bodySerializer, associationBodyCreate);
    final jsonassociationBodyCreate = json.encode(serializedBody);
    bodyData = jsonassociationBodyCreate;

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'post'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(AssociationEntry) as Serializer<AssociationEntry>;
      final data = _serializers.deserializeWith<AssociationEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<AssociationEntry>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  /// Create a node
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Create a node and add it as a primary child of node **nodeId**.  This endpoint supports both JSON and multipart/form-data (file upload).  **Using multipart/form-data**  Use the **filedata** field to represent the content to upload, for example, the following curl command will create a node with the contents of test.txt in the test user's home folder.  ```curl -utest:test -X POST host:port/alfresco/api/-default-/public/alfresco/versions/1/nodes/-my-/children -F filedata=@test.txt```  You can use the **name** field to give an alternative name for the new file.  You can use the **nodeType** field to create a specific type. The default is cm:content.  You can use the **renditions** field to create renditions (e.g. doclib) asynchronously upon upload. Also, as requesting rendition is a background process, any rendition failure (e.g. No transformer is currently available) will not fail the whole upload and has the potential to silently fail.  Use **overwrite** to overwrite an existing file, matched by name. If the file is versionable, the existing content is replaced.  When you overwrite existing content, you can set the **majorVersion** boolean field to **true** to indicate a major version should be created. The default for **majorVersion** is **false**. Setting  **majorVersion** enables versioning of the node, if it is not already versioned.  When you overwrite existing content, you can use the **comment** field to add a version comment that appears in the version history. This also enables versioning of this node, if it is not already versioned.  You can set the **autoRename** boolean field to automatically resolve name clashes. If there is a name clash, then the API method tries to create a unique name using an integer suffix.  You can use the **relativePath** field to specify the folder structure to create relative to the node **nodeId**. Folders in the **relativePath** that do not exist are created before the node is created.  Any other field provided will be treated as a property to set on the newly created node.  **Note:** setting properties of type d:content and d:category are not supported.  **Using JSON**  You must specify at least a **name** and **nodeType**. For example, to create a folder: ```JSON {   \"name\":\"My Folder\",   \"nodeType\":\"cm:folder\" } ```  You can create an empty file like this: ```JSON {   \"name\":\"My text file.txt\",   \"nodeType\":\"cm:content\" } ``` You can update binary content using the ```PUT /nodes/{nodeId}``` API method.  You can create a folder, or other node, inside a folder hierarchy: ```JSON {   \"name\":\"My Special Folder\",   \"nodeType\":\"cm:folder\",   \"relativePath\":\"X/Y/Z\" } ``` The **relativePath** specifies the folder structure to create relative to the node **nodeId**. Folders in the **relativePath** that do not exist are created before the node is created.  You can set properties when you create a new node: ```JSON {   \"name\":\"My Other Folder\",   \"nodeType\":\"cm:folder\",   \"properties\":   {     \"cm:title\":\"Folder title\",     \"cm:description\":\"This is an important folder\"   } } ```  You can set multi-value properties when you create a new node which supports properties of type multiple.  ```JSON {   \"name\":\"My Other Folder\",   \"nodeType\":\"custom:destination\",   \"properties\":   {     \"cm:title\":\"Folder title\",     \"cm:description\":\"This is an important folder\",     \"custom:locations\": [                          \"location X\",                          \"location Y\"                         ]   } } ```  Any missing aspects are applied automatically. For example, **cm:titled** in the JSON shown above. You can set aspects explicitly, if needed, using an **aspectNames** field.  **Note:** setting properties of type d:content and d:category are not supported.  You can also optionally disable (or enable) inherited permissions via *isInheritanceEnabled* flag: ```JSON {   \"permissions\":     {       \"isInheritanceEnabled\": false,       \"locallySet\":         [           {\"authorityId\": \"GROUP_special\", \"name\": \"Read\", \"accessStatus\":\"DENIED\"},           {\"authorityId\": \"testuser\", \"name\": \"Contributor\", \"accessStatus\":\"ALLOWED\"}         ]     } } ```  Typically, for files and folders, the primary children are created within the parent folder using the default \"cm:contains\" assocType. If the content model allows then it is also possible to create primary children with a different assoc type. For example: ```JSON {   \"name\":\"My Node\",   \"nodeType\":\"my:specialNodeType\",   \"association\":   {     \"assocType\":\"my:specialAssocType\"   } } ```  Additional associations can be added after creating a node. You can also add associations at the time the node is created. This is required, for example, if the content model specifies that a node has mandatory associations to one or more existing nodes. You can optionally specify an array of **secondaryChildren** to create one or more secondary child associations, such that the newly created node acts as a parent node. You can optionally specify an array of **targets** to create one or more peer associations such that the newly created node acts as a source node. For example, to associate one or more secondary children at time of creation: ```JSON {   \"name\":\"My Folder\",   \"nodeType\":\"cm:folder\",   \"secondaryChildren\":     [ {\"childId\":\"abcde-01234-...\", \"assocType\":\"my:specialChildAssocType\"} ] } ``` For example, to associate one or more targets at time of creation: ```JSON {   \"name\":\"My Folder\",   \"nodeType\":\"cm:folder\",   \"targets\":     [ {\"targetId\":\"abcde-01234-...\", \"assocType\":\"my:specialPeerAssocType\"} ] } ```  **Note:** You can create more than one child by specifying a list of nodes in the JSON body. For example, the following JSON body creates two folders inside the specified **nodeId**, if the **nodeId** identifies a folder:  ```JSON [   {     \"name\":\"My Folder 1\",     \"nodeType\":\"cm:folder\"   },   {     \"name\":\"My Folder 2\",     \"nodeType\":\"cm:folder\"   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ```
  Future<Response<NodeEntry>> createNode(
    String nodeId, {
    bool autoRename,
    BuiltList<String> include,
    BuiltList<String> fields,
    UNKNOWN_BASE_TYPE nodeBodyCreate,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/children'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'autoRename'] = autoRename;
    queryParams[r'include'] = include;
    queryParams[r'fields'] = fields;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[
      'application/json',
      'multipart/form-data',
    ];

    final bodySerializer = _serializers.serializerForType(UNKNOWN_BASE_TYPE) as Serializer<UNKNOWN_BASE_TYPE>;
    final serializedBody = _serializers.serializeWith(bodySerializer, nodeBodyCreate);
    final jsonnodeBodyCreate = json.encode(serializedBody);
    bodyData = jsonnodeBodyCreate;

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'post'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(NodeEntry) as Serializer<NodeEntry>;
      final data = _serializers.deserializeWith<NodeEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<NodeEntry>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  /// Create secondary child
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Create a secondary child association, with the given association type, between the parent **nodeId** and a child node.  **Note:** You can create more than one secondary child association by specifying a list of associations in the JSON body like this:  ```JSON [   {     \"childId\": \"string\",     \"assocType\": \"string\"   },   {     \"childId\": \"string\",     \"assocType\": \"string\"   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ```
  Future<Response<ChildAssociationEntry>> createSecondaryChildAssociation(
    String nodeId,
    ChildAssociationBody secondaryChildAssociationBodyCreate, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/secondary-children'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'fields'] = fields;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[
      'application/json',
    ];

    final bodySerializer = _serializers.serializerForType(ChildAssociationBody) as Serializer<ChildAssociationBody>;
    final serializedBody = _serializers.serializeWith(bodySerializer, secondaryChildAssociationBodyCreate);
    final jsonsecondaryChildAssociationBodyCreate = json.encode(serializedBody);
    bodyData = jsonsecondaryChildAssociationBodyCreate;

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'post'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(ChildAssociationEntry) as Serializer<ChildAssociationEntry>;
      final data = _serializers.deserializeWith<ChildAssociationEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<ChildAssociationEntry>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  /// Delete node association(s)
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Delete an association, or associations, from the source **nodeId* to a target node for the given association type.  If the association type is **not** specified, then all peer associations, of any type, in the direction from source to target, are deleted.  **Note:** After removal of the peer association, or associations, from source to target, the two nodes may still have peer associations in the other direction.
  Future<Response<void>> deleteAssociation(
    String nodeId,
    String targetId, {
    String assocType,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/targets/{targetId}'
        .replaceAll('{' r'nodeId' '}', nodeId.toString())
        .replaceAll('{' r'targetId' '}', targetId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'assocType'] = assocType;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[];

    return _dio.request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'delete'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  /// Delete a node
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Deletes the node **nodeId**.  If **nodeId** is a folder, then its children are also deleted.  Deleted nodes move to the trashcan unless the **permanent** query parameter is **true** and the current user is the owner of the node or an admin.  Deleting a node deletes it from its primary parent and also from any secondary parents. Peer associations are also deleted, where the deleted node is either a source or target of an association. This applies recursively to any hierarchy of primary children of the deleted node.  **Note:** If the node is not permanently deleted, and is later successfully restored to its former primary parent, then the primary child association is restored. This applies recursively for any primary children. No other secondary child associations or peer associations are restored for any of the nodes in the primary parent-child hierarchy of restored nodes, regardless of whether the original associations were to nodes inside or outside the restored hierarchy.
  Future<Response<void>> deleteNode(
    String nodeId, {
    bool permanent,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'permanent'] = permanent;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[];

    return _dio.request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'delete'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  /// Delete secondary child or children
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Delete secondary child associations between the parent **nodeId** and child nodes for the given association type.  If the association type is **not** specified, then all secondary child associations, of any type in the direction from parent to secondary child, will be deleted. The child will still have a primary parent and may still be associated as a secondary child with other secondary parents.
  Future<Response<void>> deleteSecondaryChildAssociation(
    String nodeId,
    String childId, {
    String assocType,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/secondary-children/{childId}'
        .replaceAll('{' r'nodeId' '}', nodeId.toString())
        .replaceAll('{' r'childId' '}', childId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'assocType'] = assocType;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[];

    return _dio.request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'delete'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  /// Get a node
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Get information for node **nodeId**.  You can use the **include** parameter to return additional information.
  Future<Response<NodeEntry>> getNode(
    String nodeId, {
    BuiltList<String> include,
    String relativePath,
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'include'] = include;
    queryParams[r'relativePath'] = relativePath;
    queryParams[r'fields'] = fields;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[];

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'get'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(NodeEntry) as Serializer<NodeEntry>;
      final data = _serializers.deserializeWith<NodeEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<NodeEntry>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  /// Get node content
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the content of the node with identifier **nodeId**.
  Future<Response<Uint8List>> getNodeContent(
    String nodeId, {
    bool attachment,
    DateTime ifModifiedSince,
    String range,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/content'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    headerParams[r'If-Modified-Since'] = ifModifiedSince;
    headerParams[r'Range'] = range;
    queryParams[r'attachment'] = attachment;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[];

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'get'.toUpperCase(),
        responseType: ResponseType.bytes,
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final data = response.data;

      return Response<Uint8List>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  /// List node children
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of children of the parent node **nodeId**.  Minimal information for each child is returned by default.  You can use the **include** parameter to return additional information.  The list of child nodes includes primary children and secondary children, if there are any.  You can use the **include** parameter (include=association) to return child association details for each child, including the **assocTyp**e and the **isPrimary** flag.  The default sort order for the returned list is for folders to be sorted before files, and by ascending name.  You can override the default using **orderBy** to specify one or more fields to sort by. The default order is always ascending, but you can use an optional **ASC** or **DESC** modifier to specify an ascending or descending sort order.  For example, specifying ```orderBy=name DESC``` returns a mixed folder/file list in descending **name** order.  You can use any of the following fields to order the results: * isFolder * name * mimeType * nodeType * sizeInBytes * modifiedAt * createdAt * modifiedByUser * createdByUser
  Future<Response<NodeChildAssociationPaging>> listNodeChildren(
    String nodeId, {
    int skipCount,
    int maxItems,
    BuiltList<String> orderBy,
    String where,
    BuiltList<String> include,
    String relativePath,
    bool includeSource,
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/children'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'skipCount'] = skipCount;
    queryParams[r'maxItems'] = maxItems;
    queryParams[r'orderBy'] = orderBy;
    queryParams[r'where'] = where;
    queryParams[r'include'] = include;
    queryParams[r'relativePath'] = relativePath;
    queryParams[r'includeSource'] = includeSource;
    queryParams[r'fields'] = fields;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[];

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'get'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer =
          _serializers.serializerForType(NodeChildAssociationPaging) as Serializer<NodeChildAssociationPaging>;
      final data = _serializers.deserializeWith<NodeChildAssociationPaging>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<NodeChildAssociationPaging>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  /// List parents
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of parent nodes that are associated with the current child **nodeId**.  The list includes both the primary parent and any secondary parents.
  Future<Response<NodeAssociationPaging>> listParents(
    String nodeId, {
    String where,
    BuiltList<String> include,
    int skipCount,
    int maxItems,
    bool includeSource,
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/parents'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'where'] = where;
    queryParams[r'include'] = include;
    queryParams[r'skipCount'] = skipCount;
    queryParams[r'maxItems'] = maxItems;
    queryParams[r'includeSource'] = includeSource;
    queryParams[r'fields'] = fields;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[];

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'get'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(NodeAssociationPaging) as Serializer<NodeAssociationPaging>;
      final data = _serializers.deserializeWith<NodeAssociationPaging>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<NodeAssociationPaging>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  /// List secondary children
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of secondary child nodes that are associated with the current parent **nodeId**, via a secondary child association.
  Future<Response<NodeChildAssociationPaging>> listSecondaryChildren(
    String nodeId, {
    String where,
    BuiltList<String> include,
    int skipCount,
    int maxItems,
    bool includeSource,
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/secondary-children'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'where'] = where;
    queryParams[r'include'] = include;
    queryParams[r'skipCount'] = skipCount;
    queryParams[r'maxItems'] = maxItems;
    queryParams[r'includeSource'] = includeSource;
    queryParams[r'fields'] = fields;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[];

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'get'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer =
          _serializers.serializerForType(NodeChildAssociationPaging) as Serializer<NodeChildAssociationPaging>;
      final data = _serializers.deserializeWith<NodeChildAssociationPaging>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<NodeChildAssociationPaging>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  /// List source associations
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of source nodes that are associated with the current target **nodeId**.
  Future<Response<NodeAssociationPaging>> listSourceAssociations(
    String nodeId, {
    String where,
    BuiltList<String> include,
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/sources'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'where'] = where;
    queryParams[r'include'] = include;
    queryParams[r'fields'] = fields;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[];

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'get'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(NodeAssociationPaging) as Serializer<NodeAssociationPaging>;
      final data = _serializers.deserializeWith<NodeAssociationPaging>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<NodeAssociationPaging>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  /// List target associations
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of target nodes that are associated with the current source **nodeId**.
  Future<Response<NodeAssociationPaging>> listTargetAssociations(
    String nodeId, {
    String where,
    BuiltList<String> include,
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/targets'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'where'] = where;
    queryParams[r'include'] = include;
    queryParams[r'fields'] = fields;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[];

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'get'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(NodeAssociationPaging) as Serializer<NodeAssociationPaging>;
      final data = _serializers.deserializeWith<NodeAssociationPaging>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<NodeAssociationPaging>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  /// Lock a node
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Places a lock on node **nodeId**.  **Note:** you can only lock files. More specifically, a node can only be locked if it is of type `cm:content` or a subtype of `cm:content`.  The lock is owned by the current user, and prevents other users or processes from making updates to the node until the lock is released.  If the **timeToExpire** is not set or is zero, then the lock never expires.  Otherwise, the **timeToExpire** is the number of seconds before the lock expires.  When a lock expires, the lock is released.  If the node is already locked, and the user is the lock owner, then the lock is renewed with the new **timeToExpire**.  By default, a lock is applied that allows the owner to update or delete the node. You can use **type** to change the lock type to one of the following: * **ALLOW_OWNER_CHANGES** (default) changes to the node can be made only by the lock owner. This enum is the same value as the deprecated WRITE_LOCK described in `org.alfresco.service.cmr.lock.LockType` in the Alfresco Public Java API. This is the default value. * **FULL** no changes by any user are allowed. This enum is the same value as the deprecated READ_ONLY_LOCK described in `org.alfresco.service.cmr.lock.LockType` in the Alfresco Public Java API.  By default, a lock is persisted in the database. You can create a volatile in-memory lock by setting the **lifetime** property to EPHEMERAL. You might choose use EPHEMERAL locks, for example, if you are taking frequent short-term locks that you don't need to be kept over a restart of the repository. In this case you don't need the overhead of writing the locks to the database.  If a lock on the node cannot be taken, then an error is returned.
  Future<Response<NodeEntry>> lockNode(
    String nodeId,
    NodeBodyLock nodeBodyLock, {
    BuiltList<String> include,
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/lock'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'include'] = include;
    queryParams[r'fields'] = fields;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[
      'application/json',
    ];

    final bodySerializer = _serializers.serializerForType(NodeBodyLock) as Serializer<NodeBodyLock>;
    final serializedBody = _serializers.serializeWith(bodySerializer, nodeBodyLock);
    final jsonnodeBodyLock = json.encode(serializedBody);
    bodyData = jsonnodeBodyLock;

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'post'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(NodeEntry) as Serializer<NodeEntry>;
      final data = _serializers.deserializeWith<NodeEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<NodeEntry>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  /// Move a node
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Move the node **nodeId** to the parent folder node **targetParentId**.  The **targetParentId** is specified in the in request body.  The moved node retains its name unless you specify a new **name** in the request body.  If the source **nodeId** is a folder, then its children are also moved.  The move will effectively change the primary parent.
  Future<Response<NodeEntry>> moveNode(
    String nodeId,
    NodeBodyMove nodeBodyMove, {
    BuiltList<String> include,
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/move'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'include'] = include;
    queryParams[r'fields'] = fields;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[
      'application/json',
    ];

    final bodySerializer = _serializers.serializerForType(NodeBodyMove) as Serializer<NodeBodyMove>;
    final serializedBody = _serializers.serializeWith(bodySerializer, nodeBodyMove);
    final jsonnodeBodyMove = json.encode(serializedBody);
    bodyData = jsonnodeBodyMove;

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'post'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(NodeEntry) as Serializer<NodeEntry>;
      final data = _serializers.deserializeWith<NodeEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<NodeEntry>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  /// Generate a direct access content url
  ///
  /// **Note:** this endpoint is available in Alfresco 7.0 and newer versions.  Generate a direct access content url for the given **nodeId**. Optionally the expiry at date could be set, so the direct access link would become invalid when the expiry date is reached. For example:  ```JSON  {    \"expiresAt\": \"2017-03-23T23:00:00.000+0000\"  } ``` Or optionally the validFor (in seconds) could be set, so the direct access link is valid for that length of time.  ```JSON  {    \"validFor\": \"60\"  } ```  **Note:** If an expiryAt date or validFor time length isn't provided then a default of 300 seconds (5 minutes) validity time is used if not configured otherwise. **Note:** It is up to the actual ContentStore implementation if it can fulfil this request or not.
  Future<Response<DirectAccessUrlEntry>> requestContentUrl(
    String nodeId, {
    DirectAccessUrlBodyCreate requestContentUrlBodyCreate,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/request-content-url'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[
      'application/json',
    ];

    final bodySerializer =
        _serializers.serializerForType(DirectAccessUrlBodyCreate) as Serializer<DirectAccessUrlBodyCreate>;
    final serializedBody = _serializers.serializeWith(bodySerializer, requestContentUrlBodyCreate);
    final jsonrequestContentUrlBodyCreate = json.encode(serializedBody);
    bodyData = jsonrequestContentUrlBodyCreate;

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'post'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(DirectAccessUrlEntry) as Serializer<DirectAccessUrlEntry>;
      final data = _serializers.deserializeWith<DirectAccessUrlEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<DirectAccessUrlEntry>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  /// Generate a direct access content url
  ///
  /// **Note:** this endpoint is available in Alfresco 7.0 and newer versions.  Generate a direct access content url for the given **nodeId**. Optionally the expiry at date could be set, so the direct access link would become invalid when the expiry date is reached. For example:  ```JSON  {    \"expiresAt\": \"2017-03-23T23:00:00.000+0000\"  } ``` Or optionally the validFor (in seconds) could be set, so the direct access link is valid for that length of time.  ```JSON  {    \"validFor\": \"60\"  } ```  **Note:** If an expiryAt date or validFor time length isn't provided then a default of 300 seconds (5 minutes) validity time is used if not configured otherwise. **Note:** It is up to the actual ContentStore implementation if it can fulfil this request or not.
  Future<Response<DirectAccessUrlEntry>> requestContentUrl_1(
    String nodeId,
    String renditionId, {
    DirectAccessUrlBodyCreate requestContentUrlBodyCreate,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/renditions/{renditionId}/request-content-url'
        .replaceAll('{' r'nodeId' '}', nodeId.toString())
        .replaceAll('{' r'renditionId' '}', renditionId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[
      'application/json',
    ];

    final bodySerializer =
        _serializers.serializerForType(DirectAccessUrlBodyCreate) as Serializer<DirectAccessUrlBodyCreate>;
    final serializedBody = _serializers.serializeWith(bodySerializer, requestContentUrlBodyCreate);
    final jsonrequestContentUrlBodyCreate = json.encode(serializedBody);
    bodyData = jsonrequestContentUrlBodyCreate;

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'post'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(DirectAccessUrlEntry) as Serializer<DirectAccessUrlEntry>;
      final data = _serializers.deserializeWith<DirectAccessUrlEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<DirectAccessUrlEntry>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  /// Generate a direct access content url
  ///
  /// **Note:** this endpoint is available in Alfresco 7.0 and newer versions.  Generate a direct access content url for the given **nodeId**. Optionally the expiry at date could be set, so the direct access link would become invalid when the expiry date is reached. For example:  ```JSON  {    \"expiresAt\": \"2017-03-23T23:00:00.000+0000\"  } ``` Or optionally the validFor (in seconds) could be set, so the direct access link is valid for that length of time.  ```JSON  {    \"validFor\": \"60\"  } ```  **Note:** If an expiryAt date or validFor time length isn't provided then a default of 300 seconds (5 minutes) validity time is used if not configured otherwise. **Note:** It is up to the actual ContentStore implementation if it can fulfil this request or not.
  Future<Response<DirectAccessUrlEntry>> requestContentUrl_2(
    String nodeId,
    String versionId, {
    DirectAccessUrlBodyCreate requestContentUrlBodyCreate,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/versions/{versionId}/request-content-url'
        .replaceAll('{' r'nodeId' '}', nodeId.toString())
        .replaceAll('{' r'versionId' '}', versionId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[
      'application/json',
    ];

    final bodySerializer =
        _serializers.serializerForType(DirectAccessUrlBodyCreate) as Serializer<DirectAccessUrlBodyCreate>;
    final serializedBody = _serializers.serializeWith(bodySerializer, requestContentUrlBodyCreate);
    final jsonrequestContentUrlBodyCreate = json.encode(serializedBody);
    bodyData = jsonrequestContentUrlBodyCreate;

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'post'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(DirectAccessUrlEntry) as Serializer<DirectAccessUrlEntry>;
      final data = _serializers.deserializeWith<DirectAccessUrlEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<DirectAccessUrlEntry>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  /// Generate a direct access content url
  ///
  /// **Note:** this endpoint is available in Alfresco 7.0 and newer versions.  Generate a direct access content url for the given **nodeId**. Optionally the expiry at date could be set, so the direct access link would become invalid when the expiry date is reached. For example:  ```JSON  {    \"expiresAt\": \"2017-03-23T23:00:00.000+0000\"  } ``` Or optionally the validFor (in seconds) could be set, so the direct access link is valid for that length of time.  ```JSON  {    \"validFor\": \"60\"  } ```  **Note:** If an expiryAt date or validFor time length isn't provided then a default of 300 seconds (5 minutes) validity time is used if not configured otherwise. **Note:** It is up to the actual ContentStore implementation if it can fulfil this request or not.
  Future<Response<DirectAccessUrlEntry>> requestContentUrl_3(
    String nodeId,
    String versionId,
    String renditionId, {
    DirectAccessUrlBodyCreate requestContentUrlBodyCreate,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/versions/{versionId}/renditions/{renditionId}/request-content-url'
        .replaceAll('{' r'nodeId' '}', nodeId.toString())
        .replaceAll('{' r'versionId' '}', versionId.toString())
        .replaceAll('{' r'renditionId' '}', renditionId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[
      'application/json',
    ];

    final bodySerializer =
        _serializers.serializerForType(DirectAccessUrlBodyCreate) as Serializer<DirectAccessUrlBodyCreate>;
    final serializedBody = _serializers.serializeWith(bodySerializer, requestContentUrlBodyCreate);
    final jsonrequestContentUrlBodyCreate = json.encode(serializedBody);
    bodyData = jsonrequestContentUrlBodyCreate;

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'post'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(DirectAccessUrlEntry) as Serializer<DirectAccessUrlEntry>;
      final data = _serializers.deserializeWith<DirectAccessUrlEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<DirectAccessUrlEntry>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  /// Unlock a node
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Deletes a lock on node **nodeId**.  The current user must be the owner of the locks or have admin rights, otherwise an error is returned.  If a lock on the node cannot be released, then an error is returned.
  Future<Response<NodeEntry>> unlockNode(
    String nodeId, {
    BuiltList<String> include,
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/unlock'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'include'] = include;
    queryParams[r'fields'] = fields;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[];

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'post'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(NodeEntry) as Serializer<NodeEntry>;
      final data = _serializers.deserializeWith<NodeEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<NodeEntry>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  /// Update a node
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Updates the node **nodeId**. For example, you can rename a file or folder: ```JSON {   \"name\":\"My new name\" } ``` You can also set or update one or more properties: ```JSON {   \"properties\":   {     \"cm:title\":\"Folder title\"   } } ``` You can update multi-value properties of a node which supports properties of type multiple.  ```JSON {   \"name\":\"My Other Folder\",   \"nodeType\":\"custom:destination\",   \"properties\":   {     \"cm:title\":\"Folder title\",     \"cm:description\":\"This is an important folder\",     \"custom:locations\": [                          \"location NewX\",                          \"location NewY\"                         ]   } } ```  **Note:** setting properties of type d:content and d:category are not supported.  **Note:** if you want to add or remove aspects, then you must use **GET /nodes/{nodeId}** first to get the complete set of *aspectNames*.  You can add (or remove) *locallySet* permissions, if any, in addition to any inherited permissions. You can also optionally disable (or re-enable) inherited permissions via *isInheritanceEnabled* flag: ```JSON {   \"permissions\":     {       \"isInheritanceEnabled\": false,       \"locallySet\":         [           {\"authorityId\": \"GROUP_special\", \"name\": \"Read\", \"accessStatus\":\"DENIED\"},           {\"authorityId\": \"testuser\", \"name\": \"Contributor\", \"accessStatus\":\"ALLOWED\"}         ]     } } ``` **Note:** if you want to add or remove locally set permissions then you must use **GET /nodes/{nodeId}** first to get the complete set of *locallySet* permissions.  **Note:** Currently there is no optimistic locking for updates, so they are applied in \"last one wins\" order.
  Future<Response<NodeEntry>> updateNode(
    String nodeId,
    NodeBodyUpdate nodeBodyUpdate, {
    BuiltList<String> include,
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'include'] = include;
    queryParams[r'fields'] = fields;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[
      'application/json',
    ];

    final bodySerializer = _serializers.serializerForType(NodeBodyUpdate) as Serializer<NodeBodyUpdate>;
    final serializedBody = _serializers.serializeWith(bodySerializer, nodeBodyUpdate);
    final jsonnodeBodyUpdate = json.encode(serializedBody);
    bodyData = jsonnodeBodyUpdate;

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'put'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(NodeEntry) as Serializer<NodeEntry>;
      final data = _serializers.deserializeWith<NodeEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<NodeEntry>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  /// Update node content
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Updates the content of the node with identifier **nodeId**.  The request body for this endpoint can be any text or binary stream.  The **majorVersion** and **comment** parameters can be used to control versioning behaviour. If the content is versionable, a new minor version is created by default.  Optionally a new **name** parameter can also be specified that must be unique within the parent folder. If specified and valid then this will rename the node. If invalid then an error is returned and the content is not updated.  **Note:** This API method accepts any content type, but for testing with this tool text based content can be provided. This is because the OpenAPI Specification does not allow a wildcard to be provided or the ability for tooling to accept an arbitrary file.
  Future<Response<NodeEntry>> updateNodeContent(
    String nodeId,
    Uint8List contentBodyUpdate, {
    bool majorVersion,
    String comment,
    String name,
    BuiltList<String> include,
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/content'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'majorVersion'] = majorVersion;
    queryParams[r'comment'] = comment;
    queryParams[r'name'] = name;
    queryParams[r'include'] = include;
    queryParams[r'fields'] = fields;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[
      'application/octet-stream',
    ];

    final serializedBody = contentBodyUpdate;
    final jsoncontentBodyUpdate = json.encode(serializedBody);
    bodyData = jsoncontentBodyUpdate;

    return _dio
        .request<dynamic>(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'put'.toUpperCase(),
        headers: headerParams,
        extra: <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'name': 'basicAuth',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType: contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(NodeEntry) as Serializer<NodeEntry>;
      final data = _serializers.deserializeWith<NodeEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<NodeEntry>(
        data: data,
        headers: response.headers,
        isRedirect: response.isRedirect,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }
}
