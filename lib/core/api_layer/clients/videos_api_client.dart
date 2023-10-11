import 'package:pawan_portfolio_website/core/api_layer/dio/dio_client.dart';
import 'package:pawan_portfolio_website/core/config/environment.dart';

class VideosApiClient extends DioClient {
  VideosApiClient()
      : super(
          baseUrl: Environment.instance.videosBaseUrl,
          isAuthenticatorRequired: false,
        );
}
