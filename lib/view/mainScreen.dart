import 'dart:io';

import 'package:dashboard_ui/components/dashboard.dart';
import 'package:dashboard_ui/view/customDrawer.dart';
import 'package:dashboard_ui/controllers/controller.dart';
import 'package:url_launcher/url_launcher.dart';
import '../customResponsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:animated_icon_button/animated_icon_button.dart';
//
// class MainScreen extends StatelessWidget {
//    MainScreen({Key key}) : super(key: key);
//   // var animationController = AnimationController(
//   //   //vsync: this,
//   //   duration: Duration(milliseconds: 200),
//   //   reverseDuration: Duration(milliseconds: 200),
//   // );
//
//   @override
//   Widget build(BuildContext context) {
//     print("chay lai cai nay ne");
//     return Scaffold(
//       key: context.read<MenuController>().scaffoldKey,
//       drawer: CustomDrawer(),
//       body: SafeArea(
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             if (CustomResponsive.isDesktop(context)) Expanded(child: CustomDrawer()),
//             Expanded(flex: 5, child: DashBoard()),
//           ],
//         ),
//       ),
//
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//
//
//           AnimatedIconButton(
//             onPressed: () => print('all icons pressed'),
//             icons: [
//
//
//               AnimatedIconItem(
//                 icon: Icon(Icons.add),
//                 onPressed: () => print('add pressed'),
//               ),
//               AnimatedIconItem(
//                 icon: Icon(Icons.close),
//               ),
//             ],
//           ),
//
//           // AnimatedIconButton(
//           //   animationController: animationController,
//           //   size: 35,
//           //   onPressed: () {
//           //     print('all icons pressed');
//           //   },
//           //   duration: const Duration(milliseconds: 200),
//           //   icons: <AnimatedIconItem>[
//           //     AnimatedIconItem(
//           //       icon: Icon(
//           //         Icons.mic,
//           //         color: Colors.purple,
//           //       ),
//           //       onPressed: () => print('mic pressed'),
//           //       backgroundColor: Colors.white,
//           //     ),
//           //     AnimatedIconItem(
//           //       icon: Icon(
//           //         Icons.g_translate,
//           //         color: Colors.purple,
//           //       ),
//           //       backgroundColor: Colors.white,
//           //     ),
//           //     AnimatedIconItem(
//           //       icon: Icon(
//           //         Icons.collections_sharp,
//           //         color: Colors.purple,
//           //       ),
//           //       backgroundColor: Colors.white,
//           //     ),
//           //   ],
//           // ),
//           AnimatedIconButton(
//             size: 100,
//             onPressed: () {},
//             duration: const Duration(milliseconds: 500),
//             splashColor: Colors.transparent,
//             icons: const <AnimatedIconItem>[
//               AnimatedIconItem(
//                 icon: Icon(Icons.add, color: Colors.purple),
//               ),
//               AnimatedIconItem(
//                 icon: Icon(Icons.close, color: Colors.purple),
//               ),
//             ],
//           ),
//         ],
//
//       ),
//     );
//   }
// }

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);



  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {

   AnimationController _controller;

   bool _hasCallSupport = false;
   Future<void> _launched;
   String _phone = '';

   Widget widgetPhone=
   InkWell(
     child:CircleAvatar(

       backgroundImage: AssetImage("assets/icons/phone.gif",),
       radius: 30,
     ) ,
     onTap: (){
       // setState(() {
       //   // widgetPhone= Container(
       //   //
       //   // );
       // });

     },
   );
   Widget widgetPhoneDefault=
   InkWell(
     child:CircleAvatar(

       backgroundImage: AssetImage("assets/icons/phone.gif",),
       radius: 30,
     ) ,
     onTap: (){
       // setState(() {
       //   // widgetPhone= Container(
       //   //
       //   // );
       // });

     },
   );
   Widget widgetEmail=InkWell(
     child:CircleAvatar(
     backgroundImage: AssetImage("assets/icons/mail.gif",),
     radius: 30,
   ));
   Widget widgetZalo=InkWell(
     child:CircleAvatar(
     backgroundImage: AssetImage("assets/icons/zalo.gif",),
     radius: 30,
   ));
   Widget widgetMessenger=InkWell(
       child:CircleAvatar(
     backgroundImage: AssetImage("assets/icons/messenger.gif",),
     radius: 30,
   ));

   Future<void> _makePhoneCall(String phoneNumber) async {
     final Uri launchUri = Uri(
       scheme: 'tel',
       path: phoneNumber,
     );
     await launchUrl(launchUri);
   }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),


      reverseDuration: Duration(milliseconds: 200),
    );
    canLaunchUrl(Uri(scheme: 'tel', path: '123')).then((bool result) {
      setState(() {
        _hasCallSupport = result;
      });
    });


    widgetPhone=
        InkWell(
          child:CircleAvatar(

            backgroundImage: AssetImage("assets/icons/phone.gif",),
            radius: 30,
          ) ,
          onTap: (){
            widgetPhoneDefault=widgetPhone;
            setState(() {
              if(_hasCallSupport&&CustomResponsive.isMobile(context)){
                _makePhoneCall("0983214524");

              }else{
                print("false");
                widgetPhone=


                    ElevatedButton(onPressed: (){
                      setState(() {
                        widgetPhone = widgetPhoneDefault;
                      });
                    }, child: Text("dnjkfhdsjkf",style: TextStyle(
                      //fontSize: 50,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold
                    ),),
                    style: ElevatedButton.styleFrom(
                      //foregroundColor: Colors.white,
                      backgroundColor: Colors.white,
                      elevation: 2,
                      minimumSize: Size(200,60)
                      //maximumSize: Size.fromHeight(200),
                    ),
                    );
              }

            });

          },
        );
    widgetEmail=InkWell(
        child:CircleAvatar(
          backgroundImage: AssetImage("assets/icons/mail.gif",),
          radius: 30,
        ));
    widgetZalo=InkWell(
        child:CircleAvatar(
          backgroundImage: AssetImage("assets/icons/zalo.gif",),
          radius: 30,
        ));
    widgetMessenger=InkWell(
        child:CircleAvatar(
          backgroundImage: AssetImage("assets/icons/messenger.gif",),
          radius: 30,
        ));
  }

  @override
  Widget build(BuildContext context) {
    print("chay lai cai nay ne");
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: CustomDrawer(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (CustomResponsive.isDesktop(context)) Expanded(child: CustomDrawer()),
            Expanded(flex: 5, child: DashBoard()),
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment:  CustomResponsive.isMobile(context)? MainAxisAlignment.center
        :MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 30,
          ),
          widgetPhone,
          SizedBox(
            width: 30,
          ),
        widgetEmail,
          SizedBox(
            width: 30,
          ),
          widgetZalo,
          SizedBox(
            width: 30,
          ),
          widgetMessenger,
          SizedBox(
            width: 30,
          ),

          // Image.asset(
          //   "assets/images/phone.gif",
          //   height: 100.0,
          //   width: 100.0,
          //   fit: BoxFit.scaleDown,
          // ),
          //
          //
          // AnimatedIconButton(
          //   onPressed: () => print('all icons pressed'),
          //   icons: [
          //
          //
          //     AnimatedIconItem(
          //       icon: Icon(Icons.add),
          //       onPressed: () => print('add pressed'),
          //     ),
          //     AnimatedIconItem(
          //       icon: Icon(Icons.close),
          //     ),
          //   ],
          // ),
          //
          // AnimatedIconButton(
          //   animationController: _controller,
          //   size: 35,
          //   onPressed: () {
          //     print('all icons pressed');
          //   },
          //   duration: const Duration(milliseconds: 200),
          //   icons: <AnimatedIconItem>[
          //     AnimatedIconItem(
          //       icon: Icon(
          //         Icons.mic,
          //         color: Colors.purple,
          //       ),
          //       onPressed: () => print('mic pressed'),
          //       backgroundColor: Colors.white,
          //     ),
          //     AnimatedIconItem(
          //       icon: Icon(
          //         Icons.g_translate,
          //         color: Colors.purple,
          //       ),
          //       backgroundColor: Colors.white,
          //     ),
          //     AnimatedIconItem(
          //       icon: Icon(
          //         Icons.collections_sharp,
          //         color: Colors.purple,
          //       ),
          //       backgroundColor: Colors.white,
          //     ),
          //   ],
          // ),
          // AnimatedIconButton(
          //   size: 100,
          //   onPressed: () {},
          //   duration: const Duration(milliseconds: 500),
          //   splashColor: Colors.transparent,
          //   icons: const <AnimatedIconItem>[
          //     AnimatedIconItem(
          //       icon: Icon(Icons.add, color: Colors.purple),
          //     ),
          //     AnimatedIconItem(
          //       icon: Icon(Icons.close, color: Colors.purple),
          //     ),
          //   ],
          // ),
          //
          // ImageIcon(
          //   AssetImage("assets/images/phone.gif"),
          //
          //
          // ),
        ],

      ),
    );
  }
}

