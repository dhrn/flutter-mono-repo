import 'package:api_client/api.dart';
import 'package:api_client/api/authentication_api.dart';
import 'package:test/test.dart';

/// tests for AuthenticationApi
void main() {
  final instance = ApiClient().getAuthenticationApi();

  group(AuthenticationApi, () {
    // Create ticket (login)
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Logs in and returns the new authentication ticket.  The userId and password properties are mandatory in the request body. For example: ```JSON {     \"userId\": \"jbloggs\",     \"password\": \"password\" } ``` To use the ticket in future requests you should pass it in the request header. For example using Javascript:   ```Javascript     request.setRequestHeader (\"Authorization\", \"Basic \" + btoa(ticket));   ```
    //
    //Future<TicketEntry> createTicket(TicketBody ticketBodyCreate) async
    test('test createTicket', () async {
      // TODO
    });

    // Delete ticket (logout)
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Deletes logged in ticket (logout).
    //
    //Future deleteTicket() async
    test('test deleteTicket', () async {
      // TODO
    });

    // Validate ticket
    //
    // **Note:** this endpoint is available in Alfresco 5.2 and newer versions.  Validates the specified ticket (derived from Authorization header) is still valid.  For example, you can pass the Authorization request header using Javascript:   ```Javascript     request.setRequestHeader (\"Authorization\", \"Basic \" + btoa(ticket));   ```
    //
    //Future<ValidTicketEntry> validateTicket() async
    test('test validateTicket', () async {
      // TODO
    });
  });
}
