import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
        backgroundColor: Colors.pink,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 4,
                  color: Colors.black,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 15,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.network('https://lh3.googleusercontent.com/a/ACg8ocLsZiVXH_ZRmhZNfjzH6YnwmxUzOMnGY8dliIwSf3VyfZTXRasThP1VUp-xKwF2SUvc1duQXe2rs_YjPLMnixSoJRDfpui-=s288-c-no',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30),
            Text('Mary Joy A.Bernales',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
            ),
            ),

            SizedBox(height: 30),
            Text('Bachelor of Science of Information Technology',
            style: TextStyle(
            fontSize:16,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
            ),
            ),
            SizedBox(height: 30),
            Text('Im Mary Joy A. Bernales my favorite color is rosepink',
            style: TextStyle(
            fontSize:16,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
