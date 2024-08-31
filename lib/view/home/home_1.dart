import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_part2/controller/api_controller/apis.dart';
import 'package:getx_part2/controller/getx_controller/home_dart.dart';
import 'package:getx_part2/view/common_widget/search_field.dart';

class Home1 extends StatelessWidget {
  const Home1 ({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          "product",
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // SearchField(
          //   // searchController: controller.searchcontroller,
          //   // onTap: () {
          //   //   log("=========onTap===========");
          //   //   controller.searchFunction(searchText: controller.searchcontroller.text);
          //   // },
          //   onChanged: (String text){
          //     log("===========onChange : $text=============");
          //     controller.searchFunction(searchText: text);
          //   },
          // ),
          const SizedBox(
            height: 10,
          ),
          Obx(() => controller.isLoading.isTrue
              ? const Center(child: CircularProgressIndicator())
              : controller.productlist.isEmpty
                  ? const Center(child: Text("Empty peoductList"))
                  : Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "Total Item : ${controller.productlist.length}"),
                            GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: controller.productlist.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                itemBuilder: (context, index) {
                                  var data = controller.productlist[index];
                                  return Card(
                                    child: SizedBox(
                                      height: 200,
                                      width:
                                          MediaQuery.sizeOf(context).width /
                                              2.2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: SizedBox(
                                              height: 150,
                                              width:
                                                  MediaQuery.sizeOf(context)
                                                          .width /
                                                      2.2,
                                              child: Image.network(
                                                  "${Apis.baseIp}/${data.image}"),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 10,
                                                    vertical: 3),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("id : ${data.productId}"),
                                                Text("name :  ${data.nameEn}"),
                                                Text("regPrice: ${data.regPrice}"),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ],
                        ),
                      ),
                    )),





        ],
      ),
    );
  }
}
