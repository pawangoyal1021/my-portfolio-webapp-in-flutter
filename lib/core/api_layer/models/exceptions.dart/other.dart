import 'package:pawan_portfolio_website/core/api_layer/models/exceptions.dart/base.dart';

class OtherApiException extends ApiException {
  OtherApiException({
    required String method,
    required Uri url,
    required dynamic data,
    required Map<String, String>? headers,
    required Exception? exception,
  }) : super(
            data: data,
            method: method,
            url: url,
            headers: headers,
            exception: exception);
}
