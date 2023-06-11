import 'package:flutter/material.dart';
import 'package:re_money/theme/theme.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget topBar() {
      return AppBar(
        backgroundColor: primaryColor,
        toolbarHeight: 100,
        title: Text(
          'Setting',
          style: primaryTextStyle.copyWith(
              fontSize: 23, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 28),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/icons/icon_money.png'),
                const SizedBox(
                  width: 11,
                ),
                Text(
                  'Tampilkan Angka Desimal',
                  style: primaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 29,
            ),
            Row(
              children: [
                Image.asset('assets/icons/icon_notifikasi.png'),
                const SizedBox(
                  width: 24,
                ),
                Text(
                  'Pengingat',
                  style: primaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 36,
            ),
            Row(
              children: [
                Image.asset('assets/icons/icon_warna.png'),
                const SizedBox(
                  width: 24,
                ),
                Text(
                  'Warna',
                  style: primaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 26,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/bahasa');
              },
              child: SizedBox(
                child: Row(
                  children: [
                    Image.asset('assets/icons/icon_bahasa.png'),
                    const SizedBox(
                      width: 24,
                    ),
                    Text(
                      'Bahasa',
                      style: primaryTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: SizedBox(
                child: Row(
                  children: [
                    Image.asset('assets/icons/icon_user.png'),
                    const SizedBox(
                      width: 24,
                    ),
                    Text(
                      'Profile',
                      style: primaryTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: topBar(),
      body: content(),
    );
  }
}
