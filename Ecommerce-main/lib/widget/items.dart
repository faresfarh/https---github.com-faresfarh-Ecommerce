import 'package:ecommerce/core/manage_text.dart';
import 'package:ecommerce/core/manager_color.dart';
import 'package:ecommerce/views/details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DetailsPage();
              },
            ),
          );
        },
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ManagerColor.colorItem,
                ),
                //
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/34810b64-bd13-41d2-ab06-ea0a1ff22fe8-removebg-preview (1).png',
                      ),
                    ),
                    Text(
                      manageText.textFNItem,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.w),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            manageText.textSNItem,
                            style: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          manageText.textValidItem,
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: ManagerColor.colorValidItem,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.w,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(top: 20, right: 15, child: Icon(Icons.favorite_border)),
          ],
        ),
      ),
    );
  }
}
