import 'package:pawan_portfolio_website/core/api_layer/dio/dio_client.dart';
import 'package:pawan_portfolio_website/core/config/environment.dart';

class ViewsApiClient extends DioClient {
  ViewsApiClient()
      : super(
          baseUrl: Environment.instance.viewsBaseUrl,
          isAuthenticatorRequired: false,
        );
}
