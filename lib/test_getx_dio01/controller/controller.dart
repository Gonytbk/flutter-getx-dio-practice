import 'package:dio/dio.dart';
import 'package:flutter_getx_dio_practice/test_getx_dio01/models/model.dart';
import 'package:get/get.dart';

class EmployeeController extends GetxController {
  var employee = Rxn<Employee>(); // Observable data
  var isLoading = true.obs; // Loading state

  final Dio _dio = Dio();

  @override
  void onInit() {
    super.onInit();
    fetchEmployee();
  }

  Future<void> fetchEmployee() async {
    try {
      final response = await _dio.get('https://run.mocky.io/v3/75149031-9d5a-47a3-985e-252497f9884c');
      if (response.statusCode == 200) {
        final data = response.data['data'];
        employee.value = Employee.fromJson(data);
      }
    } catch (e) {
      print("Error: $e");
    } finally {
      isLoading(false);
    }
  }
}
