import 'package:food/api/api_client.dart';
import 'package:food/controllers/popular_product_controllers.dart';
import 'package:food/repository/popular_product_repo.dart';
import 'package:food/utilites/app_constants.dart';
import 'package:get/get.dart';

Future<void>init() async {
  //api clint
  Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductControllers(popularProductRepo: Get.find()));

}