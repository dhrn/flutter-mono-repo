import 'package:api_client/api.dart';
import 'package:api_client/api/audit_api.dart';
import 'package:test/test.dart';

/// tests for AuditApi
void main() {
  final instance = ApiClient().getAuditApi();

  group(AuditApi, () {
    // Permanently delete audit entries for an audit application
    //
    // **Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Permanently delete audit entries for an audit application **auditApplicationId**.  The **where** clause must be specified, either with an inclusive time period or for an inclusive range of ids. The delete is within the context of the given audit application.  For example:  *   ```where=(createdAt BETWEEN ('2017-06-02T12:13:51.593+01:00' , '2017-06-04T10:05:16.536+01:00')``` *   ```where=(id BETWEEN ('1234', '4321')```  You must have admin rights to delete audit information.
    //
    //Future deleteAuditEntriesForAuditApp(String auditApplicationId, String where) async
    test('test deleteAuditEntriesForAuditApp', () async {
      // TODO
    });

    // Permanently delete an audit entry
    //
    // **Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Permanently delete a single audit entry **auditEntryId**.  You must have admin rights to delete audit information.
    //
    //Future deleteAuditEntry(String auditApplicationId, String auditEntryId) async
    test('test deleteAuditEntry', () async {
      // TODO
    });

    // Get audit application info
    //
    // **Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Get status of an audit application **auditApplicationId**.  You must have admin rights to retrieve audit information.  You can use the **include** parameter to return the minimum and/or maximum audit record id for the application.
    //
    //Future<AuditApp> getAuditApp(String auditApplicationId, { BuiltList<String> fields, BuiltList<String> include }) async
    test('test getAuditApp', () async {
      // TODO
    });

    // Get audit entry
    //
    // **Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Gets audit entry **auditEntryId**.  You must have admin rights to access audit information.
    //
    //Future<AuditEntryEntry> getAuditEntry(String auditApplicationId, String auditEntryId, { BuiltList<String> fields }) async
    test('test getAuditEntry', () async {
      // TODO
    });

    // List audit applications
    //
    // **Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Gets a list of audit applications in this repository.  This list may include pre-configured audit applications, if enabled, such as:  * alfresco-access * CMISChangeLog * Alfresco Tagging Service * Alfresco Sync Service (used by Enterprise Cloud Sync)  You must have admin rights to retrieve audit information.
    //
    //Future<AuditAppPaging> listAuditApps({ int skipCount, int maxItems, BuiltList<String> fields }) async
    test('test listAuditApps', () async {
      // TODO
    });

    // List audit entries for an audit application
    //
    // **Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Gets a list of audit entries for audit application **auditApplicationId**.  You can use the **include** parameter to return additional **values** information.  The list can be filtered by one or more of: * **createdByUser** person id * **createdAt** inclusive time period * **id** inclusive range of ids * **valuesKey** audit entry values contains the exact matching key * **valuesValue** audit entry values contains the exact matching value  The default sort order is **createdAt** ascending, but you can use an optional **ASC** or **DESC** modifier to specify an ascending or descending sort order.  For example, specifying ```orderBy=createdAt DESC``` returns audit entries in descending **createdAt** order.  You must have admin rights to retrieve audit information.
    //
    //Future<AuditEntryPaging> listAuditEntriesForAuditApp(String auditApplicationId, { int skipCount, BuiltList<String> orderBy, int maxItems, String where, BuiltList<String> include, BuiltList<String> fields }) async
    test('test listAuditEntriesForAuditApp', () async {
      // TODO
    });

    // List audit entries for a node
    //
    // **Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Gets a list of audit entries for node **nodeId**.  The list can be filtered by **createdByUser** and for a given inclusive time period.  The default sort order is **createdAt** ascending, but you can use an optional **ASC** or **DESC** modifier to specify an ascending or descending sort order.  For example, specifying ```orderBy=createdAt DESC``` returns audit entries in descending **createdAt** order.  This relies on the pre-configured 'alfresco-access' audit application.
    //
    //Future<AuditEntryPaging> listAuditEntriesForNode(String nodeId, { int skipCount, BuiltList<String> orderBy, int maxItems, String where, BuiltList<String> include, BuiltList<String> fields }) async
    test('test listAuditEntriesForNode', () async {
      // TODO
    });

    // Update audit application info
    //
    // **Note:** this endpoint is available in Alfresco 5.2.2 and newer versions.  Disable or re-enable the audit application **auditApplicationId**.  New audit entries will not be created for a disabled audit application until it is re-enabled (and system-wide auditing is also enabled).  Note, it is still possible to query &/or delete any existing audit entries even if auditing is disabled for the audit application.  You must have admin rights to update audit application.
    //
    //Future<AuditApp> updateAuditApp(String auditApplicationId, AuditBodyUpdate auditAppBodyUpdate, { BuiltList<String> fields }) async
    test('test updateAuditApp', () async {
      // TODO
    });
  });
}
