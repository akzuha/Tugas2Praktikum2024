import 'package:flutter/material.dart';
import '/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.teal[50], // Light background color
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _textboxNama(),
            const SizedBox(height: 20), // Spacing
            _textboxNIM(),
            const SizedBox(height: 20),
            _textboxTahun(),
            const SizedBox(height: 40),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  Widget _textboxNama() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Nama",
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.white,
      ),
      controller: _namaController,
    );
  }

  Widget _textboxNIM() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "NIM",
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.white,
      ),
      controller: _nimController,
    );
  }

  Widget _textboxTahun() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        labelText: "Tahun Lahir",
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.white,
      ),
      controller: _tahunController,
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(15), backgroundColor: Colors.teal, // Button background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
      ),
      onPressed: () {
        String nama = _namaController.text;
        String nim = _nimController.text;
        int tahun = int.parse(_tahunController.text);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TampilData(nama: nama, nim: nim, tahun: tahun),
        ));
      },
      child: const Text(
        'Simpan',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
