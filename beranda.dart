import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        AssetImage('assets/profile.jpg'), // Gambar profil
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Username',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Fungsi logout
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // 2 kolom dalam grid
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: <Widget>[
            _buildCard(
              icon: Icons.search,
              title: 'Pencarian Produk',
              color: Colors.blueAccent,
            ),
            _buildCard(
              icon: Icons.local_offer,
              title: 'Promo & Penawaran Spesial',
              color: Colors.redAccent,
            ),
            _buildCard(
              icon: Icons.favorite,
              title: 'Favorite',
              color: Colors.pinkAccent,
            ),
            _buildCard(
              icon: Icons.shopping_cart,
              title: 'Keranjang Belanja',
              color: Colors.orange,
            ),
            _buildCard(
              icon: Icons.notifications,
              title: 'Notifikasi',
              color: Colors.blue,
            ),
            _buildCard(
              icon: Icons.help,
              title: 'Bantuan',
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membuat Card widget
  Widget _buildCard({IconData? icon, String? title, Color? color}) => Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: InkWell(
          onTap: () {
            // Aksi saat card ditekan
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon, size: 50, color: color),
              SizedBox(height: 10),
              Text(
                title!,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );
}
