// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Doa_Item extends StatelessWidget {
  final String image;
  final String title;
  final Function onTap;
  const Doa_Item({
    Key? key,
    required this.image,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(image),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                title,
                style: TextStyle(fontFamily: "PoppinsMedium"),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
