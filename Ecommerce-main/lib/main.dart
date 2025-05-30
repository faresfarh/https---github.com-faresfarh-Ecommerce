import 'package:device_preview/device_preview.dart';
import 'package:ecommerce/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
     DevicePreview(
        builder: (context) =>  Ecommerce()
      
      ),
   );
}

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, child) {
        return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
      },
    );
  }
}



