import 'package:bitaqwa_2/utils/color_app.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget Header() {
      return Container(
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_header_dashboard_morning.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(12),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                    ),
                    child: Text(
                      "Assalaamu’alaikum farhan",
                      style: TextStyle(
                        fontFamily: "PoppinsMedium",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "Dzuhur",
              style: TextStyle(
                fontFamily: "PoppinsMedium",
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "12:01",
              style: TextStyle(
                fontFamily: "PoppinsBold",
                fontSize: 36,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_rounded,
                  color: Colors.red,
                  size: 14,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Karangpandan, Solo",
                  style: TextStyle(
                    fontFamily: "PoppinsRegular",
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget CardMenus() {
      return Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: ColorApp.primary,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, "doa"),
                child: Column(
                  children: [
                    Image.asset("assets/images/ic_menu_doa.png"),
                    Text(
                      "Doa-Doa",
                      style: TextStyle(
                        fontFamily: "PoppinsSemiBold",
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                children: [
                  Image.asset("assets/images/ic_menu_zakat.png"),
                  Text(
                    "Zakat",
                    style: TextStyle(
                      fontFamily: "PoppinsSemiBold",
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                children: [
                  Image.asset("assets/images/ic_menu_jadwal_sholat.png"),
                  Text(
                    "Jadwal Sholat",
                    style: TextStyle(
                      fontFamily: "PoppinsSemiBold",
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                children: [
                  Image.asset("assets/images/ic_menu_video_kajian.png"),
                  Text(
                    "Video Kajian",
                    style: TextStyle(
                      fontFamily: "PoppinsSemiBold",
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget Inspiration() {
      return Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Inspiration",
                style: TextStyle(
                  fontFamily: "PoppinsSemiBold",
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Image.asset("assets/images/img_inspiration.png"),
            SizedBox(
              height: 8,
            ),
            Image.asset("assets/images/img_inspiration.png"),
          ],
        ),
      );
    }

    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          Header(),
          CardMenus(),
          Inspiration(),
        ],
      ),
    ));
  }
}
