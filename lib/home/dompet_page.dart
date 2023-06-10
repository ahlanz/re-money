import 'package:flutter/material.dart';
import 'package:re_money/screen/tambah_dompet_page.dart';
import 'package:re_money/theme/theme.dart';

class DompetPage extends StatelessWidget {
  const DompetPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget topBar() {
      return AppBar(
        backgroundColor: primaryColor,
        toolbarHeight: 116,
        title: Text(
          'DOMPET',
          style: primaryTextStyle.copyWith(
              fontSize: 23, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      );
    }

    Widget body() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 21),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'BCA',
                    style: primaryTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  'Rp. 12.500.000 >',
                  style: primaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'UANG TUNAI',
                    style: primaryTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  'Rp. 50.000        >',
                  style: primaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'BNI',
                    style: primaryTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  'Rp. 2.500.000   >',
                  style: primaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'DANA',
                    style: primaryTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  'Rp. 0                  >',
                  style: primaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'GOPAY',
                    style: primaryTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  'Rp. 0                  >',
                  style: primaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'SHOPEE PAY',
                    style: primaryTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  'Rp. 0                  >',
                  style: primaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TambahDompet(),
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
      appBar: topBar(),
      body: body(),
    );
  }
}
