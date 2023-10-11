import 'package:pawan_portfolio_website/core/api_layer/clients/videos_api_client.dart';
import 'package:get_it/get_it.dart';

class AppDependencyInjection {
  static final getIt = GetIt.instance;

  static void initDiServices() {
    initDiApiClients();
  }

  static void initDiApiClients() {
    getIt.registerLazySingleton<VideosApiClient>(() => VideosApiClient());
  }
}
