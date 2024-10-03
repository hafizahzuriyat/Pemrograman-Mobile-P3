import 'package:flutter/material.dart';
import 'package:flutter_application_1/beranda.dart';
import 'sign.dart'; // Import halaman SignUpPage

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _tampil() {
    String username = _usernameController.text;
    String pass = _passwordController.text;

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Data Akun"),
            content: Text("Username: $username\nPassword: $pass"),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: const Color.fromARGB(255, 181, 177, 210),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Center the welcome back text
            Center(
              child: Column(
                children: const [
                  Text(
                    "Welcome Back!",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily:
                          'Roboto', // You can change this to any available font
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Enter your credentials to login",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontFamily: 'Lato', // Alternate font or just keep Roboto
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Username',
                hintText: 'Masukkan username Anda',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                hintText: 'Masukkan password Anda',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  // Aksi ketika "Forgot Password?" ditekan
                },
                child: const Text("Forgot Password?"),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _tampil();
                // Aksi ketika tombol login ditekan
              },
              child: const Text('Login'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                    255, 128, 117, 164), // Ubah warna background tombol
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                minimumSize: const Size(double.infinity, 50),
                padding: const EdgeInsets.symmetric(
                    horizontal: 50, vertical: 15), // Padding tombol
                shape: RoundedRectangleBorder(
                  // Membuat tombol dengan sudut melengkung
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    // Navigasi ke halaman sign-up
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage()),
                    );
                  },
                  child: const Text("Sign Up"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
