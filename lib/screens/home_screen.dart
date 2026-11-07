import 'package:flutter/material.dart';

import 'user_list_screen.dart';

/// Halaman utama aplikasi.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RPL & Keamanan Kode'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.security, size: 72, color: Colors.deepPurple),
              const SizedBox(height: 16),
              const Text(
                'Praktikum Pertemuan 6',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Repository pattern, .env, dan validasi input',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const UserListScreen()),
                  );
                },
                icon: const Icon(Icons.people),
                label: const Text('Lihat Daftar Pengguna'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
