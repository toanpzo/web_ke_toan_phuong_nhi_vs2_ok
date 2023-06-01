import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
   ImageWidget({Key key, this.path}) : super(key: key);
   final String path;

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    print(widget.path);
    return
      Container(
        //height: MediaQuery.of(context).size.width/4.5,
        child: Image(image: AssetImage(widget.path),
    ));
  }
}
