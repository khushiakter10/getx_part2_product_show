// import 'dart:developer';
//
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import 'package:getx_part2/controller/api_controller/product.dart';
// import 'package:getx_part2/model/product_list_model.dart';
//
//
// class HomeController extends GetxController {
//
//
//   List<ProductListModel> finalProductlist = [];
//   List<Products> productlist = [];
//   RxBool isLoading = false.obs;
//
//   RxString searchText = "".obs;
//
//   getProductlist() async {
//     isLoading.value = true;
//
//     var list  = await ProductPageService.productPageService();
//     productlist = list;
//     log("============= productlist 1 : ${finalProductlist.length}");
//     log("=============  finalProductlist 2: ${finalProductlist.length}");
//     log("============= productlist 1: ${productlist.length}");
//     isLoading.value = false;
//   }
//
//   // searchFunction({required String searchText}) async {
//   //   isLoading.value = true;
//   //   log("--------------------${searchText}");
//   //   productlist = finalProductlist
//   //       .where((value) =>
//   //           value.name!.toLowerCase().contains(searchText.toLowerCase()) ||
//   //               value.price.toString().contains(searchText))
//   //       .toList();
//   //   log("==================Data : ${productlist.length}");
//   //   isLoading.value = false;
//   // }
//
//   @override
//   void onInit() {
//     getProductlist();
//     super.onInit();
//   }
// }
