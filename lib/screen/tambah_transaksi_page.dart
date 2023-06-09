import 'package:flutter/material.dart';
import 'package:re_money/theme/theme.dart';

class TambahTransaksi extends StatelessWidget {
  const TambahTransaksi({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget topBar() {
      return AppBar(
        backgroundColor: primaryColor,
        toolbarHeight: 116,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: primaryText,
          ),
        ),
        title: Text(
          'Tambah Transaksi',
          style: primaryTextStyle.copyWith(
              fontSize: 18, fontWeight: FontWeight.w600),
        ),
      );
    }

    Widget content() {
      return Container();
    }

    return Scaffold(
      appBar: topBar(),
      body: content(),
    );
  }
}
