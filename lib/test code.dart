// //
// //
// // void main() {
// //   runApp(const MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   const MyApp({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //
// //
// //       debugShowCheckedModeBanner: false,
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         // Define your theme colors using the AppColor class
// //         colorScheme: ColorScheme.fromSwatch(
// //           accentColor: AppColor.accentYellow.withOpacity(0.2),
// //         ),
// //         useMaterial3: true,
// //       ),
// //       home:  MyHomePage(
// //           title: 'Flutter Demo Home Page'),
// //       builder: InAppNotifications.init(),
// //
// //     );
// //   }
// // }
// //
// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({Key? key, required this.title}) : super(key: key);
// //
// //   final String title;
// //
// //   @override
// //   State<MyHomePage> createState() => _MyHomePageState();
// // }
// //
// // class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
// //
// //   AppLifecycleState? appLifecycleState;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     WidgetsBinding.instance.addObserver(this);
// //   }
// //
// //   @override
// //   void dispose() {
// //     WidgetsBinding.instance.removeObserver(this);
// //     super.dispose();
// //   }
// //
// //   @override
// //   void didChangeAppLifecycleState(AppLifecycleState state) {
// //     super.didChangeAppLifecycleState(state);
// //     setState(() {
// //       appLifecycleState = state;
// //       // print(" ye hai app status .... ${appLifecycleState}");
// //     });
// //   }
// //
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: AppColor.primaryBlack.withOpacity(0.9), // Change the background color
// //         title: Text(
// //           widget.title,
// //           style: TextStyle(color: AppColor.primaryWhite), // Change the text color
// //         ),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             ElevatedButton(
// //                 onPressed: (){
// //                   setState(() {
// //                     showToast('TUM KYU AA GYE.',ToastGravity.CENTER);
// //                     showNotification(
// //                         title: 'SOCHNA V MAT KI WELCOME KARUNGA ',
// //                         leadingIcon: Icons.abc,
// //                         endingIcon: Icons.ice_skating,
// //                         description: 'KYU MATLAB ?? NHI KRUNGA TO NAHI KARUNGA BAAT KHATAM',
// //                         onTap: () {  });
// //                   });
// //                 },
// //                 child: Text('Show toast')),
// //           ],
// //         ),
// //       ),
// //     );
// //
// //   }
// // }
// //
// //
//
// import 'package:blood_care_hub/presentation/exporters/utilExporters.dart';
// import 'package:blood_care_hub/presentation/widgets/notificationMessage.dart';
// import 'package:blood_care_hub/presentation/widgets/toastMessage.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_inapp_notifications/flutter_inapp_notifications.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
//
//
// void main() {
//   runApp(const InitizationOfApp());
// }
//
// class InitizationOfApp extends StatelessWidget {
//   const InitizationOfApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//       builder: InAppNotifications.init(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> with WidgetsBindingObserver{
//     AppLifecycleState? appLifecycleState;
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
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//         body: LoginPageScreen()
//     );
//   }
// }
//
// class LoginPageScreen extends StatefulWidget {
//   const LoginPageScreen({super.key});
//
//   @override
//   State<LoginPageScreen> createState() => _LoginPageScreenState();
// }
//
// class _LoginPageScreenState extends State<LoginPageScreen> {
//
//   Future<bool> onBackPressed() {
//     return showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text('Are you sure?'),
//         content: Text('Do you want to exit the app?'),
//         actions: <Widget>[
//           TextButton(
//             onPressed: () => Navigator.pop(context, false),
//             child: Text('No'),
//           ),
//           TextButton(
//             onPressed: () {
//               // Close the app when 'Yes' is pressed
//               SystemNavigator.pop();
//             },
//             child: Text('Yes'),
//           ),
//         ],
//       ),
//     ).then((value) => value ?? false);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: onBackPressed,
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               AppConst.appTitle,
//               style: TextStyle(
//                 color: AppColor.accentPurple,
//                 fontSize: 36,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               "Login to ${AppConst.appTitle}",
//               style: TextStyle(
//                 color: AppColor.accentPurple,
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 24.0),
//             TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                 ),
//                 labelText: 'Email',
//                 prefixIcon: Icon(Icons.email, color: AppColor.accentPurple),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                 ),
//                 labelText: 'Password',
//                 prefixIcon: Icon(Icons.lock, color: AppColor.accentPurple),
//               ),
//             ),
//             SizedBox(height: 12.0),
//             GestureDetector(
//               onTap: () {
//                 // Add your functionality for password recovery here
//               },
//               child: Text(
//                 "Forgot your password?",
//                 style: TextStyle(
//                   color: AppColor.accentPurple,
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             SizedBox(height: 24.0),
//             Container(
//               width: double.infinity,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   primary: AppColor.accentYellow,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   padding: EdgeInsets.symmetric(vertical: 16.0),
//                 ),
//                 onPressed: () {
//                   showToast("Login SuccessFull", ToastGravity.CENTER);
//                   // Add your login functionality here
//                 },
//                 child: Text(
//                   "Login",
//                   style: TextStyle(
//                     color: AppColor.primaryWhite,
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// flutter pub add simple_animations
import 'package:blood_care_hub/presentation/exporters/utilExporters.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const HomePages());
}

