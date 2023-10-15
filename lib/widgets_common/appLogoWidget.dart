import 'package:leaseposh/consts/consts.dart';

Widget appLogoWidget(height,width,{left = 0.0,right = 0.0,top = 0.0,bottom = 0.0}) {
  return Image.asset(appLogo).box.white.size(height,width).padding(const EdgeInsets.all(8)).margin(EdgeInsets.only(left:left,right:right,top: top,bottom: bottom)).color(Colors.transparent).make();
}