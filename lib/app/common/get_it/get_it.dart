import 'package:daynex_demo/app/common/config/config.dart';
import 'package:daynex_demo/app/common/interceptors/network_aware_interceptor.dart';
import 'package:daynex_demo/app/common/router/app_router.dart';
import 'package:daynex_demo/app/features/presentation/audio/cubit/audio_cubit.dart';
import 'package:daynex_demo/app/features/presentation/character/cubit/character_cubit.dart';
import 'package:daynex_demo/app/features/data/datasources/service/character_service.dart';
import 'package:daynex_demo/app/features/presentation/home/cubit/home_cubit.dart';
import 'package:daynex_demo/core/network_control/network_control.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

/// **Service provider class managing all dependencies**
final class ServiceLocator {
  /// **Main method to call to set up dependencies**
  void setup() {
    _setupRouter();
    _setupServices();
    _setupNetwork();
    _setupDataSource();
    _setupRepository();
    _setupCubit();
  }

  /// **Router Dependency**
  void _setupRouter() {
    getIt.registerLazySingleton<AppRouter>(() => AppRouter());
  }

  void _setupNetwork() {
  getIt.registerLazySingleton<INetworkControl>(() => NetworkControl());
  }


  /// **DataSource Dependency**
  void _setupDataSource() {
    // getIt
    //   ..registerLazySingleton<TestRemoteDatasource>(
    //     () => TestRemoteDatasourceImpl(),
    //   )
    //   ..registerLazySingleton<TestLocalDatasource>(
    //     () => TestLocalDatasourceImpl(),
    //   );
  }

  /// **Repository Dependency**
  void _setupRepository() {
    // getIt.registerLazySingleton<TestRepository>(
    //   () => TestRepositoryImpl(
    //     remoteDatasource: getIt<TestRemoteDatasource>(),
    //     localDatasource: getIt<TestLocalDatasource>(),
    //   ),
    // );
  }

  /// **BLoC, Cubit and ViewModel Dependency**
  void _setupCubit() {
    getIt.registerLazySingleton(() => HomeCubit());
    getIt.registerFactory(() => CharacterCubit(getIt()));
    getIt.registerLazySingleton<AudioCubit>(() => AudioCubit());
    // getIt.registerLazySingleton<TestCubit>(
    //   () => TestCubit(testRepository: getIt<TestRepository>()),
    // );
  }
   
  void _setupServices() {
    getIt
      ..registerLazySingleton(() {
        final dio = Dio(BaseOptions(
          baseUrl: Config.apiBaseUrl,
          connectTimeout: const Duration(seconds: 5), 
          receiveTimeout: const Duration(seconds: 5),
        ));
        dio.interceptors.add(NetworkAwareInterceptor());
        return dio;
      })
      ..registerLazySingleton(() => CharacterService(getIt()));
  }

  /// **Resets dependencies for Test and Debug**
  Future<void> reset() async {
    await getIt.reset();
    setup();
  }
}
