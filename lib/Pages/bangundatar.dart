import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Controllers/bangundatar_controller.dart';
import '../Blocs/bangundatar_bloc.dart';
import '../States/bangundatar_state.dart';

class BangunDatarPage extends StatefulWidget {
  const BangunDatarPage({super.key});

  @override
  State<BangunDatarPage> createState() => _BangunDatarPageState();
}

class _BangunDatarPageState extends State<BangunDatarPage> {
  late final BangunDatarController controller;

  @override
  void initState() {
    super.initState();
    controller = BangunDatarController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Persegi Panjang")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Bagian atas: input, tombol, hasil
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: controller.panjangController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: "Panjang",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: controller.lebarController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: "Lebar",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => controller.hitungLuas(context),
                        child: const Text("Hitung Luas"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => controller.hitungKeliling(context),
                        child: const Text("Hitung Keliling"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                BlocBuilder<BangunDatarBloc, BangunDatarState>(
                  builder: (context, state) {
                    return Text(
                      "Hasil: ${state.hasil.toString()}",
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
              ],
            ),
            // Tombol reset di bawah
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: () => controller.reset(context),
                child: const Text(
                  "Reset",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
