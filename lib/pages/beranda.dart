import 'package:flutter/material.dart';
// import 'package:pertemuan5/pages/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
    
    void _onItemTap(int index) {
      setState(() {
        _index = index;
    });
  }

  static const List<Widget> _pages = [
  Icon(
    Icons.home,
    size: 100,
  ),
  Icon(
    Icons.chat_bubble,
    size: 100,
  ),
  Icon(
    Icons.call,
    size: 100,
  ),
  Icon(
    Icons.camera,
    size: 100,
  ),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('https://picsum.photos/200/300'),
              ),
              accountName: Text("Praktikum Mobile"),
              accountEmail: Text('mobile@gmail.com'),
              decoration: BoxDecoration(color: Colors.lightBlueAccent),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/halaman2');
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Cari'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.camera),
              title: const Text('Kamera'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Account'),
              onTap: () {
                Navigator.pushNamed(context, '/halaman3');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Halaman Beranda'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/halaman3');
            },
            icon: const Icon(
              Icons.person_outline,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/halaman2');
            },
            icon: const Icon(
              Icons.settings,
              size: 30,
            ),
          ),
        ],
      ),
     body: Center(
      child: _pages.elementAt(_index),
      ),
      // Center(
      //   child: ElevatedButton(
      //     child: const Text('Pindah Screen'),
      //     onPressed: () {
      //       // Navigator.push(
      //       //   context,
      //       //   MaterialPageRoute(
      //       //     builder: (context) {
      //       //       return Settings(); // Pastikan SecondScreen sudah didefinisikan
      //       //     },
      //       //   ),
      //       // );
      //       Navigator.pushNamed(context, '/halaman2');
      //       // Navigator.pushReplacement<void, void>(
      //       //   context,
      //       //   MaterialPageRoute<void>(
      //       //   builder: (BuildContext context) => const Settings(),
      //       //   ),
      //       // );
      //     },
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.blueAccent,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.black,
      currentIndex: _index,
      onTap: _onItemTap,
      items: const [
          BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
          BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble),
          label: "Chat",
        ),
          BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: "Telepon",
        ),
          BottomNavigationBarItem(
          icon: Icon(Icons.camera_alt_outlined),
          label: "Camera",
          ),
        ],
      ),
    );
  }
}
