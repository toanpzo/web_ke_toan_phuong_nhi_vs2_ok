import 'package:dashboard_ui/common/myRouters.dart';
import 'package:flutter/cupertino.dart';

class Constant{
  static String urlFanPage="https://m.me/100086662007801";
  static String urlWeb="https://ketoanphuongnhi.000webhostapp.com";

  static String urlApiUpload="/api/uploads.php";
///link assets
  static String urlUploadAssetsAll="assets/uploadAll/";
  static String urlAssetsJson="assets/json/";
  static String urlAssetsimage="assets/images/";
///het
  static String adress="965/102/10 Quang Trung, Phường 14, Quận Gò Vấp, Thành Phố Hồ Chí Minh";
  static String sdt="096 55 66 799 / 0388074591";
  static String email="Tranthiphuongnhi92@gmail.com";
  static double withNotMargin=500;
  static double withMinPhone=350;
  static int secondChangeImage=5;

  static String urlData="assets/data/";

  static Map<String,String> menu={
    MyRouters.home:"TRANG CHỦ",
    MyRouters.hoso:"GIỚI THIỆU",
    MyRouters.keToanTronGoi:"KẾ TOÁN TRỌ GÓI",
    MyRouters.thanhLapDN:"THÀNH LẬP DOANH NGHIỆP",
    MyRouters.visa:"HỘ CHIẾU/VISA TRỌN GÓI",
    MyRouters.dichVuKhac:"DỊCH VỤ KHÁC"
  };


  static double getwithContext(BuildContext ctx){
    return MediaQuery.of(ctx).size.width;
  }

  Constant.fromJson(Map<String, dynamic> json){

    try {
      urlFanPage = json["urlFanPage"] ?? "https://m.me/100086662007801";
      urlWeb =
          json["urlWeb"] ?? "https://ketoanphuongnhi.000webhostapp.com";

      urlApiUpload = json["urlApiUpload"] ?? "/api/uploads.php";

      ///link assets
      urlUploadAssetsAll = json["urlUploadAssetsAll"] ?? "assets/uploadAll/";
      urlAssetsJson = json["urlAssetsJson"] ?? "assets/json/";
      urlAssetsimage = json["urlAssetsimage"] ?? "assets/images/";

      ///het
      adress = json["adress"] ??
          "965/102/10 Quang Trung, Phường 14, Quận Gò Vấp, Thành Phố Hồ Chí Minh";
      sdt = json["sdt"] ?? "096 55 66 799 / 0388074591";
      email = json["email"] ?? "Tranthiphuongnhi92@gmail.com";
      withNotMargin = double.tryParse(json["withNotMargin"])?? 500;
      withMinPhone = double.tryParse(json["withMinPhone"]) ?? 350;
      secondChangeImage = int.tryParse(json["secondChangeImage"]) ?? 5;

      urlData = json["urlData"] ?? "assets/data/";
    }catch(e){
      print("Constant.fromJson "+e.toString());
    }

  }

  Map<String, dynamic> toJson() {
    return {
      "urlFanPage": urlFanPage,
      "urlWeb": urlWeb,
      "urlApiUpload": urlApiUpload,
      "urlUploadAssetsAll": urlUploadAssetsAll,
      "urlAssetsJson": urlAssetsJson,
      "urlAssetsimage": urlAssetsimage,
      "adress": adress,
      "sdt": sdt,
      "email": email,
      "withNotMargin": withNotMargin,
      "withMinPhone": withMinPhone,
      "secondChangeImage": secondChangeImage,
      "urlData": urlData
    };
  }




}