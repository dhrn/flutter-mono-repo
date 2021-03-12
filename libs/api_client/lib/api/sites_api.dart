//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:api_client/model/site_role_paging.dart';
import 'package:api_client/model/site_container_paging.dart';
import 'package:api_client/model/site_membership_request_paging.dart';
import 'package:api_client/model/site_membership_request_body_update.dart';
import 'package:api_client/model/site_member_entry.dart';
import 'package:api_client/model/site_membership_request_with_person_paging.dart';
import 'package:api_client/model/site_membership_approval_body.dart';
import 'package:api_client/model/site_body_create.dart';
import 'package:api_client/model/site_membership_body_update.dart';
import 'package:api_client/model/site_membership_rejection_body.dart';
import 'package:api_client/model/error.dart';
import 'package:api_client/model/site_container_entry.dart';
import 'package:api_client/model/site_paging.dart';
import 'package:api_client/model/site_body_update.dart';
import 'package:api_client/model/site_membership_body_create.dart';
import 'package:api_client/model/site_role_entry.dart';
import 'package:api_client/model/site_group_entry.dart';
import 'package:api_client/model/site_entry.dart';
import 'package:api_client/model/site_group_paging.dart';
import 'package:api_client/model/site_member_paging.dart';
import 'package:api_client/model/site_membership_request_body_create.dart';
import 'package:api_client/model/site_membership_request_entry.dart';
import 'package:built_collection/built_collection.dart';

class SitesApi {
  final Dio _dio;

  final Serializers _serializers;

  const SitesApi(this._dio, this._serializers);

