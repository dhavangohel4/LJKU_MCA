import 'package:get/get.dart';
import 'package:lj/api_services/api_services.dart';
import 'package:lj/tree_Plant/tree_model.dart';

class TreeController extends GetxController{


  RxBool isLoading = false.obs;
  RxList<TreePlant> TreeData = <TreePlant>[].obs;

  Future<void> TreeCont()async{
    try{
      isLoading.value = true;
      final respo = await ApiServices().Tree();
      if (respo.responseCode.toString() == "1"){
        isLoading.value = false;
        TreeData.value = respo.treePlant ?? [];
      }else{
        isLoading.value = false;
        Get.snackbar("Error!", respo.message.toString());
      }
    }catch(e){
      print(e);
    }
  }
}