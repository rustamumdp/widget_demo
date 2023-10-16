import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WidgetDemo(),
    );
  }
}
class WidgetDemo extends StatelessWidget {
  const WidgetDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Demo'),
      ),
      body: const Column(
        children: [
          TopContainer(),
          // ElevatedButton
          MiddleButton(),
          // Row
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Text('Rating: 4.5'),
            ],
          ),
          // Image
          BottomImage(),
        ],
      ),
    );
  }
}
class BottomImage extends StatelessWidget {
  const BottomImage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Image.network('https://picsum.photos/id/7/300/200',
        width: 200,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}
class MiddleButton extends StatelessWidget {
  const MiddleButton({
    super.key,
  });
  void _pushButton() {
    print('=====> Tombol ditekan.');
  }
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _pushButton,
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Text('Tombol Elevated'),
      ),
    );
  }
}
class TopContainer extends StatelessWidget {
  const TopContainer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Ini adalah contoh penggunaan Container Rustam',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
  }