import 'package:ecommerce/core/manage_text.dart';
import 'package:ecommerce/core/manager_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/5839381422350125517.jpg'),
              ),
              Spacer(flex: 1,),
              //
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    manageText.textTitleOne,
                    style: TextStyle(color: ManagerColor.colorTilteOne),
                  ),
                  Text(
                    manageText.textTitleTwo,
                    style: TextStyle(color: ManagerColor.colorTilteTwo),
                  ),
                ],
              ),
              Spacer(flex: 8,),
              Icon(Icons.notifications,color: ManagerColor.colorTitleIcon,size: 32.sp,),
              Spacer(flex: 1,),
            ],
          );
  }
}