import 'package:dashboard_ui/common/myRouters.dart';
import 'package:dashboard_ui/view/dvKhacScreen.dart';
import 'package:dashboard_ui/view/gioiThieuScreen.dart';
import 'package:dashboard_ui/view/homeScreen.dart';
import 'package:dashboard_ui/view/keToanTronGoiScreen.dart';
import 'package:dashboard_ui/view/thanhLapCtyScreen.dart';
import 'package:dashboard_ui/view/visaScreen.dart';
import 'package:flutter/material.dart';

class MenuController extends ChangeNotifier {
  int page=0;
  Widget bodyWidget=HomeScreen();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void controlMenu() {
    if (!_scaffoldKey.currentState.isDrawerOpen) {
      _scaffoldKey.currentState.openDrawer();
    }
  }

  void setPage(int value){//0 la home, 1 la gioi thieu,  2 la thanh lap cty, 3 la ke toan tron goi, 3 la ho chieu vía
    //4 làho chieu vi sa 5 la dich vu khac
    page=value;

    print(value);
    switch(value){
      case 1: bodyWidget=GioiThieuScreen(); break;
      case 2: bodyWidget=ThanhLapScreen(); break;
      case 3: bodyWidget=KeToanScreen(); break;
      case 4: bodyWidget=ViSaScreen(); break;
      case 5: bodyWidget=DichVuKhacScreen(); break;
      default: bodyWidget=HomeScreen(); break;
    }

    print(bodyWidget.toString());


    //bodyWidget=Text("mới");

    notifyListeners();
  }

  void setPageWithNamePage(String namePage){//0 la home, 1 la gioi thieu,  2 la thanh lap cty, 3 la ke toan tron goi, 3 la ho chieu vía
    //4 làho chieu vi sa 5 la dich vu khac
   // page=value;

   // print(value);
    String hoso=MyRouters.hoso;
    if(namePage==MyRouters.hoso){
      bodyWidget=GioiThieuScreen();

    }
    if(namePage==MyRouters.visa){
      bodyWidget=ViSaScreen();

    }
    if(namePage==MyRouters.dichVuKhac){
      bodyWidget=DichVuKhacScreen();

    }
    if(namePage==MyRouters.home){
      bodyWidget=HomeScreen();

    }
    if(namePage==MyRouters.keToanTronGoi){
      bodyWidget=KeToanScreen();

    }
    if(namePage==MyRouters.thanhLapDN){
      bodyWidget=ThanhLapScreen();

    }


    print(bodyWidget.toString());


    //bodyWidget=Text("mới");

    notifyListeners();
  }

  Widget get getBodyWidget => bodyWidget;


}