  /// Approve a site membership request
  ///
  /// Approve a site membership request.
  Future<Response<void>> approveSiteMembershipRequest(
    String siteId,
    String inviteeId, {
    SiteMembershipApprovalBody siteMembershipApprovalBody,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/sites/{siteId}/site-membership-requests/{inviteeId}/approve'
        .replaceAll('{' r'siteId' '}', siteId.toString())
        .replaceAll('{' r'inviteeId' '}', inviteeId.toString());

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
        _serializers.serializerForType(SiteMembershipApprovalBody) as Serializer<SiteMembershipApprovalBody>;
    final serializedBody = _serializers.serializeWith(bodySerializer, siteMembershipApprovalBody);
    final jsonsiteMembershipApprovalBody = json.encode(serializedBody);
    bodyData = jsonsiteMembershipApprovalBody;

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

  /// Create a site
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Creates a default site with the given details.  Unless explicitly specified, the site id will be generated from the site title. The site id must be unique and only contain alphanumeric and/or dash characters.  Note: the id of a site cannot be updated once the site has been created.  For example, to create a public site called \"Marketing\" the following body could be used: ```JSON {   \"title\": \"Marketing\",   \"visibility\": \"PUBLIC\" } ```  The creation of the (surf) configuration files required by Share can be skipped via the **skipConfiguration** query parameter.  **Note:** if skipped then such a site will **not** work within Share.  The addition of the site to the user's site favorites can be skipped via the **skipAddToFavorites** query parameter.  The creator will be added as a member with Site Manager role.  When you create a site, a container called **documentLibrary** is created for you in the new site. This container is the root folder for content stored in the site.
  Future<Response<SiteEntry>> createSite(
    SiteBodyCreate siteBodyCreate, {
    bool skipConfiguration,
    bool skipAddToFavorites,
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/sites';

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'skipConfiguration'] = skipConfiguration;
    queryParams[r'skipAddToFavorites'] = skipAddToFavorites;
    queryParams[r'fields'] = fields;
    queryParams.removeWhere((key, dynamic value) => value == null);
    headerParams.removeWhere((key, dynamic value) => value == null);

    final contentTypes = <String>[
      'application/json',
    ];

    final bodySerializer = _serializers.serializerForType(SiteBodyCreate) as Serializer<SiteBodyCreate>;
    final serializedBody = _serializers.serializeWith(bodySerializer, siteBodyCreate);
    final jsonsiteBodyCreate = json.encode(serializedBody);
    bodyData = jsonsiteBodyCreate;

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
      final serializer = _serializers.serializerForType(SiteEntry) as Serializer<SiteEntry>;
      final data = _serializers.deserializeWith<SiteEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteEntry>(
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

  /// Create a site membership for group
  ///
  /// **Note:** this endpoint is available in Alfresco 7.0.0 and newer versions.  Creates a site membership for group **groupId** on site **siteId**. You can set the **role** to one of four types: * SiteConsumer * SiteCollaborator * SiteContributor * SiteManager **Note:** You can create more than one site membership by specifying a list of group in the JSON body like this:  ```JSON   [    {      \"role\": \"SiteConsumer\",      \"id\": \"authorityId\"    },    {      \"role\": \"SiteConsumer\",      \"id\": \"authorityId\"    }   ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example: ```JSON   {     \"list\": {       \"pagination\": {         \"count\": 2,         \"hasMoreItems\": false,         \"totalItems\": 2,         \"skipCount\": 0,         \"maxItems\": 100       },       \"entries\": [         {           \"entry\": {             ...           }         },         {           \"entry\": {             ...           }         }       ]     }   } ```
  Future<Response<SiteGroupEntry>> createSiteGroupMembership(
    String siteId,
    SiteMembershipBodyCreate siteMembershipBodyCreate, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/sites/{siteId}/group-members'.replaceAll('{' r'siteId' '}', siteId.toString());

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

    final bodySerializer =
        _serializers.serializerForType(SiteMembershipBodyCreate) as Serializer<SiteMembershipBodyCreate>;
    final serializedBody = _serializers.serializeWith(bodySerializer, siteMembershipBodyCreate);
    final jsonsiteMembershipBodyCreate = json.encode(serializedBody);
    bodyData = jsonsiteMembershipBodyCreate;

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
      final serializer = _serializers.serializerForType(SiteGroupEntry) as Serializer<SiteGroupEntry>;
      final data = _serializers.deserializeWith<SiteGroupEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteGroupEntry>(
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

  /// Create a site membership
  ///
  /// Creates a site membership for person **personId** on site **siteId**.  You can set the **role** to one of four types:  * SiteConsumer * SiteCollaborator * SiteContributor * SiteManager  **Note:** You can create more than one site membership by specifying a list of people in the JSON body like this:  ```JSON [   {     \"role\": \"SiteConsumer\",     \"id\": \"joe\"   },   {     \"role\": \"SiteConsumer\",     \"id\": \"fred\"   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ```
  Future<Response<SiteMemberEntry>> createSiteMembership(
    String siteId,
    SiteMembershipBodyCreate siteMembershipBodyCreate, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/sites/{siteId}/members'.replaceAll('{' r'siteId' '}', siteId.toString());

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

    final bodySerializer =
        _serializers.serializerForType(SiteMembershipBodyCreate) as Serializer<SiteMembershipBodyCreate>;
    final serializedBody = _serializers.serializeWith(bodySerializer, siteMembershipBodyCreate);
    final jsonsiteMembershipBodyCreate = json.encode(serializedBody);
    bodyData = jsonsiteMembershipBodyCreate;

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
      final serializer = _serializers.serializerForType(SiteMemberEntry) as Serializer<SiteMemberEntry>;
      final data = _serializers.deserializeWith<SiteMemberEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteMemberEntry>(
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

  /// Create a site membership request
  ///
  /// Create a site membership request for yourself on the site with the identifier of **id**, specified in the JSON body. The result of the request differs depending on the type of site.  * For a **public** site, you join the site immediately as a SiteConsumer. * For a **moderated** site, your request is added to the site membership request list. The request waits for approval from the Site Manager. * You cannot request membership of a **private** site. Members are invited by the site administrator.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.   **Note:** You can create site membership requests for more than one site by specifying a list of sites in the JSON body like this:  ```JSON [   {     \"message\": \"Please can you add me\",     \"id\": \"test-site-1\",     \"title\": \"Request for test site 1\",   },   {     \"message\": \"Please can you add me\",     \"id\": \"test-site-2\",     \"title\": \"Request for test site 2\",   } ] ``` If you specify a list as input, then a paginated list rather than an entry is returned in the response body. For example:  ```JSON {   \"list\": {     \"pagination\": {       \"count\": 2,       \"hasMoreItems\": false,       \"totalItems\": 2,       \"skipCount\": 0,       \"maxItems\": 100     },     \"entries\": [       {         \"entry\": {           ...         }       },       {         \"entry\": {           ...         }       }     ]   } } ```
  Future<Response<SiteMembershipRequestEntry>> createSiteMembershipRequestForPerson(
    String personId,
    SiteMembershipRequestBodyCreate siteMembershipRequestBodyCreate, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/people/{personId}/site-membership-requests'.replaceAll('{' r'personId' '}', personId.toString());

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

    final bodySerializer =
        _serializers.serializerForType(SiteMembershipRequestBodyCreate) as Serializer<SiteMembershipRequestBodyCreate>;
    final serializedBody = _serializers.serializeWith(bodySerializer, siteMembershipRequestBodyCreate);
    final jsonsiteMembershipRequestBodyCreate = json.encode(serializedBody);
    bodyData = jsonsiteMembershipRequestBodyCreate;

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
      final serializer =
          _serializers.serializerForType(SiteMembershipRequestEntry) as Serializer<SiteMembershipRequestEntry>;
      final data = _serializers.deserializeWith<SiteMembershipRequestEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteMembershipRequestEntry>(
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

  /// Delete a site
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Deletes the site with **siteId**.
  Future<Response<void>> deleteSite(
    String siteId, {
    bool permanent,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/sites/{siteId}'.replaceAll('{' r'siteId' '}', siteId.toString());

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

  /// Delete a group membership for site
  ///
  /// **Note:** this endpoint is available in Alfresco 7.0.0 and newer versions.  Deletes group **groupId** as a member of site **siteId**.
  Future<Response<void>> deleteSiteGroupMembership(
    String siteId,
    String groupId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/sites/{siteId}/group-members/{groupId}'
        .replaceAll('{' r'siteId' '}', siteId.toString())
        .replaceAll('{' r'groupId' '}', groupId.toString());

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

  /// Delete a site membership
  ///
  /// Deletes person **personId** as a member of site **siteId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
  Future<Response<void>> deleteSiteMembership(
    String siteId,
    String personId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/sites/{siteId}/members/{personId}'
        .replaceAll('{' r'siteId' '}', siteId.toString())
        .replaceAll('{' r'personId' '}', personId.toString());

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

  /// Delete a site membership
  ///
  /// Deletes person **personId** as a member of site **siteId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
  Future<Response<void>> deleteSiteMembershipForPerson(
    String personId,
    String siteId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/people/{personId}/sites/{siteId}'
        .replaceAll('{' r'personId' '}', personId.toString())
        .replaceAll('{' r'siteId' '}', siteId.toString());

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

  /// Delete a site membership request
  ///
  /// Deletes the site membership request to site **siteId** for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
  Future<Response<void>> deleteSiteMembershipRequestForPerson(
    String personId,
    String siteId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/people/{personId}/site-membership-requests/{siteId}'
        .replaceAll('{' r'personId' '}', personId.toString())
        .replaceAll('{' r'siteId' '}', siteId.toString());

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

  /// Get a site
  ///
  /// Gets information for site **siteId**.  You can use the **relations** parameter to include one or more related entities in a single response and so reduce network traffic.  The entity types in Alfresco are organized in a tree structure. The **sites** entity has two children, **containers** and **members**. The following relations parameter returns all the container and member objects related to the site **siteId**:  ``` containers,members ```
  Future<Response<SiteEntry>> getSite(
    String siteId, {
    BuiltList<String> relations,
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/sites/{siteId}'.replaceAll('{' r'siteId' '}', siteId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'relations'] = relations;
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
      final serializer = _serializers.serializerForType(SiteEntry) as Serializer<SiteEntry>;
      final data = _serializers.deserializeWith<SiteEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteEntry>(
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

  /// Get a site container
  ///
  /// Gets information on the container **containerId** in site **siteId**.
  Future<Response<SiteContainerEntry>> getSiteContainer(
    String siteId,
    String containerId, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/sites/{siteId}/containers/{containerId}'
        .replaceAll('{' r'siteId' '}', siteId.toString())
        .replaceAll('{' r'containerId' '}', containerId.toString());

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
      final serializer = _serializers.serializerForType(SiteContainerEntry) as Serializer<SiteContainerEntry>;
      final data = _serializers.deserializeWith<SiteContainerEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteContainerEntry>(
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

  /// Get information about site membership of group
  ///
  /// **Note:** this endpoint is available in Alfresco 7.0.0 and newer versions.  Gets site membership information for group **groupId** on site **siteId**.
  Future<Response<SiteGroupEntry>> getSiteGroupMembership(
    String siteId,
    String groupId, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/sites/{siteId}/group-members/{groupId}'
        .replaceAll('{' r'siteId' '}', siteId.toString())
        .replaceAll('{' r'groupId' '}', groupId.toString());

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
      final serializer = _serializers.serializerForType(SiteGroupEntry) as Serializer<SiteGroupEntry>;
      final data = _serializers.deserializeWith<SiteGroupEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteGroupEntry>(
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

  /// Get a site membership
  ///
  /// Gets site membership information for person **personId** on site **siteId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
  Future<Response<SiteMemberEntry>> getSiteMembership(
    String siteId,
    String personId, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/sites/{siteId}/members/{personId}'
        .replaceAll('{' r'siteId' '}', siteId.toString())
        .replaceAll('{' r'personId' '}', personId.toString());

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
      final serializer = _serializers.serializerForType(SiteMemberEntry) as Serializer<SiteMemberEntry>;
      final data = _serializers.deserializeWith<SiteMemberEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteMemberEntry>(
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

  /// Get a site membership
  ///
  /// Gets site membership information for person **personId** on site **siteId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
  Future<Response<SiteRoleEntry>> getSiteMembershipForPerson(
    String personId,
    String siteId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/people/{personId}/sites/{siteId}'
        .replaceAll('{' r'personId' '}', personId.toString())
        .replaceAll('{' r'siteId' '}', siteId.toString());

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
      final serializer = _serializers.serializerForType(SiteRoleEntry) as Serializer<SiteRoleEntry>;
      final data = _serializers.deserializeWith<SiteRoleEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteRoleEntry>(
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

  /// Get a site membership request
  ///
  /// Gets the site membership request for site **siteId** for person **personId**, if one exists.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
  Future<Response<SiteMembershipRequestEntry>> getSiteMembershipRequestForPerson(
    String personId,
    String siteId, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/people/{personId}/site-membership-requests/{siteId}'
        .replaceAll('{' r'personId' '}', personId.toString())
        .replaceAll('{' r'siteId' '}', siteId.toString());

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
      final serializer =
          _serializers.serializerForType(SiteMembershipRequestEntry) as Serializer<SiteMembershipRequestEntry>;
      final data = _serializers.deserializeWith<SiteMembershipRequestEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteMembershipRequestEntry>(
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

  /// Get site membership requests
  ///
  /// Get the list of site membership requests the user can action.  You can use the **where** parameter to filter the returned site membership requests by **siteId**. For example:  ``` (siteId=mySite) ```  The **where** parameter can also be used to filter by ***personId***. For example:  ``` where=(personId=person) ```  This may be combined with the siteId filter, as shown below:  ``` where=(siteId=mySite AND personId=person)) ```
  Future<Response<SiteMembershipRequestWithPersonPaging>> getSiteMembershipRequests({
    int skipCount,
    int maxItems,
    String where,
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/site-membership-requests';

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'skipCount'] = skipCount;
    queryParams[r'maxItems'] = maxItems;
    queryParams[r'where'] = where;
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
      final serializer = _serializers.serializerForType(SiteMembershipRequestWithPersonPaging)
          as Serializer<SiteMembershipRequestWithPersonPaging>;
      final data = _serializers.deserializeWith<SiteMembershipRequestWithPersonPaging>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteMembershipRequestWithPersonPaging>(
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

  /// List site containers
  ///
  /// Gets a list of containers for the site **siteId**.
  Future<Response<SiteContainerPaging>> listSiteContainers(
    String siteId, {
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
    final String _path = '/sites/{siteId}/containers'.replaceAll('{' r'siteId' '}', siteId.toString());

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
      final serializer = _serializers.serializerForType(SiteContainerPaging) as Serializer<SiteContainerPaging>;
      final data = _serializers.deserializeWith<SiteContainerPaging>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteContainerPaging>(
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

  /// List group membership for site
  ///
  /// **Note:** this endpoint is available in Alfresco 7.0.0 and newer versions.  Gets a list of group membership for site **siteId**.
  Future<Response<SiteGroupPaging>> listSiteGroups(
    String siteId, {
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
    final String _path = '/sites/{siteId}/group-members'.replaceAll('{' r'siteId' '}', siteId.toString());

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
      final serializer = _serializers.serializerForType(SiteGroupPaging) as Serializer<SiteGroupPaging>;
      final data = _serializers.deserializeWith<SiteGroupPaging>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteGroupPaging>(
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

  /// List site membership requests
  ///
  /// Gets a list of the current site membership requests for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
  Future<Response<SiteMembershipRequestPaging>> listSiteMembershipRequestsForPerson(
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
    final String _path =
        '/people/{personId}/site-membership-requests'.replaceAll('{' r'personId' '}', personId.toString());

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
      final serializer =
          _serializers.serializerForType(SiteMembershipRequestPaging) as Serializer<SiteMembershipRequestPaging>;
      final data = _serializers.deserializeWith<SiteMembershipRequestPaging>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteMembershipRequestPaging>(
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

  /// List site memberships
  ///
  /// Gets a list of site memberships for site **siteId**.
  Future<Response<SiteMemberPaging>> listSiteMemberships(
    String siteId, {
    int skipCount,
    int maxItems,
    BuiltList<String> fields,
    String where,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/sites/{siteId}/members'.replaceAll('{' r'siteId' '}', siteId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'skipCount'] = skipCount;
    queryParams[r'maxItems'] = maxItems;
    queryParams[r'fields'] = fields;
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
      final serializer = _serializers.serializerForType(SiteMemberPaging) as Serializer<SiteMemberPaging>;
      final data = _serializers.deserializeWith<SiteMemberPaging>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteMemberPaging>(
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

  /// List site memberships
  ///
  /// Gets a list of site membership information for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.  You can use the **where** parameter to filter the returned sites by **visibility** or site **preset**.  Example to filter by **visibility**, use any one of:  ``` (visibility='PRIVATE') (visibility='PUBLIC') (visibility='MODERATED') ```  Example to filter by site **preset**:  ``` (preset='site-dashboard') ```  The default sort order for the returned list is for sites to be sorted by ascending title. You can override the default by using the **orderBy** parameter. You can specify one or more of the following fields in the **orderBy** parameter: * id * title * role
  Future<Response<SiteRolePaging>> listSiteMembershipsForPerson(
    String personId, {
    int skipCount,
    int maxItems,
    BuiltList<String> orderBy,
    BuiltList<String> relations,
    BuiltList<String> fields,
    String where,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/people/{personId}/sites'.replaceAll('{' r'personId' '}', personId.toString());

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'skipCount'] = skipCount;
    queryParams[r'maxItems'] = maxItems;
    queryParams[r'orderBy'] = orderBy;
    queryParams[r'relations'] = relations;
    queryParams[r'fields'] = fields;
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
      final serializer = _serializers.serializerForType(SiteRolePaging) as Serializer<SiteRolePaging>;
      final data = _serializers.deserializeWith<SiteRolePaging>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteRolePaging>(
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

  /// List sites
  ///
  /// Gets a list of sites in this repository.  You can use the **where** parameter to filter the returned sites by **visibility** or site **preset**.  Example to filter by **visibility**, use any one of:  ``` (visibility='PRIVATE') (visibility='PUBLIC') (visibility='MODERATED') ```  Example to filter by site **preset**:  ``` (preset='site-dashboard') ```  The default sort order for the returned list is for sites to be sorted by ascending title. You can override the default by using the **orderBy** parameter. You can specify one or more of the following fields in the **orderBy** parameter: * id * title * description  You can use the **relations** parameter to include one or more related entities in a single response and so reduce network traffic.  The entity types in Alfresco are organized in a tree structure. The **sites** entity has two children, **containers** and **members**. The following relations parameter returns all the container and member objects related to each site:  ``` containers,members ```
  Future<Response<SitePaging>> listSites({
    int skipCount,
    int maxItems,
    BuiltList<String> orderBy,
    BuiltList<String> relations,
    BuiltList<String> fields,
    String where,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/sites';

    final queryParams = <String, dynamic>{};
    final headerParams = <String, dynamic>{
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'skipCount'] = skipCount;
    queryParams[r'maxItems'] = maxItems;
    queryParams[r'orderBy'] = orderBy;
    queryParams[r'relations'] = relations;
    queryParams[r'fields'] = fields;
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
      final serializer = _serializers.serializerForType(SitePaging) as Serializer<SitePaging>;
      final data = _serializers.deserializeWith<SitePaging>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SitePaging>(
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

  /// Reject a site membership request
  ///
  /// Reject a site membership request.
  Future<Response<void>> rejectSiteMembershipRequest(
    String siteId,
    String inviteeId, {
    SiteMembershipRejectionBody siteMembershipRejectionBody,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/sites/{siteId}/site-membership-requests/{inviteeId}/reject'
        .replaceAll('{' r'siteId' '}', siteId.toString())
        .replaceAll('{' r'inviteeId' '}', inviteeId.toString());

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
        _serializers.serializerForType(SiteMembershipRejectionBody) as Serializer<SiteMembershipRejectionBody>;
    final serializedBody = _serializers.serializeWith(bodySerializer, siteMembershipRejectionBody);
    final jsonsiteMembershipRejectionBody = json.encode(serializedBody);
    bodyData = jsonsiteMembershipRejectionBody;

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

  /// Update a site
  ///
  /// **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Update the details for the given site **siteId**. Site Manager or otherwise a (site) admin can update title, description or visibility.  Note: the id of a site cannot be updated once the site has been created.
  Future<Response<SiteEntry>> updateSite(
    String siteId,
    SiteBodyUpdate siteBodyUpdate, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/sites/{siteId}'.replaceAll('{' r'siteId' '}', siteId.toString());

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

    final bodySerializer = _serializers.serializerForType(SiteBodyUpdate) as Serializer<SiteBodyUpdate>;
    final serializedBody = _serializers.serializeWith(bodySerializer, siteBodyUpdate);
    final jsonsiteBodyUpdate = json.encode(serializedBody);
    bodyData = jsonsiteBodyUpdate;

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
      final serializer = _serializers.serializerForType(SiteEntry) as Serializer<SiteEntry>;
      final data = _serializers.deserializeWith<SiteEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteEntry>(
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

  /// Update site membership of group
  ///
  /// **Note:** this endpoint is available in Alfresco 7.0.0 and newer versions.  Update the membership of person **groupId** in site **siteId**. You can set the **role** to one of four types: * SiteConsumer * SiteCollaborator * SiteContributor * SiteManager
  Future<Response<SiteGroupEntry>> updateSiteGroupMembership(
    String siteId,
    String groupId,
    SiteMembershipBodyUpdate siteMembershipBodyUpdate, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/sites/{siteId}/group-members/{groupId}'
        .replaceAll('{' r'siteId' '}', siteId.toString())
        .replaceAll('{' r'groupId' '}', groupId.toString());

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

    final bodySerializer =
        _serializers.serializerForType(SiteMembershipBodyUpdate) as Serializer<SiteMembershipBodyUpdate>;
    final serializedBody = _serializers.serializeWith(bodySerializer, siteMembershipBodyUpdate);
    final jsonsiteMembershipBodyUpdate = json.encode(serializedBody);
    bodyData = jsonsiteMembershipBodyUpdate;

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
      final serializer = _serializers.serializerForType(SiteGroupEntry) as Serializer<SiteGroupEntry>;
      final data = _serializers.deserializeWith<SiteGroupEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteGroupEntry>(
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

  /// Update a site membership
  ///
  /// Update the membership of person **personId** in site **siteId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.  You can set the **role** to one of four types:  * SiteConsumer * SiteCollaborator * SiteContributor * SiteManager
  Future<Response<SiteMemberEntry>> updateSiteMembership(
    String siteId,
    String personId,
    SiteMembershipBodyUpdate siteMembershipBodyUpdate, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/sites/{siteId}/members/{personId}'
        .replaceAll('{' r'siteId' '}', siteId.toString())
        .replaceAll('{' r'personId' '}', personId.toString());

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

    final bodySerializer =
        _serializers.serializerForType(SiteMembershipBodyUpdate) as Serializer<SiteMembershipBodyUpdate>;
    final serializedBody = _serializers.serializeWith(bodySerializer, siteMembershipBodyUpdate);
    final jsonsiteMembershipBodyUpdate = json.encode(serializedBody);
    bodyData = jsonsiteMembershipBodyUpdate;

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
      final serializer = _serializers.serializerForType(SiteMemberEntry) as Serializer<SiteMemberEntry>;
      final data = _serializers.deserializeWith<SiteMemberEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteMemberEntry>(
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

  /// Update a site membership request
  ///
  /// Updates the message for the site membership request to site **siteId** for person **personId**.  You can use the `-me-` string in place of `<personId>` to specify the currently authenticated user.
  Future<Response<SiteMembershipRequestEntry>> updateSiteMembershipRequestForPerson(
    String personId,
    String siteId,
    SiteMembershipRequestBodyUpdate siteMembershipRequestBodyUpdate, {
    BuiltList<String> fields,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/people/{personId}/site-membership-requests/{siteId}'
        .replaceAll('{' r'personId' '}', personId.toString())
        .replaceAll('{' r'siteId' '}', siteId.toString());

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

    final bodySerializer =
        _serializers.serializerForType(SiteMembershipRequestBodyUpdate) as Serializer<SiteMembershipRequestBodyUpdate>;
    final serializedBody = _serializers.serializeWith(bodySerializer, siteMembershipRequestBodyUpdate);
    final jsonsiteMembershipRequestBodyUpdate = json.encode(serializedBody);
    bodyData = jsonsiteMembershipRequestBodyUpdate;

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
      final serializer =
          _serializers.serializerForType(SiteMembershipRequestEntry) as Serializer<SiteMembershipRequestEntry>;
      final data = _serializers.deserializeWith<SiteMembershipRequestEntry>(
        serializer,
        response.data is String ? jsonDecode(response.data as String) : response.data,
      );

      return Response<SiteMembershipRequestEntry>(
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
