import 'package:pawan_portfolio_website/core/api_layer/dio/dio_client.dart';
import 'package:pawan_portfolio_website/core/config/environment.dart';

class LikesApiClient extends DioClient {
  LikesApiClient()
      : super(
          baseUrl: Environment.instance.likesBaseUrl,
          isAuthenticatorRequired: false,
        );
}
