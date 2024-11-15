import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Item Service Coffee'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(40, 30, 40, 60),
              decoration: BoxDecoration(
                color: Colors.brown[50],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(180),
                  bottomRight: Radius.circular(180),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.brown,
                    blurRadius: 6,
                    offset: Offset(1, 3),
                  ),
                ],
              ),
              child: Column(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/image/Coffee.jpg",
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16),
                Text('Caffè Latte',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown[900])),
                const SizedBox(height: 20),
                const Text(
                  'A caffè latte is simply a shot or two of bold, tasty espresso with fresh, sweet steamed milk over it.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 30),
                TextButton(
                    onPressed: () {
                      print('Explore More');
                    },
                    style: ButtonStyle(padding: WidgetStateProperty.resolveWith(
                        (Set<WidgetState> states) {
                      return const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 16);
                    }), backgroundColor: WidgetStateProperty.resolveWith(
                        (Set<WidgetState> states) {
                      return Colors.brown[700];
                    }), foregroundColor: WidgetStateProperty.resolveWith(
                        (Set<WidgetState> states) {
                      return Colors.white;
                    }), shape: WidgetStateProperty.resolveWith(
                        (Set<WidgetState> states) {
                      return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      );
                    })
                  ),
                  child: const Text('Explore Now'),
                 )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
