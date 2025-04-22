import 'package:dio/dio.dart';
import 'package:daynex_demo/core/result/result.dart';
import 'package:daynex_demo/app/common/constants/app_strings.dart';
import '../../../../common/models/character_model.dart';

class CharacterService {
  final Dio _dio;

  CharacterService(this._dio);

  Future<DataResult<List<CharacterModel>>> fetchCharacters(String endpoint) async {
    try {
      final response = await _dio.get(endpoint);

      if (response.statusCode == 200) {
        final List data = response.data;
        final characters = data.map((e) => CharacterModel.fromJson(e)).toList();

        if (characters.isEmpty) {
          return ErrorDataResult(message: AppStrings.noDataFound);
        }

        return SuccessDataResult(data: characters);
      } else {
        switch (response.statusCode) {
          case 400:
            return ErrorDataResult(message: AppStrings.badRequest);
          case 401:
            return ErrorDataResult(message: AppStrings.unauthorized);
          case 404:
            return ErrorDataResult(message: AppStrings.notFound);
          case 500:
            return ErrorDataResult(message: AppStrings.serverError);
          default:
            return ErrorDataResult(
              message: "${AppStrings.genericServerError} ${response.statusCode}",
            );
        }
      }
    } on DioException catch (e) {
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
          return ErrorDataResult(message: AppStrings.requestTimeout);
        case DioExceptionType.connectionError:
          return ErrorDataResult(message: AppStrings.noInternet);
        case DioExceptionType.badResponse:
          return ErrorDataResult(
            message: "${AppStrings.invalidResponse} "
                     "${e.response?.statusCode} ${e.response?.statusMessage}",
          );
        default:
          return ErrorDataResult(message: "${AppStrings.unexpectedNetworkError} ${e.message}");
      }
    } catch (e) {
      return ErrorDataResult(message: "${AppStrings.unexpectedError} ${e.toString()}");
    }
  }
}
