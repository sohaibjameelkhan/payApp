import 'dart:io';

import 'package:flutter/cupertino.dart';

import '../../utils/commonMthods/commonMethods.dart';
import '../../utils/commonMthods/helper_Functions.dart';

class DashBoardProvider extends ChangeNotifier {
  File? profileImage;
  File? bannerImage;


   

  pickProfileImage(context) async {
    var xFile = await CommonMethods.getImage(true);
    if (xFile != null) {
      profileImage = File(xFile.path);
      notifyListeners();
    } else {
      showSnackBarMessage(context: context, content: "Picture not picked");
    }
  }


  pickBannerImage(context) async {
    var xFile = await CommonMethods.getImage(true);
    if (xFile != null) {
      bannerImage= File(xFile.path);
      notifyListeners();
    } else {
      showSnackBarMessage(context: context, content: "Picture not picked");
    }
  }
}
