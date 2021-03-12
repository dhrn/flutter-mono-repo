//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

library api_client.api;

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:api_client/serializers.dart';
import 'package:api_client/auth/api_key_auth.dart';
import 'package:api_client/auth/basic_auth.dart';
import 'package:api_client/auth/oauth.dart';
import 'package:api_client/api/actions_api.dart';
import 'package:api_client/api/activities_api.dart';
import 'package:api_client/api/audit_api.dart';
import 'package:api_client/api/comments_api.dart';
import 'package:api_client/api/downloads_api.dart';
import 'package:api_client/api/favorites_api.dart';
import 'package:api_client/api/groups_api.dart';
import 'package:api_client/api/networks_api.dart';
import 'package:api_client/api/nodes_api.dart';
import 'package:api_client/api/people_api.dart';
import 'package:api_client/api/preferences_api.dart';
import 'package:api_client/api/probes_api.dart';
import 'package:api_client/api/queries_api.dart';
import 'package:api_client/api/ratings_api.dart';
import 'package:api_client/api/renditions_api.dart';
import 'package:api_client/api/shared_links_api.dart';
import 'package:api_client/api/sites_api.dart';
import 'package:api_client/api/tags_api.dart';
import 'package:api_client/api/trashcan_api.dart';
import 'package:api_client/api/versions_api.dart';

final _defaultInterceptors = [
  OAuthInterceptor(),
  BasicAuthInterceptor(),
  ApiKeyAuthInterceptor(),
];

class ApiClient {
  static const String basePath = r'http://localhost/alfresco/api/-default-/public/alfresco/versions/1';

  final Dio dio;

  final Serializers serializers;

  ApiClient({
    Dio dio,
    Serializers serializers,
    String basePathOverride,
    List<Interceptor> interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: 5000,
              receiveTimeout: 3000,
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll(_defaultInterceptors);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    (this.dio.interceptors.firstWhere((element) => element is OAuthInterceptor, orElse: null) as OAuthInterceptor)
        ?.tokens[name] = token;
  }

  void setBasicAuth(String name, String username, String password) {
    (this.dio.interceptors.firstWhere((element) => element is BasicAuthInterceptor, orElse: null)
            as BasicAuthInterceptor)
        ?.authInfo[name] = BasicAuthInfo(username, password);
  }

  void setApiKey(String name, String apiKey) {
    (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor, orElse: null)
            as ApiKeyAuthInterceptor)
        ?.apiKeys[name] = apiKey;
  }

  /**
    * Get ActionsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  ActionsApi getActionsApi() {
    return ActionsApi(dio, serializers);
  }

  /**
    * Get ActivitiesApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  ActivitiesApi getActivitiesApi() {
    return ActivitiesApi(dio, serializers);
  }

  /**
    * Get AuditApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  AuditApi getAuditApi() {
    return AuditApi(dio, serializers);
  }

  /**
    * Get CommentsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  CommentsApi getCommentsApi() {
    return CommentsApi(dio, serializers);
  }

  /**
    * Get DownloadsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  DownloadsApi getDownloadsApi() {
    return DownloadsApi(dio, serializers);
  }

  /**
    * Get FavoritesApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  FavoritesApi getFavoritesApi() {
    return FavoritesApi(dio, serializers);
  }

  /**
    * Get GroupsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  GroupsApi getGroupsApi() {
    return GroupsApi(dio, serializers);
  }

  /**
    * Get NetworksApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  NetworksApi getNetworksApi() {
    return NetworksApi(dio, serializers);
  }

  /**
    * Get NodesApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  NodesApi getNodesApi() {
    return NodesApi(dio, serializers);
  }

  /**
    * Get PeopleApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  PeopleApi getPeopleApi() {
    return PeopleApi(dio, serializers);
  }

  /**
    * Get PreferencesApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  PreferencesApi getPreferencesApi() {
    return PreferencesApi(dio, serializers);
  }

  /**
    * Get ProbesApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  ProbesApi getProbesApi() {
    return ProbesApi(dio, serializers);
  }

  /**
    * Get QueriesApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  QueriesApi getQueriesApi() {
    return QueriesApi(dio, serializers);
  }

  /**
    * Get RatingsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  RatingsApi getRatingsApi() {
    return RatingsApi(dio, serializers);
  }

  /**
    * Get RenditionsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  RenditionsApi getRenditionsApi() {
    return RenditionsApi(dio, serializers);
  }

  /**
    * Get SharedLinksApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  SharedLinksApi getSharedLinksApi() {
    return SharedLinksApi(dio, serializers);
  }

  /**
    * Get SitesApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  SitesApi getSitesApi() {
    return SitesApi(dio, serializers);
  }

  /**
    * Get TagsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  TagsApi getTagsApi() {
    return TagsApi(dio, serializers);
  }

  /**
    * Get TrashcanApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  TrashcanApi getTrashcanApi() {
    return TrashcanApi(dio, serializers);
  }

  /**
    * Get VersionsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  VersionsApi getVersionsApi() {
    return VersionsApi(dio, serializers);
  }
}
