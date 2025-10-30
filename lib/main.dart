import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const HomeScreen(title: 'City Tour'),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("City Tour"),
      ),
      body: Column(
          children: [
            Padding(padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: ClipRRect(
                      child: Row(
                        children: [
                          Image.asset("images/gambar1.jpg",
                            height: 300,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 12,),
                          Image.asset("images/gambar2.jpg",
                            height: 300,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 12,),
                          Image.asset("images/gambar3.jpg",
                            height: 300,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 12,),
                          Image.asset("images/gambar3.jpg",
                            height: 300,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 12,),
                          Image.asset("images/gambar3.jpg",
                            height: 300,
                            width: 150,
                            fit: BoxFit.cover,
                          ),

                        ],
                      )
                      
                    ),
                    
                  ))
                ],
              ),
            )
          ],
        ),
    );
  }
}
