import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:socialinwapp_himabindur/Base_auth_HBR_Page.dart';
import 'package:socialinwapp_himabindur/home_pageHBR.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _checkForLogin() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      print("user not logged in , Navigate to Sign In");
      Future.delayed(Duration(seconds: 2), () {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => BaseAuthPage()),
            (route) => false);
      });
    } else {
      print("user logged in");
      print(user.phoneNumber);
      Future.delayed(Duration(seconds: 2), () {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => HomePage()),
          (route) => false,
        );
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _checkForLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlutterLogo(
          size: 120,
        ),
      ),
    );
  }
}
