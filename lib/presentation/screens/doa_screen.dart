import 'package:bitaqwa_2/presentation/screens/doa_list_screen.dart';
import 'package:bitaqwa_2/presentation/widgets/doa_item.dart';
import 'package:bitaqwa_2/utils/color_app.dart';
import 'package:flutter/material.dart';

class DoaScreen extends StatelessWidget {
  const DoaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.white,
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
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              "assets/images/bg_header_dashboard_morning.png",
              fit: BoxFit.contain,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 12,
                  children: [
                    Doa_Item(
                      image: "assets/images/ic_doa_pagi_malam.png",
                      title: "Pagi & Malam",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DoaListScreen(
                              Category: "Pagi & Malam",
                            ),
                          ),
                        );
                      },
                    ),
                    Doa_Item(
                      image: "assets/images/ic_doa_rumah.png",
                      title: "Rumah",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DoaListScreen(
                              Category: "Rumah",
                            ),
                          ),
                        );
                      },
                    ),
                    Doa_Item(
                      image: "assets/images/ic_doa_makanan_minuman.png",
                      title: "Makanan & Minuman",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DoaListScreen(
                              Category: "Makanan & Minuman",
                            ),
                          ),
                        );
                      },
                    ),
                    Doa_Item(
                      image: "assets/images/ic_doa_perjalanan.png",
                      title: "Perjalanan",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DoaListScreen(
                              Category: "Perjalanan",
                            ),
                          ),
                        );
                      },
                    ),
                    Doa_Item(
                      image: "assets/images/ic_doa_sholat.png",
                      title: "Sholat",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DoaListScreen(
                              Category: "Sholat",
                            ),
                          ),
                        );
                      },
                    ),
                    Doa_Item(
                      image: "assets/images/ic_doa_etika_baik.png",
                      title: "Etika Baik",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DoaListScreen(
                              Category: "Etika Baik",
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
