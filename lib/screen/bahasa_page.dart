import 'package:flutter/material.dart';
import 'package:re_money/theme/theme.dart';

class BahasaPage extends StatelessWidget {
  const BahasaPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget topBar() {
      return AppBar(
        backgroundColor: primaryColor,
        toolbarHeight: 116,
        title: Text(
          'Bahasa',
          style: primaryTextStyle.copyWith(
              fontSize: 23, fontWeight: FontWeight.w600),
        ),
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
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 21, vertical: 34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bahasa  Indonesia',
              style: primaryTextStyle.copyWith(
                  fontSize: 18, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 13,
            ),
            Text(
              'English',
              style: primaryTextStyle.copyWith(
                  fontSize: 18, fontWeight: FontWeight.w300),
            ),
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
