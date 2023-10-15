import '../consts/consts.dart';
import 'appLogoWidget.dart';

Widget TopBar(screenWidth,screenHeight,{visible = true}){
  return Visibility(
    visible: visible,
    child: Container(
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(5,3),
          )],
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24.0) ,bottomRight: Radius.circular(24.0))
      ),
      child: Row(
        children: [
          appLogoWidget((screenWidth*0.16), (screenWidth*0.16),left: 5.0),
          Spacer(),
          Container(
            margin: EdgeInsets.only(right: 7.0),
            child: CircleAvatar(
              radius: (screenWidth*0.055),
              backgroundImage: AssetImage(icProfile),
            ),
          )
        ],
      ),
    ),
  );
}