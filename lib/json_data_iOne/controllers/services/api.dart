



import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_getx_dio_practice/json_data_iOne/controllers/models/product_res_model.dart';

class API {
  Future<Either<String, List<ProductResModel>>> getAllProduct() async {
    try {
      final response = await Dio().get('https://run.mocky.io/v3/75149031-9d5a-47a3-985e-252497f9884c');
      if (response.statusCode == 200) {
        final List<ProductResModel> products =[];
        for (var item in response.data) {
          products.add(ProductResModel.fromMap(item));
        }
        return Right(products);
        } else {
          return Left('Erro ao carregar os produtos');
        }
  } catch (e) {
    return Left(e.toString(),
    );
    print('Erroe:  $e');
  }
  }
}