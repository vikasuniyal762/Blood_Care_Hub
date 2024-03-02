//
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//
//
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // Define your theme colors using the AppColor class
//         colorScheme: ColorScheme.fromSwatch(
//           accentColor: AppColor.accentYellow.withOpacity(0.2),
//         ),
//         useMaterial3: true,
//       ),
//       home:  MyHomePage(
//           title: 'Flutter Demo Home Page'),
//       builder: InAppNotifications.init(),
//
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
//
//   AppLifecycleState? appLifecycleState;
//
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addObserver(this);
//   }
//
//   @override
//   void dispose() {
//     WidgetsBinding.instance.removeObserver(this);
//     super.dispose();
//   }
//
//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     super.didChangeAppLifecycleState(state);
//     setState(() {
//       appLifecycleState = state;
//       // print(" ye hai app status .... ${appLifecycleState}");
//     });
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColor.primaryBlack.withOpacity(0.9), // Change the background color
//         title: Text(
//           widget.title,
//           style: TextStyle(color: AppColor.primaryWhite), // Change the text color
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//                 onPressed: (){
//                   setState(() {
//                     showToast('TUM KYU AA GYE.',ToastGravity.CENTER);
//                     showNotification(
//                         title: 'SOCHNA V MAT KI WELCOME KARUNGA ',
//                         leadingIcon: Icons.abc,
//                         endingIcon: Icons.ice_skating,
//                         description: 'KYU MATLAB ?? NHI KRUNGA TO NAHI KARUNGA BAAT KHATAM',
//                         onTap: () {  });
//                   });
//                 },
//                 child: Text('Show toast')),
//           ],
//         ),
//       ),
//     );
//
//   }
// }
//
//

import 'package:blood_care_hub/presentation/exporters/utilExporters.dart';
import 'package:blood_care_hub/presentation/widgets/notificationMessage.dart';
import 'package:blood_care_hub/presentation/widgets/toastMessage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inapp_notifications/flutter_inapp_notifications.dart';
import 'package:fluttertoast/fluttertoast.dart';



void main() {
  runApp(const InitizationOfApp());
}

class InitizationOfApp extends StatelessWidget {
  const InitizationOfApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      builder: InAppNotifications.init(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver{
    AppLifecycleState? appLifecycleState;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    setState(() {
      appLifecycleState = state;
      // print(" ye hai app status .... ${appLifecycleState}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: LoginPageScreen()
    );
  }
}

class LoginPageScreen extends StatefulWidget {
  const LoginPageScreen({super.key});

  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {

  Future<bool> onBackPressed() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Are you sure?'),
        content: Text('Do you want to exit the app?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text('No'),
          ),
          TextButton(
            onPressed: () {
              // Close the app when 'Yes' is pressed
              SystemNavigator.pop();
            },
            child: Text('Yes'),
          ),
        ],
      ),
    ).then((value) => value ?? false);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onBackPressed,
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
                onPressed: () {
                  showToast("Login SuccessFull", ToastGravity.CENTER);
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
}
