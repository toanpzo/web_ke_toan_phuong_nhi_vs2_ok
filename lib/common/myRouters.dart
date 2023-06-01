import 'package:flutter/material.dart';


class MyRouters{

  MyRouters();

  static String home="/";
  static String hoso="/HoSo";
  static String thanhLapDN="/ThanhLapDoanhNghiep";
  static String keToanTronGoi="/KeToanTronGoi";
  static String visa="/HoChieuVisa";
  static String dichVuKhac="/DichVuKhac";

  // Route<dynamic> getGenerateRoute(RouteSettings st, BuildContext context) {
  //   print("namela" + st.name.toString());
  //
  //   switch (st.name) {
  //     case "/":
  //       return MaterialPageRoute(builder: (context) => HomePage(NamePage: home,));
  //     case '/HoSo':
  //       return MaterialPageRoute(builder: (context) => HomePage(NamePage: hoso,));
  //     case '/ThanhLapDoanhNghiep':
  //       return MaterialPageRoute(builder: (context) => HomePage(NamePage: thanhLapDN,));
  //     case "/KeToanTronGoi":
  //       return MaterialPageRoute(builder: (context) => HomePage(NamePage: keToanTronGoi,));
  //     case "/HoChieuVisa":
  //       return MaterialPageRoute(builder: (context) => HomePage(NamePage: visa,));
  //     case "/DichVuKhac":
  //       return MaterialPageRoute(builder: (context) => HomePage(NamePage: dichVuKhac,));
  //     // default:
  //     //   {
  //     //     ScreenArguments args = st.arguments as ScreenArguments;
  //     //     return MaterialPageRoute(
  //     //         builder: (context) => InappWebView(urlPath: args.url));
  //     //   }
  //   }
  // }

}