// This is a generated file (see the discoveryapis_generator project).

library googleapis.script.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client script/v1';

/** An API for executing Google Apps Script projects. */
class ScriptApi {
  /** View and manage your mail */
  static const MailGoogleComScope = "https://mail.google.com/";

  /** Manage your calendars */
  static const WwwGoogleComCalendarFeedsScope = "https://www.google.com/calendar/feeds";

  /** Manage your contacts */
  static const WwwGoogleComM8FeedsScope = "https://www.google.com/m8/feeds";

  /** View and manage the provisioning of groups on your domain */
  static const AdminDirectoryGroupScope = "https://www.googleapis.com/auth/admin.directory.group";

  /** View and manage the provisioning of users on your domain */
  static const AdminDirectoryUserScope = "https://www.googleapis.com/auth/admin.directory.user";

  /** View and manage the files in your Google Drive */
  static const DriveScope = "https://www.googleapis.com/auth/drive";

  /** View and manage your forms in Google Drive */
  static const FormsScope = "https://www.googleapis.com/auth/forms";

  /** View and manage forms that this application has been installed in */
  static const FormsCurrentonlyScope = "https://www.googleapis.com/auth/forms.currentonly";

  /** View and manage your Google Groups */
  static const GroupsScope = "https://www.googleapis.com/auth/groups";

  /** View your email address */
  static const UserinfoEmailScope = "https://www.googleapis.com/auth/userinfo.email";


  final commons.ApiRequester _requester;

  ScriptsResourceApi get scripts => new ScriptsResourceApi(_requester);

