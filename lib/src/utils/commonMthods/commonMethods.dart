import 'package:image_picker/image_picker.dart';

import 'helper_Functions.dart';




class CommonMethods {
  static String? userId;
  static Future<XFile?> getImage(bool gallery) async {
    ImagePicker picker = ImagePicker();
    try {
      if (gallery) {
        return await picker.pickImage(
          source: ImageSource.gallery,
        );
      }
      // Otherwise open camera to get new photo
      else {
        return await picker.pickImage(
          source: ImageSource.camera,
        );
      }
    } on Exception catch (e) {
      dp(msg: "Error in picking image", arg: e);
      return null;
    }
  }
}
