//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:api_client/model/action_body_exec.dart';
import 'package:api_client/model/action_definition.dart';
import 'package:api_client/model/action_definition_entry.dart';
import 'package:api_client/model/action_definition_list.dart';
import 'package:api_client/model/action_definition_list_list.dart';
import 'package:api_client/model/action_exec_result.dart';
import 'package:api_client/model/action_exec_result_entry.dart';
import 'package:api_client/model/action_parameter_definition.dart';
import 'package:api_client/model/activity.dart';
import 'package:api_client/model/activity_entry.dart';
import 'package:api_client/model/activity_paging.dart';
import 'package:api_client/model/activity_paging_list.dart';
import 'package:api_client/model/association.dart';
import 'package:api_client/model/association_body.dart';
import 'package:api_client/model/association_entry.dart';
import 'package:api_client/model/association_info.dart';
import 'package:api_client/model/audit_app.dart';
import 'package:api_client/model/audit_app_entry.dart';
import 'package:api_client/model/audit_app_paging.dart';
import 'package:api_client/model/audit_app_paging_list.dart';
import 'package:api_client/model/audit_body_update.dart';
import 'package:api_client/model/audit_entry.dart';
import 'package:api_client/model/audit_entry_entry.dart';
import 'package:api_client/model/audit_entry_paging.dart';
import 'package:api_client/model/audit_entry_paging_list.dart';
import 'package:api_client/model/capabilities.dart';
import 'package:api_client/model/child_association.dart';
import 'package:api_client/model/child_association_body.dart';
import 'package:api_client/model/child_association_entry.dart';
import 'package:api_client/model/child_association_info.dart';
import 'package:api_client/model/client_body.dart';
import 'package:api_client/model/comment.dart';
import 'package:api_client/model/comment_body.dart';
import 'package:api_client/model/comment_entry.dart';
import 'package:api_client/model/comment_paging.dart';
import 'package:api_client/model/comment_paging_list.dart';
import 'package:api_client/model/company.dart';
import 'package:api_client/model/constraint.dart';
import 'package:api_client/model/content_info.dart';
import 'package:api_client/model/definition.dart';
import 'package:api_client/model/deleted_node.dart';
import 'package:api_client/model/deleted_node_all_of.dart';
import 'package:api_client/model/deleted_node_body_restore.dart';
import 'package:api_client/model/deleted_node_entry.dart';
import 'package:api_client/model/deleted_nodes_paging.dart';
import 'package:api_client/model/deleted_nodes_paging_list.dart';
import 'package:api_client/model/direct_access_url.dart';
import 'package:api_client/model/direct_access_url_body_create.dart';
import 'package:api_client/model/direct_access_url_entry.dart';
import 'package:api_client/model/download.dart';
import 'package:api_client/model/download_body_create.dart';
import 'package:api_client/model/download_entry.dart';
import 'package:api_client/model/error.dart';
import 'package:api_client/model/error_error.dart';
import 'package:api_client/model/favorite.dart';
import 'package:api_client/model/favorite_body_create.dart';
import 'package:api_client/model/favorite_entry.dart';
import 'package:api_client/model/favorite_paging.dart';
import 'package:api_client/model/favorite_paging_list.dart';
import 'package:api_client/model/favorite_site.dart';
import 'package:api_client/model/favorite_site_body_create.dart';
import 'package:api_client/model/favorite_site_entry.dart';
import 'package:api_client/model/group.dart';
import 'package:api_client/model/group_body_create.dart';
import 'package:api_client/model/group_body_update.dart';
import 'package:api_client/model/group_entry.dart';
import 'package:api_client/model/group_member.dart';
import 'package:api_client/model/group_member_entry.dart';
import 'package:api_client/model/group_member_paging.dart';
import 'package:api_client/model/group_member_paging_list.dart';
import 'package:api_client/model/group_membership_body_create.dart';
import 'package:api_client/model/group_paging.dart';
import 'package:api_client/model/group_paging_list.dart';
import 'package:api_client/model/network_quota.dart';
import 'package:api_client/model/node.dart';
import 'package:api_client/model/node_association.dart';
import 'package:api_client/model/node_association_all_of.dart';
import 'package:api_client/model/node_association_entry.dart';
import 'package:api_client/model/node_association_paging.dart';
import 'package:api_client/model/node_association_paging_list.dart';
import 'package:api_client/model/node_body_copy.dart';
import 'package:api_client/model/node_body_create.dart';
import 'package:api_client/model/node_body_create_association.dart';
import 'package:api_client/model/node_body_lock.dart';
import 'package:api_client/model/node_body_move.dart';
import 'package:api_client/model/node_body_update.dart';
import 'package:api_client/model/node_child_association.dart';
import 'package:api_client/model/node_child_association_all_of.dart';
import 'package:api_client/model/node_child_association_entry.dart';
import 'package:api_client/model/node_child_association_paging.dart';
import 'package:api_client/model/node_child_association_paging_list.dart';
import 'package:api_client/model/node_entry.dart';
import 'package:api_client/model/node_paging.dart';
import 'package:api_client/model/node_paging_list.dart';
import 'package:api_client/model/pagination.dart';
import 'package:api_client/model/password_reset_body.dart';
import 'package:api_client/model/path_element.dart';
import 'package:api_client/model/path_info.dart';
import 'package:api_client/model/permission_element.dart';
import 'package:api_client/model/permissions_body.dart';
import 'package:api_client/model/permissions_info.dart';
import 'package:api_client/model/person.dart';
import 'package:api_client/model/person_body_create.dart';
import 'package:api_client/model/person_body_update.dart';
import 'package:api_client/model/person_entry.dart';
import 'package:api_client/model/person_network.dart';
import 'package:api_client/model/person_network_entry.dart';
import 'package:api_client/model/person_network_paging.dart';
import 'package:api_client/model/person_network_paging_list.dart';
import 'package:api_client/model/person_paging.dart';
import 'package:api_client/model/person_paging_list.dart';
import 'package:api_client/model/preference.dart';
import 'package:api_client/model/preference_entry.dart';
import 'package:api_client/model/preference_paging.dart';
import 'package:api_client/model/preference_paging_list.dart';
import 'package:api_client/model/probe_entry.dart';
import 'package:api_client/model/probe_entry_entry.dart';
import 'package:api_client/model/property.dart';
import 'package:api_client/model/rating.dart';
import 'package:api_client/model/rating_aggregate.dart';
import 'package:api_client/model/rating_body.dart';
import 'package:api_client/model/rating_entry.dart';
import 'package:api_client/model/rating_paging.dart';
import 'package:api_client/model/rating_paging_list.dart';
import 'package:api_client/model/rendition.dart';
import 'package:api_client/model/rendition_body_create.dart';
import 'package:api_client/model/rendition_entry.dart';
import 'package:api_client/model/rendition_paging.dart';
import 'package:api_client/model/rendition_paging_list.dart';
import 'package:api_client/model/revert_body.dart';
import 'package:api_client/model/shared_link.dart';
import 'package:api_client/model/shared_link_body_create.dart';
import 'package:api_client/model/shared_link_body_email.dart';
import 'package:api_client/model/shared_link_entry.dart';
import 'package:api_client/model/shared_link_paging.dart';
import 'package:api_client/model/shared_link_paging_list.dart';
import 'package:api_client/model/site.dart';
import 'package:api_client/model/site_body_create.dart';
import 'package:api_client/model/site_body_update.dart';
import 'package:api_client/model/site_container.dart';
import 'package:api_client/model/site_container_entry.dart';
import 'package:api_client/model/site_container_paging.dart';
import 'package:api_client/model/site_container_paging_list.dart';
import 'package:api_client/model/site_entry.dart';
import 'package:api_client/model/site_group.dart';
import 'package:api_client/model/site_group_entry.dart';
import 'package:api_client/model/site_group_paging.dart';
import 'package:api_client/model/site_group_paging_list.dart';
import 'package:api_client/model/site_member.dart';
import 'package:api_client/model/site_member_entry.dart';
import 'package:api_client/model/site_member_paging.dart';
import 'package:api_client/model/site_member_paging_list.dart';
import 'package:api_client/model/site_membership_approval_body.dart';
import 'package:api_client/model/site_membership_body_create.dart';
import 'package:api_client/model/site_membership_body_update.dart';
import 'package:api_client/model/site_membership_rejection_body.dart';
import 'package:api_client/model/site_membership_request.dart';
import 'package:api_client/model/site_membership_request_body_create.dart';
import 'package:api_client/model/site_membership_request_body_update.dart';
import 'package:api_client/model/site_membership_request_entry.dart';
import 'package:api_client/model/site_membership_request_paging.dart';
import 'package:api_client/model/site_membership_request_paging_list.dart';
import 'package:api_client/model/site_membership_request_with_person.dart';
import 'package:api_client/model/site_membership_request_with_person_entry.dart';
import 'package:api_client/model/site_membership_request_with_person_paging.dart';
import 'package:api_client/model/site_membership_request_with_person_paging_list.dart';
import 'package:api_client/model/site_paging.dart';
import 'package:api_client/model/site_paging_list.dart';
import 'package:api_client/model/site_role.dart';
import 'package:api_client/model/site_role_entry.dart';
import 'package:api_client/model/site_role_paging.dart';
import 'package:api_client/model/site_role_paging_list.dart';
import 'package:api_client/model/tag.dart';
import 'package:api_client/model/tag_body.dart';
import 'package:api_client/model/tag_entry.dart';
import 'package:api_client/model/tag_paging.dart';
import 'package:api_client/model/tag_paging_list.dart';
import 'package:api_client/model/user_info.dart';
import 'package:api_client/model/version.dart';
import 'package:api_client/model/version_entry.dart';
import 'package:api_client/model/version_paging.dart';
import 'package:api_client/model/version_paging_list.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  ActionBodyExec,
  ActionDefinition,
  ActionDefinitionEntry,
  ActionDefinitionList,
  ActionDefinitionListList,
  ActionExecResult,
  ActionExecResultEntry,
  ActionParameterDefinition,
  Activity,
  ActivityEntry,
  ActivityPaging,
  ActivityPagingList,
  Association,
  AssociationBody,
  AssociationEntry,
  AssociationInfo,
  AuditApp,
  AuditAppEntry,
  AuditAppPaging,
  AuditAppPagingList,
  AuditBodyUpdate,
  AuditEntry,
  AuditEntryEntry,
  AuditEntryPaging,
  AuditEntryPagingList,
  Capabilities,
  ChildAssociation,
  ChildAssociationBody,
  ChildAssociationEntry,
  ChildAssociationInfo,
  ClientBody,
  Comment,
  CommentBody,
  CommentEntry,
  CommentPaging,
  CommentPagingList,
  Company,
  Constraint,
  ContentInfo,
  Definition,
  DeletedNode,
  DeletedNodeAllOf,
  DeletedNodeBodyRestore,
  DeletedNodeEntry,
  DeletedNodesPaging,
  DeletedNodesPagingList,
  DirectAccessUrl,
  DirectAccessUrlBodyCreate,
  DirectAccessUrlEntry,
  Download,
  DownloadBodyCreate,
  DownloadEntry,
  Error,
  ErrorError,
  Favorite,
  FavoriteBodyCreate,
  FavoriteEntry,
  FavoritePaging,
  FavoritePagingList,
  FavoriteSite,
  FavoriteSiteBodyCreate,
  FavoriteSiteEntry,
  Group,
  GroupBodyCreate,
  GroupBodyUpdate,
  GroupEntry,
  GroupMember,
  GroupMemberEntry,
  GroupMemberPaging,
  GroupMemberPagingList,
  GroupMembershipBodyCreate,
  GroupPaging,
  GroupPagingList,
  NetworkQuota,
  Node,
  NodeAssociation,
  NodeAssociationAllOf,
  NodeAssociationEntry,
  NodeAssociationPaging,
  NodeAssociationPagingList,
  NodeBodyCopy,
  NodeBodyCreate,
  NodeBodyCreateAssociation,
  NodeBodyLock,
  NodeBodyMove,
  NodeBodyUpdate,
  NodeChildAssociation,
  NodeChildAssociationAllOf,
  NodeChildAssociationEntry,
  NodeChildAssociationPaging,
  NodeChildAssociationPagingList,
  NodeEntry,
  NodePaging,
  NodePagingList,
  Pagination,
  PasswordResetBody,
  PathElement,
  PathInfo,
  PermissionElement,
  PermissionsBody,
  PermissionsInfo,
  Person,
  PersonBodyCreate,
  PersonBodyUpdate,
  PersonEntry,
  PersonNetwork,
  PersonNetworkEntry,
  PersonNetworkPaging,
  PersonNetworkPagingList,
  PersonPaging,
  PersonPagingList,
  Preference,
  PreferenceEntry,
  PreferencePaging,
  PreferencePagingList,
  ProbeEntry,
  ProbeEntryEntry,
  Property,
  Rating,
  RatingAggregate,
  RatingBody,
  RatingEntry,
  RatingPaging,
  RatingPagingList,
  Rendition,
  RenditionBodyCreate,
  RenditionEntry,
  RenditionPaging,
  RenditionPagingList,
  RevertBody,
  SharedLink,
  SharedLinkBodyCreate,
  SharedLinkBodyEmail,
  SharedLinkEntry,
  SharedLinkPaging,
  SharedLinkPagingList,
  Site,
  SiteBodyCreate,
  SiteBodyUpdate,
  SiteContainer,
  SiteContainerEntry,
  SiteContainerPaging,
  SiteContainerPagingList,
  SiteEntry,
  SiteGroup,
  SiteGroupEntry,
  SiteGroupPaging,
  SiteGroupPagingList,
  SiteMember,
  SiteMemberEntry,
  SiteMemberPaging,
  SiteMemberPagingList,
  SiteMembershipApprovalBody,
  SiteMembershipBodyCreate,
  SiteMembershipBodyUpdate,
  SiteMembershipRejectionBody,
  SiteMembershipRequest,
  SiteMembershipRequestBodyCreate,
  SiteMembershipRequestBodyUpdate,
  SiteMembershipRequestEntry,
  SiteMembershipRequestPaging,
  SiteMembershipRequestPagingList,
  SiteMembershipRequestWithPerson,
  SiteMembershipRequestWithPersonEntry,
  SiteMembershipRequestWithPersonPaging,
  SiteMembershipRequestWithPersonPagingList,
  SitePaging,
  SitePagingList,
  SiteRole,
  SiteRoleEntry,
  SiteRolePaging,
  SiteRolePagingList,
  Tag,
  TagBody,
  TagEntry,
  TagPaging,
  TagPagingList,
  UserInfo,
  Version,
  VersionEntry,
  VersionPaging,
  VersionPagingList,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TagBody)]),
        () => ListBuilder<TagBody>(),
      )
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers = (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
