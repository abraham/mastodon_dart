import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

/// tests for FiltersApi
void main() {
  final instance = Mastodon().getFiltersApi();

  group(FiltersApi, () {
    // Create a filter
    //
    // Version history:  2.4.3 - added\\ 3.1.0 - added `account` context to filter in profile views\\ 4.0.0 - deprecated. For compatibility purposes, now returns a V1::Filter representing one FilterKeyword (with the `keyword` being presented in the `phrase` attribute). This method will create a Filter that contains only one FilterKeyword. The `title` of the Filter and the `keyword` of the FilterKeyword will be set equal to the `phrase` provided.
    //
    //Future<V1Filter> createFilter(CreateFilterRequest createFilterRequest) async
    test('test createFilter', () async {
      // TODO
    });

    // Create a filter
    //
    // Create a filter group with the given parameters.  Version history:  4.0.0 - added\\ 4.4.0 (`mastodon` [API version] 5) - added `blur` value to `filter_action` attribute
    //
    //Future<Filter> createFilterV2(CreateFilterV2Request createFilterV2Request) async
    test('test createFilterV2', () async {
      // TODO
    });

    // Remove a filter
    //
    // Version history:  2.4.3 - added\\ 4.0.0 - deprecated. This method will delete only the FilterKeyword from its parent Filter. To delete the parent Filter, you must use the v2 filters API.
    //
    //Future deleteFilter(String id) async
    test('test deleteFilter', () async {
      // TODO
    });

    // Remove keywords from a filter
    //
    // Deletes the given filter keyword.  Version history:  4.0.0 - added
    //
    //Future deleteFilterKeywordV2(String id) async
    test('test deleteFilterKeywordV2', () async {
      // TODO
    });

    // Remove a status from a filter group
    //
    // Remove a status filter from the current filter group.  Version history:  4.0.0 - added
    //
    //Future<FilterStatus> deleteFilterStatusV2(String id) async
    test('test deleteFilterStatusV2', () async {
      // TODO
    });

    // Delete a filter
    //
    // Delete a filter group with the given id.  Version history:  4.0.0 - added
    //
    //Future deleteFilterV2(String id) async
    test('test deleteFilterV2', () async {
      // TODO
    });

    // View a single filter
    //
    // Version history:  2.4.3 - added\\ 4.0.0 - deprecated. For compatibility purposes, now returns a V1::Filter representing one FilterKeyword (with the `keyword` being presented in the `phrase` attribute)
    //
    //Future<V1Filter> getFilter(String id) async
    test('test getFilter', () async {
      // TODO
    });

    // View a single keyword
    //
    // Get one filter keyword by the given id.  Version history:  4.0.0 - added
    //
    //Future<FilterKeyword> getFilterKeywordV2(String id) async
    test('test getFilterKeywordV2', () async {
      // TODO
    });

    // View keywords added to a filter
    //
    // List all keywords attached to the current filter group.  Version history:  4.0.0 - added
    //
    //Future<List<FilterKeyword>> getFilterKeywordsV2(String filterId) async
    test('test getFilterKeywordsV2', () async {
      // TODO
    });

    // View a single status filter
    //
    // Obtain a single status filter.  Version history:  4.0.0 - added
    //
    //Future<FilterStatus> getFilterStatusV2(String id) async
    test('test getFilterStatusV2', () async {
      // TODO
    });

    // View all status filters
    //
    // Obtain a list of all status filters within this filter group.  Version history:  4.0.0 - added
    //
    //Future<List<FilterStatus>> getFilterStatusesV2(String filterId) async
    test('test getFilterStatusesV2', () async {
      // TODO
    });

    // View a specific filter
    //
    // Obtain a single filter group owned by the current user.  Version history:  4.0.0 - added
    //
    //Future<Filter> getFilterV2(String id) async
    test('test getFilterV2', () async {
      // TODO
    });

    // View your filters
    //
    // Version history:  2.4.3 - added\\ 4.0.0 - deprecated. For compatibility purposes, now returns a List of V1::Filter, with each V1::Filter representing one FilterKeyword (with the `keyword` being presented in the `phrase` attribute)
    //
    //Future<V1Filter> getFilters() async
    test('test getFilters', () async {
      // TODO
    });

    // View all filters
    //
    // Obtain a list of all filter groups for the current user.  Version history:  4.0.0 - added
    //
    //Future<List<Filter>> getFiltersV2() async
    test('test getFiltersV2', () async {
      // TODO
    });

    // Add a keyword to a filter
    //
    // Add the given keyword to the specified filter group  Version history:  4.0.0 - added
    //
    //Future<FilterKeyword> postFilterKeywordsV2(String filterId, PostFilterKeywordsV2Request postFilterKeywordsV2Request) async
    test('test postFilterKeywordsV2', () async {
      // TODO
    });

    // Add a status to a filter group
    //
    // Add a status filter to the current filter group.  Version history:  4.0.0 - added
    //
    //Future<FilterStatus> postFilterStatusesV2(String filterId, PostFilterStatusesV2Request postFilterStatusesV2Request) async
    test('test postFilterStatusesV2', () async {
      // TODO
    });

    // Update a filter
    //
    // Replaces a filter's parameters in-place.  Version history:  2.4.3 - added\\ 3.1.0 - added `account` context to filter in profile views\\ 4.0.0 - deprecated. For compatibility purposes, now returns a V1::Filter representing one FilterKeyword (with the `keyword` being presented in the `phrase` attribute). This method will return an error if you attempt to change `expires_in`, `irreversible`, or `context` for a filter with multiple keywords. Changing `phrase` and `whole_word` is always safe.
    //
    //Future<V1Filter> updateFilter(String id, UpdateFilterRequest updateFilterRequest) async
    test('test updateFilter', () async {
      // TODO
    });

    // Edit a keyword within a filter
    //
    // Update the given filter keyword.  Version history:  4.0.0 - added
    //
    //Future<FilterKeyword> updateFilterKeywordV2(String id, PostFilterKeywordsV2Request postFilterKeywordsV2Request) async
    test('test updateFilterKeywordV2', () async {
      // TODO
    });

    // Update a filter
    //
    // Update a filter group with the given parameters.  Version history:  4.0.0 - added\\ 4.4.0 (`mastodon` [API version] 5) - added `blur` value to `filter_action` attribute
    //
    //Future<Filter> updateFilterV2(String id, { UpdateFilterV2Request updateFilterV2Request }) async
    test('test updateFilterV2', () async {
      // TODO
    });
  });
}
