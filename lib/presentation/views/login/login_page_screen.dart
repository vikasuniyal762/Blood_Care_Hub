import 'package:blood_care_hub/presentation/views/profile/profile_screen.dart';
import 'package:blood_care_hub/presentation/widgets/customAlertDialog.dart';
import 'package:blood_care_hub/presentation/widgets/toastMessage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../exporters/utilExporters.dart';

class LoginPageScreen extends StatefulWidget {
  const LoginPageScreen({Key? key}) : super(key: key);

  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  static Future<User?> loginUsingEmailPassword(
      {required String? email,
      required String? password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email!, password: password!);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print("No User found for that email and password");
        Fluttertoast.showToast(msg: e.toString());
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return WillPopScope(
      onWillPop: () => _onBackPressed(context),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppConst.appTitle,
              style: TextStyle(
                color: AppColor.accentPurple,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              "Login to ${AppConst.appTitle}",
              style: TextStyle(
                color: AppColor.accentPurple,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24.0),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                labelText: 'Email',
                prefixIcon: Icon(Icons.email, color: AppColor.accentPurple),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock, color: AppColor.accentPurple),
              ),
            ),
            SizedBox(height: 12.0),
            GestureDetector(
              onTap: () {
                // Add your functionality for password recovery here
              },
              child: Text(
                "Forgot your password?",
                style: TextStyle(
                  color: AppColor.accentPurple,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 24.0),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColor.accentYellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                ),
                onPressed: () async {
                  // showToast("Login SuccessFull", ToastGravity.CENTER);

                  User? user = await loginUsingEmailPassword(
                      email: emailController.text,
                      password: passwordController.text,
                      context: context);
                  print(user);
                  if (user != null) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                  }

                  // Add your login functionality here
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: AppColor.primaryWhite,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> _onBackPressed(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => CustomAlertDialog(
        title: 'Are you sure?',
        content: 'Do you want to exit the app?',
        onConfirm: () => Navigator.pop(context, false),
      ),
    ).then((value) => value ?? false);
  }
}
