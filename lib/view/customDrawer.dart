import 'package:dashboard_ui/controllers/controller.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatefulWidget {
   CustomDrawer({Key key}) : super(key: key);








   State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>{

  String titlePage="";
  int selectId=0;

  void onclick(int id,BuildContext context) {

    context.read<MenuController>().setPage(id);
    setState(() {
      selectId = id;

    });
  }


  List<Widget> menus=List<Widget>.empty(growable: true);
  void loadData(){

    menus.clear();
    Widget header =DrawerHeader(child: Image.asset('assets/images/logo.png'));
    menus.add(header);
    MenuItem menu1= MenuItem(
      id:1,
      activeIcon: EvaIcons.grid,
      icon: EvaIcons.gridOutline,
      title: "Giới Thiệu",
      onPress:(){ onclick(1,context);}
    );
    MenuItem menu2 =MenuItem(
      id:2,
      activeIcon: EvaIcons.archive,
      icon: EvaIcons.archiveOutline,
      title: "Thành Lập Công Ty",
        onPress:(){ onclick(2,context);}
    );
    MenuItem menu3 =MenuItem(
      id:3,
      activeIcon: EvaIcons.calendar,
      icon: EvaIcons.calendarOutline,
      title: "Kế Toán Trọn gói",
        onPress:(){ onclick(3,context);}
    );
    MenuItem menu4 =MenuItem(
      id:4,
      activeIcon: EvaIcons.email,
      icon: EvaIcons.emailOutline,
      title: "Hộ Chiếu / Visa trọn gói",
        onPress:(){ onclick(4,context);}
    );
    MenuItem menu5 =MenuItem(
      id:5,
      activeIcon: EvaIcons.person,
      icon: EvaIcons.personOutline,
      title: "Dịch vụ khác",
        onPress:(){ onclick(5,context);}
    );
    MenuItem menu6 =MenuItem(
      id:6,
      activeIcon: EvaIcons.settings,
      icon: EvaIcons.settingsOutline,
      title: "Cài đặt",
        onPress:(){ onclick(6,context);}
    );

    menu1.onPress=(){ onclick(menu1.id,context);};
    menu2.onPress=(){ onclick(menu2.id,context);};
    menu3.onPress=(){ onclick(menu3.id,context);};
    menu4.onPress=(){ onclick(menu4.id,context);};
    menu5.onPress=(){ onclick(menu5.id,context);};
    menu6.onPress=(){ onclick(menu6.id,context);};

    print("---"+menu1.id.toString());
    print("---"+menu2.id.toString());
    print("---"+menu3.id.toString());
    print("---"+menu4.id.toString());
    print("---"+menu5.id.toString());

    if(menu1.id==selectId){
      menu1.selected=true;
    }else{
      menu1.selected=false;
    }

    if(menu2.id==selectId){
      menu2.selected=true;
    }else{
      menu2.selected=false;
    }
    if(menu3.id==selectId){
      menu3.selected=true;
    }else{
      menu3.selected=false;
    }
    if(menu4.id==selectId){
      menu4.selected=true;
    }else{
      menu4.selected=false;
    }
    if(menu5.id==selectId){
      menu5.selected=true;
    }else{
      menu5.selected=false;
    }
    if(menu6.id==selectId){
      menu6.selected=true;
    }else{
      menu6.selected=false;
    }







    menus.add(DrawerListTile(menu: menu1,));
    menus.add(DrawerListTile(menu: menu2,));
    menus.add(DrawerListTile(menu: menu3,));
    menus.add(DrawerListTile(menu: menu4,));
    menus.add(DrawerListTile(menu: menu5,));
    menus.add(DrawerListTile(menu: menu6,));



  }



  @override
  Widget build(BuildContext context) {
    loadData();
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: menus,

          // [
          //   DrawerHeader(child: Image.asset('assets/images/logo.png')),
          //   DrawerListTile(
          //     id: 1,
          //     activeIcon: EvaIcons.grid,
          //     icon: EvaIcons.gridOutline,
          //     title: "Giới Thiệu",
          //     onPress: () {
          //       print(this.)
          //     },
          //   ),
          //   DrawerListTile(
          //     activeIcon: EvaIcons.archive,
          //     icon: EvaIcons.archiveOutline,
          //     title: "Thành Lập Công Ty",
          //     onPress: () {},
          //   ),
          //   DrawerListTile(
          //     activeIcon: EvaIcons.calendar,
          //     icon: EvaIcons.calendarOutline,
          //     title: "Kế Toán Trọn gói",
          //     onPress: () {},
          //   ),
          //   DrawerListTile(
          //     activeIcon: EvaIcons.email,
          //     icon: EvaIcons.emailOutline,
          //     title: "Hộ Chiếu / Visa trọn gói",
          //     onPress: () {},
          //   ),
          //   DrawerListTile(
          //     activeIcon: EvaIcons.person,
          //     icon: EvaIcons.personOutline,
          //     title: "Dịch vụ khác",
          //     onPress: () {},
          //   ),
          //   DrawerListTile(
          //     activeIcon: EvaIcons.settings,
          //     icon: EvaIcons.settingsOutline,
          //     title: "Cài đặt",
          //     onPress: () {},
          //   ),
          // ],
        ),
      ),
    );
  }

}

class DrawerListTile extends StatelessWidget {



  const DrawerListTile({
    Key key,
     @required this.menu,
  }) : super(key: key);


   final MenuItem menu;




  // final IconData activeIcon,icon;
  //
  // final String title, svgPath,svgPathSelect;
  // final Function onPress;
  // final bool selected;
  // final id;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: menu.onPress,
      horizontalTitleGap: 0.0,
      leading:
      menu.selected?
      Icon(menu.activeIcon):Icon(menu.icon),

      // SvgPicture.asset(
      //   svgPathSelect,
      //   color: Colors.white54,
      //   height: 16,
      // )
      // :SvgPicture.asset(
      //   svgPath,
      //   color: Colors.white54,
      //   height: 16,
      // ),
      title: Text(
        menu.title,
        style: TextStyle(color: !menu.selected? Colors.white54:Colors.orange),
      ),
    );
  }
}

class MenuItem{
   IconData activeIcon,icon;

   String title="code";
   Function onPress=(){};
   bool selected=true;
   int id=0;

  MenuItem({this.activeIcon, this.icon, this.title, this.onPress, this.selected, this.id});


}
