import 'package:flutter/material.dart';
import 'package:flutter_getx_dio_practice/json_data_iOne/controllers/product_controller.dart';
import 'package:get/get.dart';


class ProductScreen extends GetView<ProductController> {
   ProductScreen({super.key});
   final controller = Get.put(ProductController());
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: controller.obx((State) => ListView.builder(
        itemCount: State!.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(State[index].data.username),
            subtitle: Text(State[index].data.email),

          );
        },


      ),
      ),
    );
  }
}