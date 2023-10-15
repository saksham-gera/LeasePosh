import '../consts/consts.dart';

Widget CustomTextField(controller, width, TextInputType,
    {labelText = "",
    counterText = "",
    prefixText = "",
    maxLength = 99999999,
    autoFocus = false}) {
  return SizedBox(
    width: width,
    child: TextField(
      controller: controller,
      keyboardType: TextInputType,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.blue,
              )),
          focusColor: Colors.blue,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          prefixStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          prefixText: prefixText,
          counterText: counterText,
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.black)),
      maxLength: maxLength,
      autofocus: autoFocus,
    ),
  );
}
