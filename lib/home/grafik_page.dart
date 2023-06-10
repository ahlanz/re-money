import 'package:flutter/material.dart';
import 'package:re_money/theme/theme.dart';

class GrafikPage extends StatefulWidget {
  const GrafikPage({super.key});

  @override
  State<GrafikPage> createState() => _GrafikPageState();
}

class _GrafikPageState extends State<GrafikPage> {

  int index = 0;
  @override
  Widget build(BuildContext context) {
    
    PreferredSizeWidget topBar() {
      return AppBar(
        title: Text(
          'Grafik',
          style: primaryTextStyle.copyWith(
              fontSize: 23, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        toolbarHeight: 116,
        backgroundColor: primaryColor,
        elevation: 0,
      );
    }

    Widget pilihanKategori() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 0;
                });
              },
              child: Container(
                width: 106,
                height: 33,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: index == 0 ? primaryColor : backgroundColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.only(
                  top: 7,
                  bottom: 3,
                  left: 21,
                  right: 22,
                ),
                child: Text(
                  'Realtime',
                  style: primaryTextStyle.copyWith(
                      fontSize: 15, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 1;
                });
              },
              child: Container(
                width: 106,
                height: 33,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color:index == 1 ? primaryColor : backgroundColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.only(
                  top: 7,
                  bottom: 3,
                  left: 21,
                  right: 22,
                ),
                child: Text(
                  'Mingguan',
                  style: primaryTextStyle.copyWith(
                      fontSize: 15, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 2;
                });
              },
              child: Container(
                width: 106,
                height: 33,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: index == 2 ? primaryColor : backgroundColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.only(
                  top: 7,
                  bottom: 3,
                  left: 21,
                  right: 22,
                ),
                child: Text(
                  'Bulanan',
                  style: primaryTextStyle.copyWith(
                      fontSize: 15, fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget grafik() {
      return Center(
        child: Image.asset('assets/icons/icon_donut.png'),
      );
    }

    Widget tanggal() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Text(
              '01 Jun 2023 - 07 Jun 2023',
              style: primaryTextStyle.copyWith(
                  fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 17,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Pengeluaran',
                    style: primaryTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                ),
                Text(
                  'Rp. 250.000',
                  style: primaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w300),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Pemasukan',
                    style: primaryTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                ),
                Text(
                  'Rp. 5.000.000',
                  style: primaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w300),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Selisih',
                    style: primaryTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                ),
                Text(
                  'Rp. 4.750.000',
                  style: primaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w300),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 21),
        child: ListView(
          children: [
            pilihanKategori(),
            index == 0 ? grafik() : tanggal()
          ],
        ),
      );
    }

    return Scaffold(appBar: topBar(), body: content());
  }
}
