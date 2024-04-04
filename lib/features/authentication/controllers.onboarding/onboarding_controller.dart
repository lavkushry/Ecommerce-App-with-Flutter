import 'package:ecom_app/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Vairables
  final pageController=PageController();
  Rx<int> currentPageIndex=0.obs;

  /// Update Current Index when Page Scroll
  void updatePageIndicator(index)=> currentPageIndex=index;

  ///Jump to the Specific dot Selected Page
  void dotNavigationClick(index){
    currentPageIndex.value=index;
    pageController.jumpTo(index);
  }

  ///Update Current Index and Jump to the Next Page
  void nextPage() {
    if(currentPageIndex.value==2){
      Get.offAll(LoginScreen());

    }else{
      int page= currentPageIndex.value+1;
      pageController.jumpToPage(page);
    }
  }

  ///Update Current Index & jump to the last Page
  void skipPage() {
    currentPageIndex.value=2;
    pageController.jumpToPage(2);
  }
}
