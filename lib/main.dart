import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
                IconButton(icon: Icon(Icons.extension), onPressed: () {}),
              ],
            ),
            SizedBox(height: 37),
            Text.rich(
              TextSpan(
                text: "Welcome,",
                style: TextStyle(fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: "\nShatlyk",
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                prefix: Icon(Icons.search, size: 18),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Search",
              ),
            ),
            SizedBox(height: 80),
            Text(
              "Saved Places",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 300,
              child: GridView.count(
                padding: EdgeInsets.zero,
                crossAxisCount: 2,
                childAspectRatio: 1.491,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  for (var country in countries)
                  Image.asset('assets/images/$country.png')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final countries = ['japan', 'barcelona', 'greece', 'rome'];
