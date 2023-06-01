import 'package:dashboard_ui/common/myRouters.dart';
import 'package:dashboard_ui/customResponsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:provider/provider.dart';

import '../controllers/controller.dart';
import '../models/pageImage.dart';

class ImageSlide extends StatefulWidget {
  const ImageSlide({Key key, @required this.images}) : super(key: key);

  final List<PageImage> images;

  @override
  State<ImageSlide> createState() => _ImageSlideState();
}

class _ImageSlideState extends State<ImageSlide> {
  List<Widget> imageWidgets=List<Widget>.empty(growable: true);
  int imageSelect=0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imageWidgets.clear();
    widget.images.forEach((element) {


      Widget widgetImage= Image.asset(
        element.urlImage,
        fit: BoxFit.fill,
      );
      imageWidgets.add(widgetImage);

    });


  }
  @override
  Widget build(BuildContext context) {
    return
    InkWell(
      child:ImageSlideshow(

        /// Width of the [ImageSlideshow].
        width: double.infinity,

        /// Height of the [ImageSlideshow].
        height: CustomResponsive.isMobile(context)?  200:400,

        /// The page to show when first creating the [ImageSlideshow].
        initialPage: 0,

        /// The color to paint the indicator.
        indicatorColor: Colors.blue,

        /// The color to paint behind th indicator.
        indicatorBackgroundColor: Colors.grey,

        /// The widgets to display in the [ImageSlideshow].
        /// Add the sample image file into the images folder
        children: imageWidgets,




        /// Called whenever the page in the center of the viewport changes.
        onPageChanged: (value) {
          imageSelect=value;
          print('Page changed: $value');
          //context.read<MenuController>().setPageWithNamePage(widget.images[value].code);
        },



        /// Auto scroll interval.
        /// Do not auto scroll with null or 0.
        autoPlayInterval: 3000,

        /// Loops back to first slide.
        isLoop: true,
      ) ,
      onTap: (){
        context.read<MenuController>().setPageWithNamePage(widget.images[imageSelect].code);
      },
    );


  }
}
