import 'package:flutter/material.dart';
import 'ProdukDetail.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({super.key});

  @override
  State<ProdukForm> createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukTextController = TextEditingController();
  final _namaProdukTextController = TextEditingController();
  final _hargaProdukTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Input Produk'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHargaProduk(),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  _textboxKodeProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Kode Produk"),
      controller: _kodeProdukTextController, // Use the controller directly
    );
  }

  _textboxNamaProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Produk"),
      controller: _namaProdukTextController, // Use the controller directly
    );
  }

  _textboxHargaProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Harga"),
      controller: _hargaProdukTextController, // Use the controller directly
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String kodeProduk = _kodeProdukTextController.text;
        int hargaProduk = int.parse(_hargaProdukTextController.text);
        String namaProduk = _namaProdukTextController.text;
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => produkDetail(
              kodeProduk: kodeProduk,
              namaProduk: namaProduk,
              harga: hargaProduk,
            ),
          ),
        );
      },
      child: const Text('Simpan'),
    );
  }
}
