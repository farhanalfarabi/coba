// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bitaqwa_2/utils/color_app.dart';

class DetailDoaScreen extends StatelessWidget {
  final String title;
  final String arabicText;
  final String translation;
  final String reference;
  const DetailDoaScreen({
    Key? key,
    required this.title,
    required this.arabicText,
    required this.translation,
    required this.reference,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.primary,
        title: Text(
          title,
          style: TextStyle(fontFamily: "PoppinsMedium", color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          color: Colors.white,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/bg_detail_doa.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[200]!,
                    blurRadius: 5,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: Column(
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorApp.text,
                      fontFamily: "PoppinsBold",
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    arabicText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "PoppinsRegular",
                      fontSize: 24,
                      color: ColorApp.text,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    translation,
                    style: TextStyle(
                      fontFamily: "PoppinsRegular",
                      fontSize: 16,
                      color: Colors.blue[200]!,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    reference,
                    style: TextStyle(
                      fontFamily: "PoppinRegular",
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
