import 'package:daynex_demo/app/common/constants/app_strings.dart';
import 'package:dio/dio.dart';
import 'package:daynex_demo/core/network_control/network_control.dart';
import 'package:daynex_demo/app/common/get_it/get_it.dart';

class NetworkAwareInterceptor extends Interceptor {
  final INetworkControl _networkControl = getIt<INetworkControl>();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final result = await _networkControl.checkNetworkFirstTime();
    if (result == NetworkResult.off) {
      return handler.reject(
        DioException(
          requestOptions: options,
          type: DioExceptionType.connectionError,
          message: AppStrings.noInternetConnection,
        ),
      );
    }
    return handler.next(options);
  }
}
