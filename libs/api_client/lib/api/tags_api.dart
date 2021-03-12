//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:api_client/model/tag_paging.dart';
import 'package:api_client/model/tag_body.dart';
import 'package:api_client/model/tag_entry.dart';
import 'package:api_client/model/error.dart';
import 'package:built_collection/built_collection.dart';

class TagsApi {
  final Dio _dio;

  final Serializers _serializers;

  const TagsApi(this._dio, this._serializers);

  /// Create a tag for a node
  ///
  /// Creates a tag on the node **nodeId**. You specify the tag in a JSON body like this:  ```JSON {   \"tag\":\"test-tag-1\" } ```  **Note:** You can create more than one tag by specifying a list of tags in the JSON body like this:  ```JSON [   {     \"tag\":\"test-tag-1\"   },   {     \"tag\":\"test-tag-2\"   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {          ...         }       }     ]   } } ```
  Future<Response<TagEntry>> createTagForNode(
    String nodeId,
    BuiltList<TagBody> tagBodyCreate, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/tags'.replaceAll('{' r'nodeId' '}', nodeId.toString());

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

    const type = FullType(BuiltList, [FullType(TagBody)]);
    final serializedBody = _serializers.serialize(tagBodyCreate, specifiedType: type);
    final jsontagBodyCreate = json.encode(serializedBody);
    bodyData = jsontagBodyCreate;

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
      final serializer = _serializers.serializerForType(TagEntry) as Serializer<TagEntry>;
      final data = _serializers.deserializeWith<TagEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<TagEntry>(
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

  /// Delete a tag from a node
  ///
  /// Deletes tag **tagId** from node **nodeId**.
  Future<Response<void>> deleteTagFromNode(
    String nodeId,
    String tagId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/tags/{tagId}'
        .replaceAll('{' r'nodeId' '}', nodeId.toString())
        .replaceAll('{' r'tagId' '}', tagId.toString());

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

  /// Get a tag
  ///
  /// Get a specific tag with **tagId**.
  Future<Response<TagEntry>> getTag(
    String tagId, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/tags/{tagId}'.replaceAll('{' r'tagId' '}', tagId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

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
      final serializer = _serializers.serializerForType(TagEntry) as Serializer<TagEntry>;
      final data = _serializers.deserializeWith<TagEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<TagEntry>(
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

  /// List tags
  ///
  /// Gets a list of tags in this repository.  You can use the **include** parameter to return additional **values** information.
  Future<Response<TagPaging>> listTags({
    int skipCount,
    int maxItems,
    BuiltList<String> fields,
    BuiltList<String> include,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/tags';

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'skipCount'] = skipCount;
    queryParams[r'maxItems'] = maxItems;
    queryParams[r'fields'] = fields;
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
      final serializer = _serializers.serializerForType(TagPaging) as Serializer<TagPaging>;
      final data = _serializers.deserializeWith<TagPaging>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<TagPaging>(
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

  /// List tags for a node
  ///
  /// Gets a list of tags for node **nodeId**.
  Future<Response<TagPaging>> listTagsForNode(
    String nodeId, {
    int skipCount,
    int maxItems,
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/tags'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'skipCount'] = skipCount;
    queryParams[r'maxItems'] = maxItems;
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
      final serializer = _serializers.serializerForType(TagPaging) as Serializer<TagPaging>;
      final data = _serializers.deserializeWith<TagPaging>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<TagPaging>(
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

  /// Update a tag
  ///
  /// Updates the tag **tagId**.
  Future<Response<TagEntry>> updateTag(
    String tagId,
    TagBody tagBodyUpdate, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/tags/{tagId}'.replaceAll('{' r'tagId' '}', tagId.toString());

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

    final bodySerializer = _serializers.serializerForType(TagBody) as Serializer<TagBody>;
    final serializedBody = _serializers.serializeWith(bodySerializer, tagBodyUpdate);
    final jsontagBodyUpdate = json.encode(serializedBody);
    bodyData = jsontagBodyUpdate;

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
      final serializer = _serializers.serializerForType(TagEntry) as Serializer<TagEntry>;
      final data = _serializers.deserializeWith<TagEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<TagEntry>(
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
