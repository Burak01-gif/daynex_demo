// import 'package:app_template/app/common/config/config.dart';
// import 'package:app_template/app/features/data/models/test_model.dart';
// import 'package:app_template/core/dio_manager/api_response_model.dart';
// import 'package:app_template/core/dio_manager/dio_manager.dart';

// abstract class TestRemoteDatasource {
//   Future<ApiResponseModel<TestModel>> getById({
//     required String id,
//   });
//   Future<ApiResponseModel<List<TestModel>>> getAll();
//   Future<ApiResponseModel<void>> create({
//     required TestModel testModel,
//   });
// }

// final class TestRemoteDatasourceImpl implements TestRemoteDatasource {
//   final DioApiManager _dioApiManager =
//       DioApiManager(baseUrl: Config.apiBaseUrl);
//   @override
//   Future<ApiResponseModel<void>> create({
//     required TestModel testModel,
//   }) async {
//     var apiResponseModel =
//         await _dioApiManager.post('/create', data: testModel.toMap());
//     return apiResponseModel;
//   }

//   @override
//   Future<ApiResponseModel<List<TestModel>>> getAll() async {
//     var apiResponseModel = await _dioApiManager.get(
//       '/getAll',
//       converter: (data) =>
//           (data as List).map((e) => TestModel.fromMap(e)).toList(),
//     );
//     return apiResponseModel;
//   }

//   @override
//   Future<ApiResponseModel<TestModel>> getById({
//     required String id,
//   }) async {
//     var apiResponseModel = await _dioApiManager.get(
//       '/get',
//       converter: (data) => TestModel.fromMap(data),
//       data: {'id': id},
//     );
//     return apiResponseModel;
//   }
// }
