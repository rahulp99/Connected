import 'package:connected/providers/authProvider.dart';
import 'package:connected/screens/homePage.dart';
import 'package:connected/screens/loginPage.dart';
import 'package:connected/constants/allConstants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      checkSignedIn();
    });
  }

  void checkSignedIn() async {
    AuthProvider authProvider = context.read<AuthProvider>();
    bool isLoggedIn = await authProvider.isLoggedIn();
    if (isLoggedIn) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            MessageConstants.splashScreenTop,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: Sizes.dimen_18),
          ),
          Image.asset(
            AssetConst.splashImage,
            width: 300,
            height: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            MessageConstants.splashScreenBottom,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: Sizes.dimen_18),
          ),
          const SizedBox(
            height: 20,
          ),
          const CircularProgressIndicator(
            color: AppColors.lightGrey,
          ),
        ],
      ),
    ));
  }
}
