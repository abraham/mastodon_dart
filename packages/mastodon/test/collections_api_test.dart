import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

/// tests for CollectionsApi
void main() {
  final instance = Mastodon().getCollectionsApi();

  group(CollectionsApi, () {
    // Create a Collection
    //
    // Create a new Collection.  Version history:  4.6.0 (`mastodon` [API version] 10) - added
    //
    //Future<WrappedCollection> createCollection(CreateCollectionRequest createCollectionRequest) async
    test('test createCollection', () async {
      // TODO
    });

    // Delete a Collection
    //
    // Delete a Collection.  Version history:  4.6.0 (`mastodon` [API version] 10) - added
    //
    //Future deleteCollection(String id) async
    test('test deleteCollection', () async {
      // TODO
    });

    // Remove account from a Collection
    //
    // Remove an account from a Collection.  Version history:  4.6.0 (`mastodon` [API version] 10) - added
    //
    //Future deleteCollectionItem(String collectionId, String id) async
    test('test deleteCollectionItem', () async {
      // TODO
    });

    // Get a single Collection
    //
    // Version history:  4.6.0 (`mastodon` [API version] 10) - added
    //
    //Future<CollectionWithAccounts> getCollection(String id) async
    test('test getCollection', () async {
      // TODO
    });

    // Revoke inclusion in a Collection
    //
    // Remove the current user from a Collection created by a different user.  Version history:  4.6.0 (`mastodon` [API version] 10) - added
    //
    //Future postCollectionItemRevoke(String collectionId, String id) async
    test('test postCollectionItemRevoke', () async {
      // TODO
    });

    // Add an account to a Collection
    //
    // Add an account to a Collection.  Version history:  4.6.0 (`mastodon` [API version] 10) - added
    //
    //Future<WrappedCollectionItem> postCollectionItems(String collectionId, { PostCollectionItemsRequest postCollectionItemsRequest }) async
    test('test postCollectionItems', () async {
      // TODO
    });

    // Update a Collection
    //
    // Update an existing Collection.  Version history:  4.6.0 (`mastodon` [API version] 10) - added
    //
    //Future<WrappedCollection> updateCollection(String id, { UpdateCollectionRequest updateCollectionRequest }) async
    test('test updateCollection', () async {
      // TODO
    });
  });
}
