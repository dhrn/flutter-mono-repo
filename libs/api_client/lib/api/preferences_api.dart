//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:api_client/model/error.dart';
import 'package:api_client/model/preference_entry.dart';
import 'package:api_client/model/preference_paging.dart';
import 'package:built_collection/built_collection.dart';

class PreferencesApi {
  final Dio _dio;

  final Serializers _serializers;

  const PreferencesApi(this._dio, this._serializers);

  /// Get a preference
  ///
  /// Gets a specific preference for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
  Future<Response<PreferenceEntry>> getPreference(
    String personId,
    String preferenceName, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/people/{personId}/preferences/{preferenceName}'
        .replaceAll('{' r'personId' '}', personId.toString())
        .replaceAll('{' r'preferenceName' '}', preferenceName.toString());

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
      final serializer = _serializers.serializerForType(PreferenceEntry) as Serializer<PreferenceEntry>;
      final data = _serializers.deserializeWith<PreferenceEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<PreferenceEntry>(
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

  /// List preferences
  ///
  /// Gets a list of preferences for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user. Note that each preference consists of an **id** and a **value**.  The **value** can be of any JSON type.
  Future<Response<PreferencePaging>> listPreferences(
    String personId, {
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
    final String _path = '/people/{personId}/preferences'.replaceAll('{' r'personId' '}', personId.toString());

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
      final serializer = _serializers.serializerForType(PreferencePaging) as Serializer<PreferencePaging>;
      final data = _serializers.deserializeWith<PreferencePaging>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<PreferencePaging>(
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
