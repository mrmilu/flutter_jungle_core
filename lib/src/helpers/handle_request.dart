import 'package:dio/dio.dart';

import '../extensions/dio_exception_extension.dart';
import '../failures/general_base_failure.dart';
import '../logging/logger.dart';
import 'resource.dart';
import 'result_or.dart';

final _log = Logger('HandleRequest');

/// Executes an asynchronous request and wraps its result in a [Resource].
///
/// Dio exceptions are converted using [fromString] when the API provides an
/// error code, or [general] otherwise. Other exceptions are reported as an
/// invalid-response-format failure. When [useMockData] is true and [mockData]
/// is non-null, the request is skipped and the mock value is returned.
///
/// [request] performs the operation. [fromString] converts API error codes to
/// the caller's failure type. [general] converts a [GeneralBaseFailure] to that
/// type. [mockData] is the optional success value used in mock mode.
Future<Resource<F, T>> handleRequest<F, T>({
  required Future<T> Function() request,
  required F Function(String, String?) fromString,
  required F Function(GeneralBaseFailure) general,
  T? mockData,
  bool useMockData = false,
}) async {
  try {
    if (useMockData && mockData != null) {
      await Future.delayed(const Duration(seconds: 1));
      return Resource.success(mockData);
    }
    final result = await request();
    return Resource.success(result);
  } on DioException catch (e) {
    _log.severe('DioException: ', e, e.stackTrace);
    return Resource.failure(e.toFailure(fromString, general));
  } on Exception catch (e, s) {
    _log.severe('Error Resource: ', e, s);
    return Resource.failure(
      general(const GeneralBaseFailure.invalidResponseFormat()),
    );
  }
}

/// Executes a request with no return value and wraps its result in [ResultOr].
///
/// Dio exceptions are converted using [fromString] when the API provides an
/// error code, or [general] otherwise. Other exceptions are reported as an
/// invalid-response-format failure. When [useMockData] is true, the request is
/// skipped and a successful [ResultOr] is returned.
///
/// [request] performs the operation. [fromString] converts API error codes to
/// the caller's failure type. [general] converts a [GeneralBaseFailure] to that
/// type.
Future<ResultOr<F>> handleRequestResultOr<F>({
  required Future<void> Function() request,
  required F Function(String, String?) fromString,
  required F Function(GeneralBaseFailure) general,
  bool useMockData = false,
}) async {
  try {
    if (useMockData) {
      await Future.delayed(const Duration(seconds: 1));
      return ResultOr.success();
    }
    await request();
    return ResultOr.success();
  } on DioException catch (e) {
    _log.severe('DioException: ', e, e.stackTrace);
    return ResultOr.failure(e.toFailure(fromString, general));
  } on Exception catch (e, s) {
    _log.severe('Error ResultOr: ', e, s);
    return ResultOr.failure(
      general(const GeneralBaseFailure.invalidResponseFormat()),
    );
  }
}
