import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:telegramui/core/constants/color_const.dart';
import 'package:telegramui/core/constants/font_const.dart';
import 'package:telegramui/extension/mq_extension.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            textButton("Cancel", () {}),
            textButton("Next", () {}, fontWeight: FontWeight.bold),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Your Phone",
                style: TextStyle(color: ColorConst.black, fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Text(
                "Please confirm your country code and enter your phone number.",
                style: TextStyle(
                    color: ColorConst.black, fontSize: FontConst.kMediumFont),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            const Divider(indent: 10, thickness: 1.5),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "USA",
                style: TextStyle(
                  fontSize: FontConst.kLargeFont,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: context.w * 0.2,
                  height: context.h * 0.03,
                  child: TextFormField(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  TextButton textButton(
    String str,
    Function func, {
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextButton(
      onPressed: func(),
      child: Text(
        str,
        style: TextStyle(
          color: ColorConst.blue,
          fontSize: FontConst.kMediumFont,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
