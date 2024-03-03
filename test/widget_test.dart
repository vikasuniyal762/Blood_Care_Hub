// // This is a basic Flutter widget test.
// //
// // To perform an interaction with a widget in your test, use the WidgetTester
// // utility in the flutter_test package. For example, you can send tap and scroll
// // gestures. You can also use WidgetTester to find child widgets in the widget
// // tree, read text, and verify that the values of widget properties are correct.
//
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:blood_care_hub/main.dart';
//
// void main() {
//   testWidgets('Login page UI test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(const InitizationOfApp());
//
//     // Verify that app title is displayed.
//     expect(find.text('Blood Care Hub'), findsOneWidget);
//
//     // Verify that email and password fields are displayed.
//     expect(find.byType(TextField), findsNWidgets(2));
//
//     // Verify that login button is displayed.
//     expect(find.text('Login'), findsOneWidget);
//
//     // Tap the login button and trigger a frame.
//     await tester.tap(find.text('Login'));
//     await tester.pump();
//
//     // Add more widget tests as needed to test the functionality.
//   });
//
//   testWidgets('Back button confirmation dialog test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(const InitizationOfApp());
//
//     // Tap the back button.
//     await tester.pageBack();
//
//     // Verify that the confirmation dialog is displayed.
//     expect(find.text('Are you sure?'), findsOneWidget);
//
//     // Tap the 'No' button in the dialog.
//     await tester.tap(find.text('No'));
//     await tester.pump();
//
//     // Verify that the dialog is dismissed and the app remains on the same screen.
//     expect(find.text('Are you sure?'), findsNothing);
//     expect(find.text('Blood Care Hub'), findsOneWidget);
//   });
// }
