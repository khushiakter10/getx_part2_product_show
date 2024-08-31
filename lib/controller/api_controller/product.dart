

import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:getx_part2/database/product_list.dart';
import 'package:getx_part2/model/product_list_model.dart';

class ProductService{
  static Future<List<ProductListModel>> getData()async{
    try{
      await Future.delayed(const Duration(seconds: 2));
      List<ProductListModel> data =[];
      for (var i in ProductList.productlist['productlist'].toList()){
        var decodeData = ProductListModel.fromJson(jsonDecode(jsonEncode(i)));
        data.add(decodeData);
      }
      log("============Api : ${data.length}");
      return data;

    }catch (e){
      log("error :$e");
    }
    Get.snackbar("Message", "Something went worng.");
    return [];
  }
}