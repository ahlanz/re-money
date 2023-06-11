import 'package:flutter/material.dart';
import 'package:re_money/theme/theme.dart';
import 'package:intl/intl.dart';

class TambahTransaksi extends StatefulWidget {
  const TambahTransaksi({super.key});

  @override
  State<TambahTransaksi> createState() => _TambahTransaksiState();
}

class _TambahTransaksiState extends State<TambahTransaksi> {
  //bikin variabel datetime untuk bikin dinamis text tanggal
  DateTime _dateTime = DateTime.now();

  // fungsi untuk menampilkan tanggal
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ).then((value) {
      if (value != null) {
        setState(() {
          _dateTime = value;
        });
      }
    });
  }

  // fungsi untuk merapihkan tulisan format tanggal hari,tanggal hari,bulan dan tahun
  String _formatDateTime(DateTime dateTime) {
    final formattedDate =
        DateFormat('EEEE, dd MMMM yyyy', 'id_ID').format(dateTime);
    return formattedDate;
  }

  //bikin untuk pilihan dropDown tunai
  String? pilihTunai;
  List listItem = ['Rp25.000', 'Rp30.000'];

  // pilihan untuk makan hari
  String? pilihMakan;
  List listMakan = ['Makan Siang', 'Makan malam'];

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

    // Widget untuk pilihan tanggal,ini dipisah karna biar lebih rapih untuk dibaca
    Widget pilihanTanggal() {
      return Container(
        width: double.infinity,
        height: 57,
        margin: const EdgeInsets.only(top: 13),
        padding: const EdgeInsets.only(
          top: 18,
          left: 19,
          bottom: 12,
          right: 15,
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          children: [
            Expanded(
              child: Text(
                _formatDateTime(_dateTime),
                style: primaryTextStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
            GestureDetector(
              onTap: _showDatePicker,
              child: const Icon(
                Icons.date_range,
                color: Colors.black,
              ),
            ),
          ],
        ),
      );
    }

    // Widget untuk pilihan tunai,ini dipisah karna biar lebih rapih untuk dibaca
    Widget pilihanTunai() {
      return Container(
        width: double.infinity,
        height: 57,
        margin: const EdgeInsets.only(top: 13),
        padding: const EdgeInsets.only(
          top: 18,
          left: 19,
          bottom: 12,
          right: 15,
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Uang Tunai',
                style: primaryTextStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
            DropdownButton(
              hint: const Text('Rp'),
              underline: const SizedBox(),
              items: listItem.map((valueItem) {
                return DropdownMenuItem(
                  value: valueItem,
                  child: Text(valueItem),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  pilihTunai = newValue as String?;
                });
              },
              value: pilihTunai,
            )
          ],
        ),
      );
    }

    // Widget untuk pilihan makan,ini dipisah karna biar lebih rapih untuk dibaca
    Widget pilihanMakan() {
      return Container(
        width: double.infinity,
        height: 57,
        margin: const EdgeInsets.only(top: 13),
        padding: const EdgeInsets.only(
          top: 18,
          left: 19,
          bottom: 12,
          right: 15,
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Makanan & Minuman',
                style: primaryTextStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
            DropdownButton(
              underline: const SizedBox(),
              items: listMakan.map((valueItem) {
                return DropdownMenuItem(
                  value: valueItem,
                  child: Text(valueItem),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  pilihMakan = newValue as String?;
                });
              },
              value: pilihMakan,
            )
          ],
        ),
      );
    }

    Widget keterangan() {
      return Container(
        width: double.infinity,
        height: 57,
        margin: const EdgeInsets.only(top: 13),
        padding: const EdgeInsets.only(
          top: 18,
          left: 19,
          bottom: 12,
          right: 15,
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5)),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: 'Keterangan (opsional)',
              hintStyle: primaryTextStyle.copyWith(
                  fontSize: 18, fontWeight: FontWeight.w400),
              border: InputBorder.none),
        ),
      );
    }

    Widget button() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 13),
        child: TextButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(color: primaryColor),
                        width: double.infinity,
                        padding: const EdgeInsets.only(
                            top: 16, bottom: 10, left: 26),
                        child: Text(
                          'Pilih Dompet',
                          style: primaryTextStyle.copyWith(
                              fontSize: 23, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 100,
                                height: 68,
                                margin: const EdgeInsets.only(top: 5),
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 4,
                                  left: 26,
                                  right: 23,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all()),
                                child: SizedBox(
                                  width: 51,
                                  child: Text(
                                    'Uang\nTunai',
                                    style: primaryTextStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Container(
                                width: 107,
                                height: 68,
                                margin: const EdgeInsets.only(top: 5),
                                padding: const EdgeInsets.only(
                                  top: 22,
                                  bottom: 19,
                                  left: 24,
                                  right: 21,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all()),
                                child: SizedBox(
                                  width: 55,
                                  child: Text(
                                    'Gopay',
                                    style: primaryTextStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              )
                            ],
                          ),
                          // untuk kolom bca dan dana
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 100,
                                height: 68,
                                margin: const EdgeInsets.only(top: 5),
                                padding: const EdgeInsets.only(
                                  top: 21,
                                  bottom: 20,
                                  left: 33,
                                  right: 10,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all()),
                                child: SizedBox(
                                  width: 51,
                                  child: Text(
                                    'BCA',
                                    style: primaryTextStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Container(
                                width: 107,
                                height: 68,
                                margin: const EdgeInsets.only(top: 5),
                                padding: const EdgeInsets.only(
                                  top: 22,
                                  bottom: 19,
                                  left: 24,
                                  right: 21,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all()),
                                child: SizedBox(
                                  width: 55,
                                  child: Text(
                                    'DANA',
                                    style: primaryTextStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              )
                            ],
                          ),
                          // untuk kolom BNI dan Shoppeepay
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 100,
                                height: 68,
                                margin: const EdgeInsets.only(top: 5),
                                padding: const EdgeInsets.only(
                                  top: 21,
                                  bottom: 20,
                                  left: 33,
                                  right: 10,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all()),
                                child: SizedBox(
                                  width: 51,
                                  child: Text(
                                    'BNI',
                                    style: primaryTextStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Container(
                                width: 100,
                                height: 68,
                                margin: const EdgeInsets.only(top: 5),
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 4,
                                  left: 22,
                                  right: 13,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all()),
                                child: SizedBox(
                                  width: 55,
                                  height: 54,
                                  child: Text(
                                    'ShopeePay',
                                    style: primaryTextStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 100,
                height: 34,
                padding: const EdgeInsets.only(
                    top: 4, bottom: 3, left: 21, right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: primaryColor,
                ),
                child: Text(
                  'simpan',
                  style: primaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      );
    }

    // Widget untuk menampilkan semua widget yang sudah disusun
    Widget body() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 22),
        child: ListView(
          children: [
            pilihanTanggal(),
            pilihanTunai(),
            pilihanMakan(),
            keterangan(),
            button(),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: topBar(),
      body: body(),
    );
  }
}
