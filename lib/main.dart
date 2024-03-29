
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'Widget_Screen/SafeHome_Widget/safehome_controller.dart';
import 'app.dart';
import 'data/repositories/authentication-repository.dart';
import 'firebase_options.dart';


void main() async{
  ///---WIDGET BINDING
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();


  ///----AWAIT SPLASH UNTIL ITEM LOAD----
  FlutterNativeSplash.preserve(widgetsBinding:widgetsBinding);


  ///----INITIALIZATION FIREBASE AND AUTHENTICATION REPOSITORY----
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
      (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );

  await FirebaseAppCheck.instance.activate(
    webProvider:ReCaptchaV3Provider("recaptcha-v3-site-key"),
    androidProvider: AndroidProvider.debug,

    // playintegrity
  );


  runApp(const App());
  Get.put(SafeHomeController());
}


// this code for the calll send
//
// void _makeCall(String phoneNumber) async {
//   try {
//     const platform = MethodChannel('flutter.native/helper');
//     await platform.invokeMethod('makeCall', {"phoneNumber": phoneNumber});
//   } on PlatformException catch (e) {
//     print("Failed to make call: '${e.message}'.");
//   }
// }
