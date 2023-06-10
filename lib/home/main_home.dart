import 'package:flutter/material.dart';
import 'package:re_money/home/dompet_page.dart';
import 'package:re_money/home/grafik_page.dart';
import 'package:re_money/home/setting_page.dart';
import 'package:re_money/home/transaksi_home_page.dart';
import 'package:re_money/theme/theme.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(10),
        ),
        child: BottomNavigationBar(
          backgroundColor: primaryColor,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 20),
                child: index == 0
                    ? Image.asset('assets/icons/icon_transaksi_black.png')
                    : Image.asset(
                        'assets/icons/icon_transaksi.png',
                      ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 20),
                child: index == 1
                    ? Image.asset('assets/icons/icon_dompet_black.png')
                    : Image.asset(
                        'assets/icons/icon_dompet.png',
                      ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 20),
                child: index == 2
                    ? Image.asset('assets/icons/icon_grafik_black.png')
                    : Image.asset(
                        'assets/icons/icon_grafik.png',
                      ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 20),
                child: index == 3
                    ? Image.asset('assets/icons/icon_setting_black.png')
                    : Image.asset(
                        'assets/icons/icon_setting.png',
                      ),
              ),
              label: '',
            )
          ],
        ),
      );
    }

    Widget body() {
      switch (index) {
        case 0:
          return const TransaksiPage();
          // ignore: dead_code
          break;
        case 1:
          return const DompetPage();
          // ignore: dead_code
          break;
        case 2:
          return const GrafikPage();
          // ignore: dead_code
          break;
        case 3:
          return const SettingPage();
          // ignore: dead_code
          break;
        default:
          return const TransaksiPage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: customButtonNav(),
      body: body(),
    );
  }
}
