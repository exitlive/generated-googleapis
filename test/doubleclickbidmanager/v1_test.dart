library googleapis.doubleclickbidmanager.v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis/doubleclickbidmanager/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request.finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(
    core.int status, core.Map headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed2312() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2312(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDownloadLineItemsRequest = 0;
buildDownloadLineItemsRequest() {
  var o = new api.DownloadLineItemsRequest();
  buildCounterDownloadLineItemsRequest++;
  if (buildCounterDownloadLineItemsRequest < 3) {
    o.fileSpec = "foo";
    o.filterIds = buildUnnamed2312();
    o.filterType = "foo";
    o.format = "foo";
  }
  buildCounterDownloadLineItemsRequest--;
  return o;
}

checkDownloadLineItemsRequest(api.DownloadLineItemsRequest o) {
  buildCounterDownloadLineItemsRequest++;
  if (buildCounterDownloadLineItemsRequest < 3) {
    unittest.expect(o.fileSpec, unittest.equals('foo'));
    checkUnnamed2312(o.filterIds);
    unittest.expect(o.filterType, unittest.equals('foo'));
    unittest.expect(o.format, unittest.equals('foo'));
  }
  buildCounterDownloadLineItemsRequest--;
}

core.int buildCounterDownloadLineItemsResponse = 0;
buildDownloadLineItemsResponse() {
  var o = new api.DownloadLineItemsResponse();
  buildCounterDownloadLineItemsResponse++;
  if (buildCounterDownloadLineItemsResponse < 3) {
    o.lineItems = "foo";
  }
  buildCounterDownloadLineItemsResponse--;
  return o;
}

checkDownloadLineItemsResponse(api.DownloadLineItemsResponse o) {
  buildCounterDownloadLineItemsResponse++;
  if (buildCounterDownloadLineItemsResponse < 3) {
    unittest.expect(o.lineItems, unittest.equals('foo'));
  }
  buildCounterDownloadLineItemsResponse--;
}

core.int buildCounterFilterPair = 0;
buildFilterPair() {
  var o = new api.FilterPair();
  buildCounterFilterPair++;
  if (buildCounterFilterPair < 3) {
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterFilterPair--;
  return o;
}

checkFilterPair(api.FilterPair o) {
  buildCounterFilterPair++;
  if (buildCounterFilterPair < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterFilterPair--;
}

buildUnnamed2313() {
  var o = new core.List<api.Query>();
  o.add(buildQuery());
  o.add(buildQuery());
  return o;
}

checkUnnamed2313(core.List<api.Query> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuery(o[0]);
  checkQuery(o[1]);
}

core.int buildCounterListQueriesResponse = 0;
buildListQueriesResponse() {
  var o = new api.ListQueriesResponse();
  buildCounterListQueriesResponse++;
  if (buildCounterListQueriesResponse < 3) {
    o.kind = "foo";
    o.queries = buildUnnamed2313();
  }
  buildCounterListQueriesResponse--;
  return o;
}

checkListQueriesResponse(api.ListQueriesResponse o) {
  buildCounterListQueriesResponse++;
  if (buildCounterListQueriesResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2313(o.queries);
  }
  buildCounterListQueriesResponse--;
}

buildUnnamed2314() {
  var o = new core.List<api.Report>();
  o.add(buildReport());
  o.add(buildReport());
  return o;
}

checkUnnamed2314(core.List<api.Report> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReport(o[0]);
  checkReport(o[1]);
}

core.int buildCounterListReportsResponse = 0;
buildListReportsResponse() {
  var o = new api.ListReportsResponse();
  buildCounterListReportsResponse++;
  if (buildCounterListReportsResponse < 3) {
    o.kind = "foo";
    o.reports = buildUnnamed2314();
  }
  buildCounterListReportsResponse--;
  return o;
}

checkListReportsResponse(api.ListReportsResponse o) {
  buildCounterListReportsResponse++;
  if (buildCounterListReportsResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2314(o.reports);
  }
  buildCounterListReportsResponse--;
}

core.int buildCounterNote = 0;
buildNote() {
  var o = new api.Note();
  buildCounterNote++;
  if (buildCounterNote < 3) {
    o.id = "foo";
    o.message = "foo";
    o.source = "foo";
    o.timestamp = "foo";
    o.username = "foo";
  }
  buildCounterNote--;
  return o;
}

checkNote(api.Note o) {
  buildCounterNote++;
  if (buildCounterNote < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
    unittest.expect(o.username, unittest.equals('foo'));
  }
  buildCounterNote--;
}

buildUnnamed2315() {
  var o = new core.List<api.Note>();
  o.add(buildNote());
  o.add(buildNote());
  return o;
}

checkUnnamed2315(core.List<api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o[0]);
  checkNote(o[1]);
}

core.int buildCounterNotifyProposalChangeRequest = 0;
buildNotifyProposalChangeRequest() {
  var o = new api.NotifyProposalChangeRequest();
  buildCounterNotifyProposalChangeRequest++;
  if (buildCounterNotifyProposalChangeRequest < 3) {
    o.action = "foo";
    o.href = "foo";
    o.id = "foo";
    o.notes = buildUnnamed2315();
    o.token = "foo";
  }
  buildCounterNotifyProposalChangeRequest--;
  return o;
}

checkNotifyProposalChangeRequest(api.NotifyProposalChangeRequest o) {
  buildCounterNotifyProposalChangeRequest++;
  if (buildCounterNotifyProposalChangeRequest < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.href, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2315(o.notes);
    unittest.expect(o.token, unittest.equals('foo'));
  }
  buildCounterNotifyProposalChangeRequest--;
}

buildUnnamed2316() {
  var o = new core.List<api.FilterPair>();
  o.add(buildFilterPair());
  o.add(buildFilterPair());
  return o;
}

checkUnnamed2316(core.List<api.FilterPair> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterPair(o[0]);
  checkFilterPair(o[1]);
}

buildUnnamed2317() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2317(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2318() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2318(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterParameters = 0;
buildParameters() {
  var o = new api.Parameters();
  buildCounterParameters++;
  if (buildCounterParameters < 3) {
    o.filters = buildUnnamed2316();
    o.groupBys = buildUnnamed2317();
    o.includeInviteData = true;
    o.metrics = buildUnnamed2318();
    o.type = "foo";
  }
  buildCounterParameters--;
  return o;
}

checkParameters(api.Parameters o) {
  buildCounterParameters++;
  if (buildCounterParameters < 3) {
    checkUnnamed2316(o.filters);
    checkUnnamed2317(o.groupBys);
    unittest.expect(o.includeInviteData, unittest.isTrue);
    checkUnnamed2318(o.metrics);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterParameters--;
}

core.int buildCounterQuery = 0;
buildQuery() {
  var o = new api.Query();
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    o.kind = "foo";
    o.metadata = buildQueryMetadata();
    o.params = buildParameters();
    o.queryId = "foo";
    o.reportDataEndTimeMs = "foo";
    o.reportDataStartTimeMs = "foo";
    o.schedule = buildQuerySchedule();
    o.timezoneCode = "foo";
  }
  buildCounterQuery--;
  return o;
}

checkQuery(api.Query o) {
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkQueryMetadata(o.metadata);
    checkParameters(o.params);
    unittest.expect(o.queryId, unittest.equals('foo'));
    unittest.expect(o.reportDataEndTimeMs, unittest.equals('foo'));
    unittest.expect(o.reportDataStartTimeMs, unittest.equals('foo'));
    checkQuerySchedule(o.schedule);
    unittest.expect(o.timezoneCode, unittest.equals('foo'));
  }
  buildCounterQuery--;
}

buildUnnamed2319() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2319(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterQueryMetadata = 0;
buildQueryMetadata() {
  var o = new api.QueryMetadata();
  buildCounterQueryMetadata++;
  if (buildCounterQueryMetadata < 3) {
    o.dataRange = "foo";
    o.format = "foo";
    o.googleCloudStoragePathForLatestReport = "foo";
    o.googleDrivePathForLatestReport = "foo";
    o.latestReportRunTimeMs = "foo";
    o.locale = "foo";
    o.reportCount = 42;
    o.running = true;
    o.sendNotification = true;
    o.shareEmailAddress = buildUnnamed2319();
    o.title = "foo";
  }
  buildCounterQueryMetadata--;
  return o;
}

checkQueryMetadata(api.QueryMetadata o) {
  buildCounterQueryMetadata++;
  if (buildCounterQueryMetadata < 3) {
    unittest.expect(o.dataRange, unittest.equals('foo'));
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.googleCloudStoragePathForLatestReport, unittest.equals('foo'));
    unittest.expect(o.googleDrivePathForLatestReport, unittest.equals('foo'));
    unittest.expect(o.latestReportRunTimeMs, unittest.equals('foo'));
    unittest.expect(o.locale, unittest.equals('foo'));
    unittest.expect(o.reportCount, unittest.equals(42));
    unittest.expect(o.running, unittest.isTrue);
    unittest.expect(o.sendNotification, unittest.isTrue);
    checkUnnamed2319(o.shareEmailAddress);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterQueryMetadata--;
}

core.int buildCounterQuerySchedule = 0;
buildQuerySchedule() {
  var o = new api.QuerySchedule();
  buildCounterQuerySchedule++;
  if (buildCounterQuerySchedule < 3) {
    o.endTimeMs = "foo";
    o.frequency = "foo";
    o.nextRunMinuteOfDay = 42;
    o.nextRunTimezoneCode = "foo";
  }
  buildCounterQuerySchedule--;
  return o;
}

checkQuerySchedule(api.QuerySchedule o) {
  buildCounterQuerySchedule++;
  if (buildCounterQuerySchedule < 3) {
    unittest.expect(o.endTimeMs, unittest.equals('foo'));
    unittest.expect(o.frequency, unittest.equals('foo'));
    unittest.expect(o.nextRunMinuteOfDay, unittest.equals(42));
    unittest.expect(o.nextRunTimezoneCode, unittest.equals('foo'));
  }
  buildCounterQuerySchedule--;
}

core.int buildCounterReport = 0;
buildReport() {
  var o = new api.Report();
  buildCounterReport++;
  if (buildCounterReport < 3) {
    o.key = buildReportKey();
    o.metadata = buildReportMetadata();
    o.params = buildParameters();
  }
  buildCounterReport--;
  return o;
}

checkReport(api.Report o) {
  buildCounterReport++;
  if (buildCounterReport < 3) {
    checkReportKey(o.key);
    checkReportMetadata(o.metadata);
    checkParameters(o.params);
  }
  buildCounterReport--;
}

core.int buildCounterReportFailure = 0;
buildReportFailure() {
  var o = new api.ReportFailure();
  buildCounterReportFailure++;
  if (buildCounterReportFailure < 3) {
    o.errorCode = "foo";
  }
  buildCounterReportFailure--;
  return o;
}

checkReportFailure(api.ReportFailure o) {
  buildCounterReportFailure++;
  if (buildCounterReportFailure < 3) {
    unittest.expect(o.errorCode, unittest.equals('foo'));
  }
  buildCounterReportFailure--;
}

core.int buildCounterReportKey = 0;
buildReportKey() {
  var o = new api.ReportKey();
  buildCounterReportKey++;
  if (buildCounterReportKey < 3) {
    o.queryId = "foo";
    o.reportId = "foo";
  }
  buildCounterReportKey--;
  return o;
}

checkReportKey(api.ReportKey o) {
  buildCounterReportKey++;
  if (buildCounterReportKey < 3) {
    unittest.expect(o.queryId, unittest.equals('foo'));
    unittest.expect(o.reportId, unittest.equals('foo'));
  }
  buildCounterReportKey--;
}

core.int buildCounterReportMetadata = 0;
buildReportMetadata() {
  var o = new api.ReportMetadata();
  buildCounterReportMetadata++;
  if (buildCounterReportMetadata < 3) {
    o.googleCloudStoragePath = "foo";
    o.reportDataEndTimeMs = "foo";
    o.reportDataStartTimeMs = "foo";
    o.status = buildReportStatus();
  }
  buildCounterReportMetadata--;
  return o;
}

checkReportMetadata(api.ReportMetadata o) {
  buildCounterReportMetadata++;
  if (buildCounterReportMetadata < 3) {
    unittest.expect(o.googleCloudStoragePath, unittest.equals('foo'));
    unittest.expect(o.reportDataEndTimeMs, unittest.equals('foo'));
    unittest.expect(o.reportDataStartTimeMs, unittest.equals('foo'));
    checkReportStatus(o.status);
  }
  buildCounterReportMetadata--;
}

core.int buildCounterReportStatus = 0;
buildReportStatus() {
  var o = new api.ReportStatus();
  buildCounterReportStatus++;
  if (buildCounterReportStatus < 3) {
    o.failure = buildReportFailure();
    o.finishTimeMs = "foo";
    o.format = "foo";
    o.state = "foo";
  }
  buildCounterReportStatus--;
  return o;
}

checkReportStatus(api.ReportStatus o) {
  buildCounterReportStatus++;
  if (buildCounterReportStatus < 3) {
    checkReportFailure(o.failure);
    unittest.expect(o.finishTimeMs, unittest.equals('foo'));
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterReportStatus--;
}

buildUnnamed2320() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2320(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRowStatus = 0;
buildRowStatus() {
  var o = new api.RowStatus();
  buildCounterRowStatus++;
  if (buildCounterRowStatus < 3) {
    o.changed = true;
    o.entityId = "foo";
    o.entityName = "foo";
    o.errors = buildUnnamed2320();
    o.persisted = true;
    o.rowNumber = 42;
  }
  buildCounterRowStatus--;
  return o;
}

checkRowStatus(api.RowStatus o) {
  buildCounterRowStatus++;
  if (buildCounterRowStatus < 3) {
    unittest.expect(o.changed, unittest.isTrue);
    unittest.expect(o.entityId, unittest.equals('foo'));
    unittest.expect(o.entityName, unittest.equals('foo'));
    checkUnnamed2320(o.errors);
    unittest.expect(o.persisted, unittest.isTrue);
    unittest.expect(o.rowNumber, unittest.equals(42));
  }
  buildCounterRowStatus--;
}

core.int buildCounterRunQueryRequest = 0;
buildRunQueryRequest() {
  var o = new api.RunQueryRequest();
  buildCounterRunQueryRequest++;
  if (buildCounterRunQueryRequest < 3) {
    o.dataRange = "foo";
    o.reportDataEndTimeMs = "foo";
    o.reportDataStartTimeMs = "foo";
    o.timezoneCode = "foo";
  }
  buildCounterRunQueryRequest--;
  return o;
}

checkRunQueryRequest(api.RunQueryRequest o) {
  buildCounterRunQueryRequest++;
  if (buildCounterRunQueryRequest < 3) {
    unittest.expect(o.dataRange, unittest.equals('foo'));
    unittest.expect(o.reportDataEndTimeMs, unittest.equals('foo'));
    unittest.expect(o.reportDataStartTimeMs, unittest.equals('foo'));
    unittest.expect(o.timezoneCode, unittest.equals('foo'));
  }
  buildCounterRunQueryRequest--;
}

core.int buildCounterUploadLineItemsRequest = 0;
buildUploadLineItemsRequest() {
  var o = new api.UploadLineItemsRequest();
  buildCounterUploadLineItemsRequest++;
  if (buildCounterUploadLineItemsRequest < 3) {
    o.dryRun = true;
    o.format = "foo";
    o.lineItems = "foo";
  }
  buildCounterUploadLineItemsRequest--;
  return o;
}

checkUploadLineItemsRequest(api.UploadLineItemsRequest o) {
  buildCounterUploadLineItemsRequest++;
  if (buildCounterUploadLineItemsRequest < 3) {
    unittest.expect(o.dryRun, unittest.isTrue);
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.lineItems, unittest.equals('foo'));
  }
  buildCounterUploadLineItemsRequest--;
}

core.int buildCounterUploadLineItemsResponse = 0;
buildUploadLineItemsResponse() {
  var o = new api.UploadLineItemsResponse();
  buildCounterUploadLineItemsResponse++;
  if (buildCounterUploadLineItemsResponse < 3) {
    o.uploadStatus = buildUploadStatus();
  }
  buildCounterUploadLineItemsResponse--;
  return o;
}

checkUploadLineItemsResponse(api.UploadLineItemsResponse o) {
  buildCounterUploadLineItemsResponse++;
  if (buildCounterUploadLineItemsResponse < 3) {
    checkUploadStatus(o.uploadStatus);
  }
  buildCounterUploadLineItemsResponse--;
}

buildUnnamed2321() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2321(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2322() {
  var o = new core.List<api.RowStatus>();
  o.add(buildRowStatus());
  o.add(buildRowStatus());
  return o;
}

checkUnnamed2322(core.List<api.RowStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRowStatus(o[0]);
  checkRowStatus(o[1]);
}

core.int buildCounterUploadStatus = 0;
buildUploadStatus() {
  var o = new api.UploadStatus();
  buildCounterUploadStatus++;
  if (buildCounterUploadStatus < 3) {
    o.errors = buildUnnamed2321();
    o.rowStatus = buildUnnamed2322();
  }
  buildCounterUploadStatus--;
  return o;
}

checkUploadStatus(api.UploadStatus o) {
  buildCounterUploadStatus++;
  if (buildCounterUploadStatus < 3) {
    checkUnnamed2321(o.errors);
    checkUnnamed2322(o.rowStatus);
  }
  buildCounterUploadStatus--;
}


main() {
  unittest.group("obj-schema-DownloadLineItemsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDownloadLineItemsRequest();
      var od = new api.DownloadLineItemsRequest.fromJson(o.toJson());
      checkDownloadLineItemsRequest(od);
    });
  });


  unittest.group("obj-schema-DownloadLineItemsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDownloadLineItemsResponse();
      var od = new api.DownloadLineItemsResponse.fromJson(o.toJson());
      checkDownloadLineItemsResponse(od);
    });
  });


  unittest.group("obj-schema-FilterPair", () {
    unittest.test("to-json--from-json", () {
      var o = buildFilterPair();
      var od = new api.FilterPair.fromJson(o.toJson());
      checkFilterPair(od);
    });
  });


  unittest.group("obj-schema-ListQueriesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListQueriesResponse();
      var od = new api.ListQueriesResponse.fromJson(o.toJson());
      checkListQueriesResponse(od);
    });
  });


  unittest.group("obj-schema-ListReportsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListReportsResponse();
      var od = new api.ListReportsResponse.fromJson(o.toJson());
      checkListReportsResponse(od);
    });
  });


  unittest.group("obj-schema-Note", () {
    unittest.test("to-json--from-json", () {
      var o = buildNote();
      var od = new api.Note.fromJson(o.toJson());
      checkNote(od);
    });
  });


  unittest.group("obj-schema-NotifyProposalChangeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildNotifyProposalChangeRequest();
      var od = new api.NotifyProposalChangeRequest.fromJson(o.toJson());
      checkNotifyProposalChangeRequest(od);
    });
  });


  unittest.group("obj-schema-Parameters", () {
    unittest.test("to-json--from-json", () {
      var o = buildParameters();
      var od = new api.Parameters.fromJson(o.toJson());
      checkParameters(od);
    });
  });


  unittest.group("obj-schema-Query", () {
    unittest.test("to-json--from-json", () {
      var o = buildQuery();
      var od = new api.Query.fromJson(o.toJson());
      checkQuery(od);
    });
  });


  unittest.group("obj-schema-QueryMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryMetadata();
      var od = new api.QueryMetadata.fromJson(o.toJson());
      checkQueryMetadata(od);
    });
  });


  unittest.group("obj-schema-QuerySchedule", () {
    unittest.test("to-json--from-json", () {
      var o = buildQuerySchedule();
      var od = new api.QuerySchedule.fromJson(o.toJson());
      checkQuerySchedule(od);
    });
  });


  unittest.group("obj-schema-Report", () {
    unittest.test("to-json--from-json", () {
      var o = buildReport();
      var od = new api.Report.fromJson(o.toJson());
      checkReport(od);
    });
  });


  unittest.group("obj-schema-ReportFailure", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportFailure();
      var od = new api.ReportFailure.fromJson(o.toJson());
      checkReportFailure(od);
    });
  });


  unittest.group("obj-schema-ReportKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportKey();
      var od = new api.ReportKey.fromJson(o.toJson());
      checkReportKey(od);
    });
  });


  unittest.group("obj-schema-ReportMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportMetadata();
      var od = new api.ReportMetadata.fromJson(o.toJson());
      checkReportMetadata(od);
    });
  });


  unittest.group("obj-schema-ReportStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportStatus();
      var od = new api.ReportStatus.fromJson(o.toJson());
      checkReportStatus(od);
    });
  });


  unittest.group("obj-schema-RowStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildRowStatus();
      var od = new api.RowStatus.fromJson(o.toJson());
      checkRowStatus(od);
    });
  });


  unittest.group("obj-schema-RunQueryRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRunQueryRequest();
      var od = new api.RunQueryRequest.fromJson(o.toJson());
      checkRunQueryRequest(od);
    });
  });


  unittest.group("obj-schema-UploadLineItemsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUploadLineItemsRequest();
      var od = new api.UploadLineItemsRequest.fromJson(o.toJson());
      checkUploadLineItemsRequest(od);
    });
  });


  unittest.group("obj-schema-UploadLineItemsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildUploadLineItemsResponse();
      var od = new api.UploadLineItemsResponse.fromJson(o.toJson());
      checkUploadLineItemsResponse(od);
    });
  });


  unittest.group("obj-schema-UploadStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildUploadStatus();
      var od = new api.UploadStatus.fromJson(o.toJson());
      checkUploadStatus(od);
    });
  });


  unittest.group("resource-LineitemsResourceApi", () {
    unittest.test("method--downloadlineitems", () {

      var mock = new HttpServerMock();
      api.LineitemsResourceApi res = new api.DoubleclickbidmanagerApi(mock).lineitems;
      var arg_request = buildDownloadLineItemsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.DownloadLineItemsRequest.fromJson(json);
        checkDownloadLineItemsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25), unittest.equals("doubleclickbidmanager/v1/"));
        pathOffset += 25;
        unittest.expect(path.substring(pathOffset, pathOffset + 27), unittest.equals("lineitems/downloadlineitems"));
        pathOffset += 27;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDownloadLineItemsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.downloadlineitems(arg_request).then(unittest.expectAsync(((api.DownloadLineItemsResponse response) {
        checkDownloadLineItemsResponse(response);
      })));
    });

    unittest.test("method--uploadlineitems", () {

      var mock = new HttpServerMock();
      api.LineitemsResourceApi res = new api.DoubleclickbidmanagerApi(mock).lineitems;
      var arg_request = buildUploadLineItemsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.UploadLineItemsRequest.fromJson(json);
        checkUploadLineItemsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25), unittest.equals("doubleclickbidmanager/v1/"));
        pathOffset += 25;
        unittest.expect(path.substring(pathOffset, pathOffset + 25), unittest.equals("lineitems/uploadlineitems"));
        pathOffset += 25;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUploadLineItemsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.uploadlineitems(arg_request).then(unittest.expectAsync(((api.UploadLineItemsResponse response) {
        checkUploadLineItemsResponse(response);
      })));
    });

  });


  unittest.group("resource-QueriesResourceApi", () {
    unittest.test("method--createquery", () {

      var mock = new HttpServerMock();
      api.QueriesResourceApi res = new api.DoubleclickbidmanagerApi(mock).queries;
      var arg_request = buildQuery();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Query.fromJson(json);
        checkQuery(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25), unittest.equals("doubleclickbidmanager/v1/"));
        pathOffset += 25;
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("query"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildQuery());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.createquery(arg_request).then(unittest.expectAsync(((api.Query response) {
        checkQuery(response);
      })));
    });

    unittest.test("method--deletequery", () {

      var mock = new HttpServerMock();
      api.QueriesResourceApi res = new api.DoubleclickbidmanagerApi(mock).queries;
      var arg_queryId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25), unittest.equals("doubleclickbidmanager/v1/"));
        pathOffset += 25;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("query/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_queryId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.deletequery(arg_queryId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--getquery", () {

      var mock = new HttpServerMock();
      api.QueriesResourceApi res = new api.DoubleclickbidmanagerApi(mock).queries;
      var arg_queryId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25), unittest.equals("doubleclickbidmanager/v1/"));
        pathOffset += 25;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("query/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_queryId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildQuery());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getquery(arg_queryId).then(unittest.expectAsync(((api.Query response) {
        checkQuery(response);
      })));
    });

    unittest.test("method--listqueries", () {

      var mock = new HttpServerMock();
      api.QueriesResourceApi res = new api.DoubleclickbidmanagerApi(mock).queries;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25), unittest.equals("doubleclickbidmanager/v1/"));
        pathOffset += 25;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("queries"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListQueriesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.listqueries().then(unittest.expectAsync(((api.ListQueriesResponse response) {
        checkListQueriesResponse(response);
      })));
    });

    unittest.test("method--runquery", () {

      var mock = new HttpServerMock();
      api.QueriesResourceApi res = new api.DoubleclickbidmanagerApi(mock).queries;
      var arg_request = buildRunQueryRequest();
      var arg_queryId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.RunQueryRequest.fromJson(json);
        checkRunQueryRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25), unittest.equals("doubleclickbidmanager/v1/"));
        pathOffset += 25;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("query/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_queryId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.runquery(arg_request, arg_queryId).then(unittest.expectAsync((_) {}));
    });

  });


  unittest.group("resource-ReportsResourceApi", () {
    unittest.test("method--listreports", () {

      var mock = new HttpServerMock();
      api.ReportsResourceApi res = new api.DoubleclickbidmanagerApi(mock).reports;
      var arg_queryId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25), unittest.equals("doubleclickbidmanager/v1/"));
        pathOffset += 25;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("queries/"));
        pathOffset += 8;
        index = path.indexOf("/reports", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_queryId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/reports"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListReportsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.listreports(arg_queryId).then(unittest.expectAsync(((api.ListReportsResponse response) {
        checkListReportsResponse(response);
      })));
    });

  });


  unittest.group("resource-RubiconResourceApi", () {
    unittest.test("method--notifyproposalchange", () {

      var mock = new HttpServerMock();
      api.RubiconResourceApi res = new api.DoubleclickbidmanagerApi(mock).rubicon;
      var arg_request = buildNotifyProposalChangeRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.NotifyProposalChangeRequest.fromJson(json);
        checkNotifyProposalChangeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25), unittest.equals("doubleclickbidmanager/v1/"));
        pathOffset += 25;
        unittest.expect(path.substring(pathOffset, pathOffset + 28), unittest.equals("rubicon/notifyproposalchange"));
        pathOffset += 28;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.notifyproposalchange(arg_request).then(unittest.expectAsync((_) {}));
    });

  });


}