  ScriptApi(http.Client client, {core.String rootUrl: "https://script.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ScriptsResourceApi {
  final commons.ApiRequester _requester;

  ScriptsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Runs a function in an Apps Script project that has been deployed for use
   * with the Apps Script Execution API. This method requires authorization with
   * an OAuth 2.0 token that includes at least one of the scopes listed in the
   * [Authentication](#authentication) section; script projects that do not
   * require authorization cannot be executed through this API. To find the
   * correct scopes to include in the authentication token, open the project in
   * the script editor, then select **File > Project properties** and click the
   * **Scopes** tab.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [scriptId] - The project key of the script to be executed. To find the
   * project key, open the project in the script editor, then select **File >
   * Project properties**.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> run(ExecutionRequest request, core.String scriptId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (scriptId == null) {
      throw new core.ArgumentError("Parameter scriptId is required.");
    }

    _url = 'v1/scripts/' + commons.Escaper.ecapeVariable('$scriptId') + ':run';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}



/**
 * An object that provides information about the nature of an error in the Apps
 * Script Execution API. If an `run` call succeeds but the script function (or
 * Apps Script itself) throws an exception, the response body's `error` field
 * will contain a `Status` object. The `Status` object's `details` field will
 * contain an array with a single one of these `ExecutionError` objects.
 */
class ExecutionError {
  /**
   * The error message thrown by Apps Script, usually localized into the user's
   * language.
   */
  core.String errorMessage;
  /**
   * The error type, for example `TypeError` or `ReferenceError`. If the error
   * type is unavailable, this field is not included.
   */
  core.String errorType;
  /**
   * An array of objects that provide a stack trace through the script to show
   * where the execution failed, with the deepest call first.
   */
  core.List<ScriptStackTraceElement> scriptStackTraceElements;

  ExecutionError();

  ExecutionError.fromJson(core.Map _json) {
    if (_json.containsKey("errorMessage")) {
      errorMessage = _json["errorMessage"];
    }
    if (_json.containsKey("errorType")) {
      errorType = _json["errorType"];
    }
    if (_json.containsKey("scriptStackTraceElements")) {
      scriptStackTraceElements = _json["scriptStackTraceElements"].map((value) => new ScriptStackTraceElement.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (errorMessage != null) {
      _json["errorMessage"] = errorMessage;
    }
    if (errorType != null) {
      _json["errorType"] = errorType;
    }
    if (scriptStackTraceElements != null) {
      _json["scriptStackTraceElements"] = scriptStackTraceElements.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * A request to run the function in a script. The script is identified by the
 * specified `script_id`. Executing a function on a script will return results
 * based on the implementation of the script.
 */
class ExecutionRequest {
  /**
   * If `true` and the user is an owner of the script, the script runs at the
   * most recently saved version rather than the version deployed for use with
   * the Execution API. Optional; default is `false`.
   */
  core.bool devMode;
  /**
   * The name of the function to execute in the given script. The name does not
   * include parentheses or parameters.
   */
  core.String function;
  /**
   * The parameters to be passed to the function being executed. The type for
   * each parameter should match the expected type in Apps Script. Parameters
   * cannot be Apps Script-specific objects (such as a `Document` or
   * `Calendar`); they can only be primitive types such as a `string`, `number`,
   * `array`, `object`, or `boolean`. Optional.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.Object> parameters;
  /** This field is not used. */
  core.String sessionState;

  ExecutionRequest();

  ExecutionRequest.fromJson(core.Map _json) {
    if (_json.containsKey("devMode")) {
      devMode = _json["devMode"];
    }
    if (_json.containsKey("function")) {
      function = _json["function"];
    }
    if (_json.containsKey("parameters")) {
      parameters = _json["parameters"];
    }
    if (_json.containsKey("sessionState")) {
      sessionState = _json["sessionState"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (devMode != null) {
      _json["devMode"] = devMode;
    }
    if (function != null) {
      _json["function"] = function;
    }
    if (parameters != null) {
      _json["parameters"] = parameters;
    }
    if (sessionState != null) {
      _json["sessionState"] = sessionState;
    }
    return _json;
  }
}

/**
 * An object that provides the return value of a function executed through the
 * Apps Script Execution API. If an `run` call succeeds and the script function
 * returns successfully, the response body's `response` field will contain this
 * `ExecutionResponse` object.
 */
class ExecutionResponse {
  /**
   * The return value of the script function. The type will match the type
   * returned in Apps Script. Functions called through the Execution API cannot
   * return Apps Script-specific objects (such as a `Document` or `Calendar`);
   * they can only return primitive types such as a `string`, `number`, `array`,
   * `object`, or `boolean`.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Object result;

  ExecutionResponse();

  ExecutionResponse.fromJson(core.Map _json) {
    if (_json.containsKey("result")) {
      result = _json["result"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (result != null) {
      _json["result"] = result;
    }
    return _json;
  }
}

/**
 * The response will not arrive until the function finishes executing. The
 * maximum runtime is listed in the guide to [limitations in Apps
 * Script](https://developers.google.com/apps-script/guides/services/quotas#current_limitations).
 * If the script function returns successfully, the `response` field will
 * contain an `ExecutionResponse` object with the function's return value in the
 * object's `result` field.
 *
 * If the script function (or Apps Script itself) throws an exception, the
 * `error` field will contain a `Status` object. The `Status` object's `details`
 * field will contain an array with a single `ExecutionError` object that
 * provides information about the nature of the error.
 *
 * If the `run` call itself fails (for example, because of a malformed request
 * or an authorization error), the method will return an HTTP response code in
 * the 4XX range with a different format for the response body. Client libraries
 * will automatically convert a 4XX response into an exception class.
 */
class Operation {
  /** This field is not used. */
  core.bool done;
  /**
   * If a `run` call succeeds but the script function (or Apps Script itself)
   * throws an exception, this field will contain a `Status` object. The
   * `Status` object's `details` field will contain an array with a single
   * `ExecutionError` object that provides information about the nature of the
   * error.
   */
  Status error;
  /**
   * This field is not used.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> metadata;
  /** This field is not used. */
  core.String name;
  /**
   * If the script function returns successfully, this field will contain an
   * `ExecutionResponse` object with the function's return value as the object's
   * `result` field.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata = _json["metadata"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response = _json["response"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

/** A stack trace through the script that shows where the execution failed. */
class ScriptStackTraceElement {
  /** The name of the function that failed. */
  core.String function;
  /** The line number where the script failed. */
  core.int lineNumber;

  ScriptStackTraceElement();

  ScriptStackTraceElement.fromJson(core.Map _json) {
    if (_json.containsKey("function")) {
      function = _json["function"];
    }
    if (_json.containsKey("lineNumber")) {
      lineNumber = _json["lineNumber"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (function != null) {
      _json["function"] = function;
    }
    if (lineNumber != null) {
      _json["lineNumber"] = lineNumber;
    }
    return _json;
  }
}

/**
 * If a `run` call succeeds but the script function (or Apps Script itself)
 * throws an exception, the response body's `error` field will contain this
 * `Status` object.
 */
class Status {
  /** The status code, which should be an enum value of google.rpc.Code. */
  core.int code;
  /**
   * An array that contains a single `ExecutionError` object that provides
   * information about the nature of the error.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.Map<core.String, core.Object>> details;
  /**
   * A developer-facing error message, which should be in English. Any
   * user-facing error message should be localized and sent in the
   * google.rpc.Status.details field, or localized by the client.
   */
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}
