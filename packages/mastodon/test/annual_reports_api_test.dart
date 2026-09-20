import 'package:test/test.dart';
import 'package:mastodon/mastodon.dart';

/// tests for AnnualReportsApi
void main() {
  final instance = Mastodon().getAnnualReportsApi();

  group(AnnualReportsApi, () {
    // Get a single annual report
    //
    // Returns the current user's generated annual report for the given year, if it exists.  Version history:  4.4.0 - added
    //
    //Future<WrappedAnnualReports> getAnnualReport(String year) async
    test('test getAnnualReport', () async {
      // TODO
    });

    // Get the state of an annual report
    //
    // Returns the state of the annual report for the current user and given year.  Version history:  4.6.0 (`mastodon` [API version] 8) - added
    //
    //Future getAnnualReportState(String year) async
    test('test getAnnualReportState', () async {
      // TODO
    });

    // Get all annual reports
    //
    // Returns all of the current user's generated annual reports, if any.  Version history:  4.3.0 - added
    //
    //Future<WrappedAnnualReports> getAnnualReports() async
    test('test getAnnualReports', () async {
      // TODO
    });

    // Generate a new annual report {generate}
    //
    // Generate the user's annual report for the specified year.  Version history:  4.6.0 (`mastodon` [API version] 8) - added
    //
    //Future postAnnualReportGenerate(String year) async
    test('test postAnnualReportGenerate', () async {
      // TODO
    });

    // Mark an annual report as read
    //
    // Marks the user's generated annual report for the given year as read.  Version history:  4.3.0 - added
    //
    //Future postAnnualReportRead(String year) async
    test('test postAnnualReportRead', () async {
      // TODO
    });
  });
}
