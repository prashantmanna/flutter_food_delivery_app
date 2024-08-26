import 'package:flutter_food_delivery_app/controller/popular_product_controller.dart';
import 'package:flutter_food_delivery_app/data/api/api_client.dart';
import 'package:get/get.dart';

import '../data/repository/popular_product_repo.dart';

Future<void> init() async{
  //apiclient
  Get.lazyPut(()=>ApiClient(appBaseUrl: "https://www.prashant.com"));

  //repository
  Get.lazyPut(()=>PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(()=>PopularProductController(popularProductRepo: Get.find()));
}