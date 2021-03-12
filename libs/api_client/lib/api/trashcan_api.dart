//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:api_client/model/node_entry.dart';
import 'package:api_client/model/rendition_paging.dart';
import 'package:api_client/model/deleted_nodes_paging.dart';
import 'package:api_client/model/rendition_entry.dart';
import 'package:api_client/model/error.dart';
import 'package:api_client/model/deleted_node_body_restore.dart';
import 'package:api_client/model/deleted_node_entry.dart';
import 'dart:typed_data';
import 'package:built_collection/built_collection.dart';

class TrashcanApi {
  final Dio _dio;

  final Serializers _serializers;

  const TrashcanApi(this._dio, this._serializers);

  /// Permanently delete a deleted node
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Permanently deletes the deleted node **nodeId**.
  Future<Response<void>> deleteDeletedNode(
    String nodeId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/deleted-nodes/{nodeId}'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

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

  /// Get rendition information for a deleted node
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the rendition information for **renditionId** of file **nodeId**.
  Future<Response<RenditionEntry>> getArchivedNodeRendition(
    String nodeId,
    String renditionId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/deleted-nodes/{nodeId}/renditions/{renditionId}'
        .replaceAll('{' r'nodeId' '}', nodeId.toString())
        .replaceAll('{' r'renditionId' '}', renditionId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

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
      final serializer = _serializers.serializerForType(RenditionEntry) as Serializer<RenditionEntry>;
      final data = _serializers.deserializeWith<RenditionEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<RenditionEntry>(
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

  /// Get rendition content of a deleted node
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the rendition content for **renditionId** of file **nodeId**.
  Future<Response<Uint8List>> getArchivedNodeRenditionContent(
    String nodeId,
    String renditionId, {
    bool attachment,
    DateTime ifModifiedSince,
    String range,
    bool placeholder,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/deleted-nodes/{nodeId}/renditions/{renditionId}/content'
        .replaceAll('{' r'nodeId' '}', nodeId.toString())
        .replaceAll('{' r'renditionId' '}', renditionId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    headerParams[r'If-Modified-Since'] = ifModifiedSince;
    headerParams[r'Range'] = range;
    queryParams[r'attachment'] = attachment;
    queryParams[r'placeholder'] = placeholder;
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

  /// Get a deleted node
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the specific deleted node **nodeId**.
  Future<Response<DeletedNodeEntry>> getDeletedNode(
    String nodeId, {
    BuiltList<String> include,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/deleted-nodes/{nodeId}'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'include'] = include;
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
      final serializer = _serializers.serializerForType(DeletedNodeEntry) as Serializer<DeletedNodeEntry>;
      final data = _serializers.deserializeWith<DeletedNodeEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<DeletedNodeEntry>(
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

  /// Get deleted node content
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets the content of the deleted node with identifier **nodeId**.
  Future<Response<Uint8List>> getDeletedNodeContent(
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
    final String _path = '/deleted-nodes/{nodeId}/content'.replaceAll('{' r'nodeId' '}', nodeId.toString());

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

  /// List renditions for a deleted node
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of the rendition information for each rendition of the file **nodeId**, including the rendition id.  Each rendition returned has a **status**: CREATED means it is available to view or download, NOT_CREATED means the rendition can be requested.  You can use the **where** parameter to filter the returned renditions by **status**. For example, the following **where** clause will return just the CREATED renditions:  ``` (status='CREATED') ```
  Future<Response<RenditionPaging>> listDeletedNodeRenditions(
    String nodeId, {
    String where,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/deleted-nodes/{nodeId}/renditions'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'where'] = where;
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
      final serializer = _serializers.serializerForType(RenditionPaging) as Serializer<RenditionPaging>;
      final data = _serializers.deserializeWith<RenditionPaging>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<RenditionPaging>(
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

  /// List deleted nodes
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Gets a list of deleted nodes for the current user.  If the current user is an administrator deleted nodes for all users will be returned.  The list of deleted nodes will be ordered with the most recently deleted node at the top of the list.
  Future<Response<DeletedNodesPaging>> listDeletedNodes({
    int skipCount,
    int maxItems,
    BuiltList<String> include,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/deleted-nodes';

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'skipCount'] = skipCount;
    queryParams[r'maxItems'] = maxItems;
    queryParams[r'include'] = include;
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
      final serializer = _serializers.serializerForType(DeletedNodesPaging) as Serializer<DeletedNodesPaging>;
      final data = _serializers.deserializeWith<DeletedNodesPaging>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<DeletedNodesPaging>(
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

  /// Restore a deleted node
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Attempts to restore the deleted node **nodeId** to its original location or to a new location.  If the node is successfully restored to its former primary parent, then only the primary child association will be restored, including recursively for any primary children. It should be noted that no other secondary child associations or peer associations will be restored, for any of the nodes within the primary parent-child hierarchy of restored nodes, irrespective of whether these associations were to nodes within or outside of the restored hierarchy.  Also, any previously shared link will not be restored since it is deleted at the time of delete of each node.
  Future<Response<NodeEntry>> restoreDeletedNode(
    String nodeId, {
    BuiltList<String> fields,
    DeletedNodeBodyRestore deletedNodeBodyRestore,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/deleted-nodes/{nodeId}/restore'.replaceAll('{' r'nodeId' '}', nodeId.toString());

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

    final bodySerializer = _serializers.serializerForType(DeletedNodeBodyRestore) as Serializer<DeletedNodeBodyRestore>;
    final serializedBody = _serializers.serializeWith(bodySerializer, deletedNodeBodyRestore);
    final jsondeletedNodeBodyRestore = json.encode(serializedBody);
    bodyData = jsondeletedNodeBodyRestore;

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
}
