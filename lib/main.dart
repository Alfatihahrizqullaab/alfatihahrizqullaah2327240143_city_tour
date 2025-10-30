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
      body: SingleChildScrollView(
        child: Column(
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
                        ),
                      ),
                    )),
        
                  ],
                ),
        
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
                    child: Text("Explore, Enjoy, Experience.", style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                      child: Padding(
                          padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                          child: Text("Explore the charm of our city's hidden gems and embark on a journey todiscover the rich cultural heritage, breathtaking landscapes, and unique experiences thatawait you. From historic landmarks to vibrant markets and serene natural wonders, our city offers a tapestry of experiences that will captivate your senses. Join us in exploring the beautyof our city and create memories that will last a lifetime. Come and visit our city's treasurestoday",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                      )
                  )
                ],
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 50),
                    child: Image.asset("images/gambar4.jpg",
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
                    child: Text("Blue body of water.", style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),),
                  )
                ],
              ),
            ],
          ),
      ),
    );
  }
}
