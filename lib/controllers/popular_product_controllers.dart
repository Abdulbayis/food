

import 'package:food/jason/product_models.dart';
import 'package:food/repository/popular_product_repo.dart';
import 'package:get/get.dart';

class PopularProductControllers extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductControllers({required this.popularProductRepo});
  List<dynamic> _popularProductList=[];
  List<dynamic> get popularProductList=>_popularProductList;

    
  Future<void> getPopulerProductList()async{
    Response response= await popularProductRepo.getPopularProductList();
    if(response.statusCode==200){
      print("got products");
      _popularProductList=[];
      _popularProductList.addAll(product.fromJson(response.body).products);
      // print(_popularProductList);
      update(); 
    }else{
      
    }
  }
}