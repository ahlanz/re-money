import 'package:flutter/material.dart';
import 'package:re_money/screen/tambah_transaksi_page.dart';
import 'package:re_money/theme/theme.dart';

class TransaksiPage extends StatelessWidget {
  const TransaksiPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget textRow() {
      return Container(
        margin: const EdgeInsets.only(top: 31),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.keyboard_arrow_left),
            const SizedBox(
              width: 18,
            ),
            Text(
              'Jum, 09 Jun 2023',
              style: primaryTextStyle.copyWith(
                  fontSize: 18, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              width: 18,
            ),
            const Icon(Icons.keyboard_arrow_right),
            const SizedBox(
              width: 18,
            ),
            Image.asset(
              'assets/icons/icon_refresh.png',
              width: 18,
            )
          ],
        ),
      );
    }

    Widget topBar() {
      return Stack(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(color: backgroundColor),
          ),
          Container(
            width: double.infinity,
            height: 116,
            decoration: BoxDecoration(color: primaryColor),
            child: Column(
              children: [
                textRow(),
              ],
            ),
          ),
          Positioned(
            top: 70,
            left: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              width: 380,
              height: 100,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  // Note: Pemasukan
                  Column(
                    children: [
                      Text(
                        'Pemasukan',
                        style: primaryTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Rp. 0 ',
                        style: primaryTextStyle.copyWith(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  // Note: Pngeluaran
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Text(
                        'Pengeluaran',
                        style: primaryTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Rp. 200.000 ',
                        style: primaryTextStyle.copyWith(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  // Note: Selisih
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Text(
                        'Selisih',
                        style: primaryTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Rp. 200.000 ',
                        style: primaryTextStyle.copyWith(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      );
    }

    Widget belanjaBulanan() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Belanja Bulanan',
                style: primaryTextStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                'Perlengkapan Mandi',
                style: primaryTextStyle.copyWith(
                    fontSize: 13, fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Text(
            '-Rp. 150.000>',
            style: primaryTextStyle.copyWith(
                fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ],
      );
    }

    Widget belanjaMakan() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Makan & Minum',
                style: primaryTextStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                'Makan Siang',
                style: primaryTextStyle.copyWith(
                    fontSize: 13, fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Text(
            '-Rp. 25.000  >',
            style: primaryTextStyle.copyWith(
                fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ],
      );
    }

    Widget body() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            belanjaBulanan(),
            const SizedBox(
              height: 14,
            ),
            belanjaMakan(),
            const SizedBox(
              height: 14,
            ),
            belanjaMakan(),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        children: [topBar(), body()],
      );
    }

    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
             Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TambahTransaksi(),
            ),
          );
          },
          backgroundColor: primaryColor,
          child: Icon(
            Icons.add,
            color: secondaryColor,
          ),
        ),
        backgroundColor: backgroundColor,
        body: content(),
      ),
    );
  }
}
