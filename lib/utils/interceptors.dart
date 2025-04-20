import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wetrocloud_sdk/utils/enums.dart';

class CurlLoggerInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final curl = _generateCurlCommand(options);
    '[cURL] $curl'.log();
    super.onRequest(options, handler);
  }

  String _generateCurlCommand(RequestOptions options) {
    final method = options.method.toUpperCase();
    final url = options.uri.toString();

    final buffer = StringBuffer('curl -X $method');

    // Headers
    options.headers.forEach((key, value) {
      buffer.write(" -H '${_escape(key)}: ${_escape(value.toString())}'");
    });

    // Body
    if (options.data != null) {
      final data = options.data is String ? options.data : jsonEncode(options.data);
      buffer.write(" -d '${_escape(data)}'");
    }

    buffer.write(' "$url"');

    return buffer.toString();
  }

  String _escape(String input) {
    return input.replaceAll("'", r"'\''");
  }
}
