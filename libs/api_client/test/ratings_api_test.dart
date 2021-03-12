import 'package:api_client/api.dart';
import 'package:api_client/api/ratings_api.dart';
import 'package:test/test.dart';

/// tests for RatingsApi
void main() {
  final instance = ApiClient().getRatingsApi();

  group(RatingsApi, () {
    // Create a rating
    //
    // Create a rating for the node with identifier **nodeId**
    //
    //Future<RatingEntry> createRating(String nodeId, RatingBody ratingBodyCreate, { BuiltList<String> fields }) async
    test('test createRating', () async {
      // TODO
    });

    // Delete a rating
    //
    // Deletes rating **ratingId** from node **nodeId**.
    //
    //Future deleteRating(String nodeId, String ratingId) async
    test('test deleteRating', () async {
      // TODO
    });

    // Get a rating
    //
    // Get the specific rating **ratingId** on node **nodeId**.
    //
    //Future<RatingEntry> getRating(String nodeId, String ratingId, { BuiltList<String> fields }) async
    test('test getRating', () async {
      // TODO
    });

    // List ratings
    //
    // Gets a list of ratings for node **nodeId**.
    //
    //Future<RatingPaging> listRatings(String nodeId, { int skipCount, int maxItems, BuiltList<String> fields }) async
    test('test listRatings', () async {
      // TODO
    });
  });
}
