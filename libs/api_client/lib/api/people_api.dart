//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:api_client/model/password_reset_body.dart';
import 'package:api_client/model/person_body_update.dart';
import 'package:api_client/model/person_paging.dart';
import 'package:api_client/model/person_body_create.dart';
import 'package:api_client/model/client_body.dart';
import 'package:api_client/model/person_entry.dart';
import 'package:api_client/model/error.dart';
import 'dart:typed_data';
import 'package:built_collection/built_collection.dart';

class PeopleApi {
  final Dio _dio;

  final Serializers _serializers;

  const PeopleApi(this._dio, this._serializers);

  /// Create person
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Create a person.  If applicable, the given person's login access can also be optionally disabled.  You must have admin rights to create a person.  You can set custom properties when you create a person: ```JSON {   \"id\": \"abeecher\",   \"firstName\": \"Alice\",   \"lastName\": \"Beecher\",   \"displayName\": \"Alice Beecher\",   \"email\": \"abeecher@example.com\",   \"password\": \"secret\",   \"properties\":   {     \"my:property\": \"The value\"   } } ``` **Note:** setting properties of type d:content and d:category are not supported.
  Future<Response<PersonEntry>> createPerson(
    PersonBodyCreate personBodyCreate, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/people';

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

    final bodySerializer = _serializers.serializerForType(PersonBodyCreate) as Serializer<PersonBodyCreate>;
    final serializedBody = _serializers.serializeWith(bodySerializer, personBodyCreate);
    final jsonpersonBodyCreate = json.encode(serializedBody);
    bodyData = jsonpersonBodyCreate;

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
      final serializer = _serializers.serializerForType(PersonEntry) as Serializer<PersonEntry>;
      final data = _serializers.deserializeWith<PersonEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<PersonEntry>(
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

  /// Delete avatar image
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Deletes the avatar image related to person **personId**.  You must be the person or have admin rights to update a person's avatar.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
  Future<Response<void>> deleteAvatarImage(
    String personId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/people/{personId}/avatar'.replaceAll('{' r'personId' '}', personId.toString());

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

  /// Get avatar image
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Gets the avatar image related to the person **personId**. If the person has no related avatar then the **placeholder** query parameter can be optionally used to request a placeholder image to be returned.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
  Future<Response<Uint8List>> getAvatarImage(
    String personId, {
    bool attachment,
    DateTime ifModifiedSince,
    bool placeholder,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/people/{personId}/avatar'.replaceAll('{' r'personId' '}', personId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    headerParams[r'If-Modified-Since'] = ifModifiedSince;
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

  /// Get a person
  ///
  /// Gets information for the person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
  Future<Response<PersonEntry>> getPerson(
    String personId, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/people/{personId}'.replaceAll('{' r'personId' '}', personId.toString());

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
      final serializer = _serializers.serializerForType(PersonEntry) as Serializer<PersonEntry>;
      final data = _serializers.deserializeWith<PersonEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<PersonEntry>(
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

  /// List people
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  List people.  You can use the **include** parameter to return any additional information.  The default sort order for the returned list is for people to be sorted by ascending id. You can override the default by using the **orderBy** parameter.  You can use any of the following fields to order the results: * id * firstName * lastName
  Future<Response<PersonPaging>> listPeople({
    int skipCount,
    int maxItems,
    BuiltList<String> orderBy,
    BuiltList<String> include,
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/people';

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'skipCount'] = skipCount;
    queryParams[r'maxItems'] = maxItems;
    queryParams[r'orderBy'] = orderBy;
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
      final serializer = _serializers.serializerForType(PersonPaging) as Serializer<PersonPaging>;
      final data = _serializers.deserializeWith<PersonPaging>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<PersonPaging>(
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

  /// Request password reset
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Initiates the reset password workflow to send an email with reset password instruction to the user's registered email.  The client is mandatory in the request body. For example: ```JSON {   \"client\": \"myClient\" } ``` **Note:** The client must be registered before this API can send an email. See [server documentation]. However, out-of-the-box share is registered as a default client, so you could pass **share** as the client name: ```JSON {   \"client\": \"share\" } ``` **Note:** No authentication is required to call this endpoint.
  Future<Response<void>> requestPasswordReset(
    String personId,
    ClientBody clientBody, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/people/{personId}/request-password-reset'.replaceAll('{' r'personId' '}', personId.toString());

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

    final bodySerializer = _serializers.serializerForType(ClientBody) as Serializer<ClientBody>;
    final serializedBody = _serializers.serializeWith(bodySerializer, clientBody);
    final jsonclientBody = json.encode(serializedBody);
    bodyData = jsonclientBody;

    return _dio.request<dynamic>(
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
    );
  }

  /// Reset password
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2.1 and newer versions.  Resets user's password  The password, id and key properties are mandatory in the request body. For example: ```JSON {   \"password\":\"newPassword\",   \"id\":\"activiti$10\",   \"key\":\"4dad6d00-0daf-413a-b200-f64af4e12345\" } ``` **Note:** No authentication is required to call this endpoint.
  Future<Response<void>> resetPassword(
    String personId,
    PasswordResetBody passwordResetBody, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/people/{personId}/reset-password'.replaceAll('{' r'personId' '}', personId.toString());

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

    final bodySerializer = _serializers.serializerForType(PasswordResetBody) as Serializer<PasswordResetBody>;
    final serializedBody = _serializers.serializeWith(bodySerializer, passwordResetBody);
    final jsonpasswordResetBody = json.encode(serializedBody);
    bodyData = jsonpasswordResetBody;

    return _dio.request<dynamic>(
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
    );
  }

  /// Update avatar image
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Updates the avatar image related to the person **personId**.  The request body should be the binary stream for the avatar image. The content type of the file should be an image file. This will be used to generate an \"avatar\" thumbnail rendition.  You must be the person or have admin rights to update a person's avatar.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
  Future<Response<void>> updateAvatarImage(
    String personId,
    Uint8List contentBodyUpdate, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/people/{personId}/avatar'.replaceAll('{' r'personId' '}', personId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[
      'application/octet-stream',
    ];

    final serializedBody = contentBodyUpdate;
    final jsoncontentBodyUpdate = json.encode(serializedBody);
    bodyData = jsoncontentBodyUpdate;

    return _dio.request<dynamic>(
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
    );
  }

  /// Update person
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Update the given person's details.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.  If applicable, the given person's login access can also be optionally disabled or re-enabled.  You must have admin rights to update a person — unless updating your own details.  If you are changing your password, as a non-admin user, then the existing password must also be supplied (using the oldPassword field in addition to the new password value).  Admin users cannot be disabled by setting enabled to false.  Non-admin users may not disable themselves.  You can set custom properties when you update a person: ```JSON {   \"firstName\": \"Alice\",   \"properties\":   {     \"my:property\": \"The value\"   } } ``` **Note:** setting properties of type d:content and d:category are not supported.
  Future<Response<PersonEntry>> updatePerson(
    String personId,
    PersonBodyUpdate personBodyUpdate, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/people/{personId}'.replaceAll('{' r'personId' '}', personId.toString());

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

    final bodySerializer = _serializers.serializerForType(PersonBodyUpdate) as Serializer<PersonBodyUpdate>;
    final serializedBody = _serializers.serializeWith(bodySerializer, personBodyUpdate);
    final jsonpersonBodyUpdate = json.encode(serializedBody);
    bodyData = jsonpersonBodyUpdate;

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
      final serializer = _serializers.serializerForType(PersonEntry) as Serializer<PersonEntry>;
      final data = _serializers.deserializeWith<PersonEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<PersonEntry>(
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
