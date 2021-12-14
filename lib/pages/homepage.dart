import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mockup_tinder/utils/appcolors.dart';
import 'logo_widget.dart';
import 'widgets/custom_button.dart';
import 'widgets/signin_widget.dart';
import 'widgets/terms_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: AppColors.linearGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_left_rounded,
              size: 40.0,
            ),
            splashRadius: 16.0,
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                LogoWidget(),
                TermsWidget(),
                SizedBox(height: 24),
                CustomButton(
                  onpress: () {},
                  title: "SIGN IN WITH APPLE",
                  image: "assets/icon_apple.png",
                ),
                SizedBox(height: 8),
                CustomButton(
                  onpress: () {},
                  title: "SIGN IN WITH FACEBOOK",
                  image: "assets/facebook.png",
                ),
                SizedBox(height: 8),
                CustomButton(
                  onpress: () {},
                  title: "SIGN IN WITH PHONE NUMBER",
                  image: "assets/speech-bubble.png",
                ),
                SizedBox(height: 18),
                SignInWidget(),
                SizedBox(height: 34),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
