import 'package:ecommerce/core/manage_text.dart';
import 'package:ecommerce/widget/list_tile.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          manageText.textappbarDetail,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/34810b64-bd13-41d2-ab06-ea0a1ff22fe8-removebg-preview (1).png',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              manageText.textBodyDetail,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text(
              manageText.textDetailItem,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Spacer(flex: 1),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star_border),
              Spacer(flex: 4),
              Icon(
                Icons.add_circle_outline,
                color: Color(0xff27548A),
                size: 35,
              ),
              Spacer(flex: 1),
            ],
          ),
          SizedBox(height: 15),
          listTile(),
          SizedBox(height: 15),
          listTile(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xffF7AD45),
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 4,
              blurRadius: 6,
              offset: Offset(2, 0),
            ),
          ],
        ),
        child: Row(
          children: [
            Spacer(flex: 1),
            Text(
              manageText.textValidItem,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            Spacer(flex: 6),
            Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  manageText.textBottomDetail,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
