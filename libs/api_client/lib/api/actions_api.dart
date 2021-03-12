//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:api_client/model/action_exec_result_entry.dart';
import 'package:api_client/model/action_definition_entry.dart';
import 'package:api_client/model/action_body_exec.dart';
import 'package:api_client/model/action_definition_list.dart';
import 'package:api_client/model/error.dart';
import 'package:built_collection/built_collection.dart';

class ActionsApi {
  final Dio _dio;

  final Serializers _serializers;

  const ActionsApi(this._dio, this._serializers);

  /// Retrieve the details of an action definition
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Retrieve the details of the action denoted by **actionDefinitionId**.
  Future<Response<ActionDefinitionEntry>> actionDetails(
    String actionDefinitionId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/action-definitions/{actionDefinitionId}'
        .replaceAll('{' r'actionDefinitionId' '}', actionDefinitionId.toString());

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
      final serializer = _serializers.serializerForType(ActionDefinitionEntry) as Serializer<ActionDefinitionEntry>;
      final data = _serializers.deserializeWith<ActionDefinitionEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<ActionDefinitionEntry>(
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

  /// Execute an action
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Executes an action  An action may be executed against a node specified by **targetId**. For example:  ``` {   \"actionDefinitionId\": \"copy\",   \"targetId\": \"4c4b3c43-f18b-43ff-af84-751f16f1ddfd\",   \"params\": {    \"destination-folder\": \"34219f79-66fa-4ebf-b371-118598af898c\"   } } ```  Performing a POST with the request body shown above will result in the node identified by ```targetId``` being copied to the destination folder specified in the ```params``` object by the key ```destination-folder```.  **targetId** is optional, however, currently **targetId** must be a valid node ID. In the future, actions may be executed against different entity types or executed without the need for the context of an entity.   Parameters supplied to the action within the ```params``` object will be converted to the expected type, where possible using the DefaultTypeConverter class. In addition:  * Node IDs may be supplied in their short form (implicit workspace://SpacesStore prefix) * Aspect names may be supplied using their short form, e.g. cm:versionable or cm:auditable  In this example, we add the aspect ```cm:versionable``` to a node using the QName resolution mentioned above:  ``` {   \"actionDefinitionId\": \"add-features\",   \"targetId\": \"16349e3f-2977-44d1-93f2-73c12b8083b5\",   \"params\": {    \"aspect-name\": \"cm:versionable\"   } } ```  The ```actionDefinitionId``` is the ```id``` of an action definition as returned by the _list actions_ operations (e.g. GET /action-definitions).  The action will be executed **asynchronously** with a `202` HTTP response signifying that the request has been accepted successfully. The response body contains the unique ID of the action pending execution. The ID may be used, for example to correlate an execution with output in the server logs.
  Future<Response<ActionExecResultEntry>> actionExec(
    ActionBodyExec actionBodyExec, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/action-executions';

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

    final bodySerializer = _serializers.serializerForType(ActionBodyExec) as Serializer<ActionBodyExec>;
    final serializedBody = _serializers.serializeWith(bodySerializer, actionBodyExec);
    final jsonactionBodyExec = json.encode(serializedBody);
    bodyData = jsonactionBodyExec;

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
      final serializer = _serializers.serializerForType(ActionExecResultEntry) as Serializer<ActionExecResultEntry>;
      final data = _serializers.deserializeWith<ActionExecResultEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<ActionExecResultEntry>(
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

  /// Retrieve list of available actions
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Gets a list of all available actions  The default sort order for the returned list is for actions to be sorted by ascending name. You can override the default by using the **orderBy** parameter.  You can use any of the following fields to order the results: * name * title
  Future<Response<ActionDefinitionList>> listActions({
    int skipCount,
    int maxItems,
    BuiltList<String> orderBy,
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/action-definitions';

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'skipCount'] = skipCount;
    queryParams[r'maxItems'] = maxItems;
    queryParams[r'orderBy'] = orderBy;
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
      final serializer = _serializers.serializerForType(ActionDefinitionList) as Serializer<ActionDefinitionList>;
      final data = _serializers.deserializeWith<ActionDefinitionList>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<ActionDefinitionList>(
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

  /// Retrieve actions for a node
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Retrieve the list of actions that may be executed against the given **nodeId**.  The default sort order for the returned list is for actions to be sorted by ascending name. You can override the default by using the **orderBy** parameter.  You can use any of the following fields to order the results: * name * title
  Future<Response<ActionDefinitionList>> nodeActions(
    String nodeId, {
    int skipCount,
    int maxItems,
    BuiltList<String> orderBy,
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/nodes/{nodeId}/action-definitions'.replaceAll('{' r'nodeId' '}', nodeId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'skipCount'] = skipCount;
    queryParams[r'maxItems'] = maxItems;
    queryParams[r'orderBy'] = orderBy;
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
      final serializer = _serializers.serializerForType(ActionDefinitionList) as Serializer<ActionDefinitionList>;
      final data = _serializers.deserializeWith<ActionDefinitionList>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<ActionDefinitionList>(
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