class HomePages extends StatelessWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColor.primaryWhite,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();

          },
          child: SingleChildScrollView(

            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      height: MediaQuery.of(context).size.height * 0.6, // Adjust the height dynamically
                      width: MediaQuery.of(context).size.width, // Adjust the width dynamically
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top:MediaQuery.of(context).size.width * 0.0013,
                            left: MediaQuery.of(context).size.width * 0.07,
                            width: MediaQuery.of(context).size.width * 0.17,
                            height: MediaQuery.of(context).size.height * 0.27,
                            child: FadeInUp(
                              duration: Duration(milliseconds: 1100),
                              child: Container(
                                decoration: BoxDecoration(
                                  // color: Colors.red,
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/light-1.png'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.001,
                            left: MediaQuery.of(context).size.width * 0.37, // Adjusted left position
                            width: MediaQuery.of(context).size.width * 0.2, // Adjusted width
                            height: MediaQuery.of(context).size.height * 0.19, // Adjusted height
                            child: FadeInUp(
                                duration: Duration(milliseconds: 1200),
                                child: Container(
                                  decoration: BoxDecoration(
                                    // color: Colors.red,
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/light-2.png'),
                                    ),
                                  ),
                                )),
                          ),
                          Positioned(
                            right: MediaQuery.of(context).size.width * 0.13,
                            // Adjusted right position
                            top: MediaQuery.of(context).size.height * 0.13,
                            // Adjusted top position
                            width: MediaQuery.of(context).size.width * 0.11,
                            // Adjusted width (increased)
                            height: MediaQuery.of(context).size.height * 0.06,
                            // Adjusted height (increased)
                            child: FadeInUp(
                                duration: Duration(milliseconds: 1600),
                                child: Container(
                                  decoration: BoxDecoration(
                                    // color: Colors.red,
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/images/clock.png'),
                                        fit: BoxFit.contain
                                        // Ensure the image fits within the container
                                        ),
                                  ),
                                )),
                          ),
                          Positioned(
                            child: FadeInUp(
                                duration: Duration(milliseconds: 1600),
                                child: Container(
                                  margin: EdgeInsets.only(top: 50),
                                  child: Center(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                        color: AppColor.primaryWhite,
                                        fontSize:
                                            MediaQuery.of(context).size.width * 0.1,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          )
                        ],
                      )
                  ),

                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        FadeInUp(duration:Duration(milliseconds: 1800),child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: AppColor.primaryWhite,
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, 0.2),
                                  blurRadius: 20.0,
                                  offset:
                                  Offset(0, 10), // changes position of shadow
                                ),
                              ]),
                          child: Column(

                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                        color: AppColor.primaryDarkGray
                                            .withOpacity(0.1), // Change color here
                                      )),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Email or Phone number',
                                    hintStyle: TextStyle(color: Colors.grey[400]),
                                    prefixIcon: Icon(Icons.email,
                                        color: AppColor.accentPurple),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                    hintStyle: TextStyle(color: Colors.grey[400]),
                                    prefixIcon: Icon(Icons.lock_rounded,
                                        color: AppColor.accentPurple),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),),
                        SizedBox(
                          height: 30,
                        ),
                        FadeInUp(duration: Duration(milliseconds: 1900),child:Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(143, 148, 251, 1),
                                Color.fromRGBO(143, 148, 251, .6),
                                // Color.fromRGBO(r, g, b, opacity),
                              ])),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: AppColor.primaryWhite,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),),
                        SizedBox(height: 70),
                        FadeInUp(duration:Duration(milliseconds: 2000),child: Text(
                          "Forget Password?",
                          style: TextStyle(
                            color: Color.fromRGBO(143, 148, 251, 1),
                          ),
                        ),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
