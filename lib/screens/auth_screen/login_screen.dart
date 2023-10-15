import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:leaseposh/screens/home.dart';

import '../../consts/consts.dart';
import '../../widgets_common/widgets_common.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController? phoneNumber;

    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Container(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: (context.screenHeight*0.0)),
                        child: appLogoWidget(60.0, 60.0),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text("Skip").onTap(() { Get.to(() => const Home());}),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextField(phoneNumber,context.screenWidth*0.95,TextInputType.phone,labelText: "Phone Number",counterText: "Need Help?",prefixText: "+91",maxLength: 12,autoFocus: true),
                  ],
                ),
                30.heightBox,
                ElevatedButton(
                    onPressed: (){},
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed))
                            return Colors.grey;
                          return null;
                        },
                      ),
                    ),
                    child: Text(
                    "Get OTP",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    ),)
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    height: context.screenHeight*0.6,
                        alignment: Alignment.bottomCenter,
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: "By Signing Up, You Agree To Our",
                                  style: TextStyle(
                                    color: Colors.black
                                  )
                                ),
                                TextSpan(
                                  text: " Terms & Conditions",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue
                                  )
                                ),
                                TextSpan(
                                  text: " And",
                                    style: TextStyle(
                                        color: Colors.black
                                    )
                                ),
                                TextSpan(
                                  text: " Privacy Policy",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue
                                    )
                                )
                              ]
                            )
                        ),
                      ),
                )
                ]
                ),
          ),
            ),
          ),
    );
  }
}
