import 'package:ecommerce/core/manage_text.dart';
import 'package:ecommerce/core/manager_color.dart';
import 'package:ecommerce/main.dart';
import 'package:ecommerce/widget/AppbarHome.dart';
import 'package:ecommerce/widget/items.dart';
import 'package:ecommerce/widget/list_image_horiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ManagerColor.colorG,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: ManagerColor.colorG,
          title: Appbar(),
        ),
        body: Container(
          // width: 1000,
          // height: 1000,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SizedBox(
                  width: 400,
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: ManagerColor.colorSearch,
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Row(
                      children: [
                        Spacer(flex: 1),
                        Text(
                          manageText.textSearch,
                          style: TextStyle(fontSize: 23),
                        ),
                        Spacer(flex: 7),
                        Icon(
                          Icons.search,
                          size: 32,
                          color: ManagerColor.colorG,
                        ),
                        Spacer(flex: 1),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 35,
                child: Row(
                  children: [
                    Spacer(flex: 1),
                    Text(
                      manageText.textOffers,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(flex: 6),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                    Spacer(flex: 1),
                  ],
                ),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 100,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListImage(images: 'assets/416.jpg'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 35,
                child: Row(
                  children: [
                    Spacer(flex: 1),
                    Text(
                      manageText.textPopular,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(flex: 6),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                    Spacer(flex: 1),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) => GridView.count(
                            crossAxisCount: 2,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            childAspectRatio: 0.75,
                            children: [
                              Item(),
                              Item(),
                            ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
