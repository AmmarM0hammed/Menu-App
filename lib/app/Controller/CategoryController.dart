import "package:get/get.dart";

class CategoryController extends GetxController{
  RxInt cruuntIndex = 0.obs; 
  void setIndex(newIndex){
    cruuntIndex.value =newIndex;
  }
}