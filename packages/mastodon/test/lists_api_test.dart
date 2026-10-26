import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

/// tests for ListsApi
void main() {
  final instance = Mastodon().getListsApi();

  group(ListsApi, () {
    // Create a list
    //
    // Create a new list.  Version history:  2.1.0 - added\\ 3.3.0 - added `replies_policy`\\ 4.2.0 - added `exclusive`
    //
    //Future<List> createList(CreateListRequest createListRequest) async
    test('test createList', () async {
      // TODO
    });

    // Delete a list
    //
    // Version history:  2.1.0 - added
    //
    //Future deleteList(String id) async
    test('test deleteList', () async {
      // TODO
    });

    // Remove accounts from list
    //
    // Remove accounts from the given list.  Version history:  2.1.0 - added
    //
    //Future deleteListAccounts(String id, DeleteListAccountsRequest deleteListAccountsRequest) async
    test('test deleteListAccounts', () async {
      // TODO
    });

    // Show a single list
    //
    // Fetch the list with the given ID.  Version history:  2.1.0 - added
    //
    //Future<List> getList(String id) async
    test('test getList', () async {
      // TODO
    });

    // View accounts in a list
    //
    // Version history:  2.1.0 - added\\ 3.3.0 - both `min_id` and `max_id` can be used at the same time now
    //
    //Future<List<Account>> getListAccounts(String id, { int limit, String maxId, String minId, String sinceId }) async
    test('test getListAccounts', () async {
      // TODO
    });

    // View your lists
    //
    // Fetch all lists that the user owns.  Version history:  2.1.0 - added
    //
    //Future<List<List>> getLists() async
    test('test getLists', () async {
      // TODO
    });

    // Add accounts to a list
    //
    // Add accounts to the given list. Note that the user must be following these accounts.  Version history:  2.1.0 - added
    //
    //Future postListAccounts(String id, PostListAccountsRequest postListAccountsRequest) async
    test('test postListAccounts', () async {
      // TODO
    });

    // Update a list
    //
    // Change the properties of a list.  Version history:  2.1.0 - added\\ 3.3.0 - added `replies_policy` 4.2.0 - added `exclusive`
    //
    //Future<List> updateList(String id, UpdateListRequest updateListRequest) async
    test('test updateList', () async {
      // TODO
    });
  });
}
