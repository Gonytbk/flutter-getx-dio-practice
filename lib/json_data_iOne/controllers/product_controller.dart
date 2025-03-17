import 'package:flutter_getx_dio_practice/json_data_iOne/controllers/models/product_res_model.dart';
import 'package:flutter_getx_dio_practice/json_data_iOne/controllers/services/api.dart';
import 'package:get/get.dart';

class ProductController extends GetxController
    with StateMixin<List<ProductResModel>> {
  final api = API();
  @override
  void onInit() {
    getAllProduct();
    super.onInit();
  }



  void getAllProduct() async {
    final Response = await api.getAllProduct();
    Response.fold((l) {
      Get.snackbar("Message", l.toString());
      change(null, status: RxStatus.error(l.toString()));
    },
    (r) => change(r, status: RxStatus.success()));
  }
}
