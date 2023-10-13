import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
  String? kodeProduk;
  String? namaProduk;
  int? harga;
  ProdukDetail(
      {required this.kodeProduk,
      required this.namaProduk,
      required this.harga,
      super.key});

  @override
  State<ProdukDetail> createState() => _produkDetailState();
}

class _produkDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produk Detail'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Kode Produk = ${widget.kodeProduk.toString()}'),
            Text('Nama Produk = ${widget.namaProduk.toString()}'),
            Text('Harga = ${widget.harga.toString()}'),
          ],
        ),
      ),
    );
  }
}
