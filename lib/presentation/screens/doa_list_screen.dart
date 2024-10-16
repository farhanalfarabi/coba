// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bitaqwa_2/data/doa_data.dart';
import 'package:bitaqwa_2/presentation/screens/detail_doa_screen.dart';
import 'package:flutter/material.dart';

import 'package:bitaqwa_2/utils/color_app.dart';

class DoaListScreen extends StatelessWidget {
  final String Category;
  const DoaListScreen({
    Key? key,
    required this.Category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> doaList = getDoaList(Category);
    return Scaffold(
        backgroundColor: ColorApp.blue,
        appBar: AppBar(
          backgroundColor: ColorApp.primary,
          title: Text(
            "Doa-Doa",
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
        body: ListView.builder(
            itemCount: doaList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200]!,
                          blurRadius: 3.0,
                          spreadRadius: 1.0,
                        )
                      ]),
                  child: ListTile(
                    leading: Image.asset(doaList[index]["image"]!),
                    title: Text(
                      doaList[index]["title"]!,
                      style: TextStyle(fontFamily: "PoppinsMedium"),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailDoaScreen(
                            title: doaList[index]["title"]!,
                            arabicText: doaList[index]["arabicText"]!,
                            translation: doaList[index]["translation"]!,
                            reference: doaList[index]["reference"]!,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              );
            }));
  }
}
