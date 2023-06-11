import 'package:flutter/material.dart';
import 'package:re_money/theme/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget topBar() {
      return AppBar(
        backgroundColor: primaryColor,
        toolbarHeight: 116,
        title: Text(
          'Profile',
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

    Widget inputNama() {
      return Container(
        width: double.infinity,
        height: 57,
        margin: const EdgeInsets.only(top: 43),
        padding: const EdgeInsets.only(
          top: 17,
          left: 21,
          bottom: 13,
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5)),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: 'Nama Anda',
              hintStyle: primaryTextStyle.copyWith(
                  fontSize: 18, fontWeight: FontWeight.w400),
              border: InputBorder.none),
        ),
      );
    }

    Widget inputEmail() {
      return Container(
        width: double.infinity,
        height: 57,
        margin: const EdgeInsets.only(top: 13),
        padding: const EdgeInsets.only(
          top: 17,
          left: 21,
          bottom: 13,
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5)),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: 'Email',
              hintStyle: primaryTextStyle.copyWith(
                  fontSize: 18, fontWeight: FontWeight.w400),
              border: InputBorder.none),
        ),
      );
    }

    Widget button() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding:
                  const EdgeInsets.only(top: 4, bottom: 3, left: 21, right: 15),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Berhasil disimpan'),
                        content: const Text('Mantap'),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Tutup'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  'Simpan',
                  style: primaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          children: [
            inputNama(),
            inputEmail(),
            button(),
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
