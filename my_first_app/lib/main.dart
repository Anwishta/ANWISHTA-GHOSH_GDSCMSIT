import 'package:flutter/material.dart';
import 'Login-Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();}

class _MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              child: CircleAvatar(
                backgroundImage: AssetImage('asset/images/img.png'),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'Enter Email',
                      prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.key),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Builder(
              builder: (context) {
                return SizedBox(
                  width: 330,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context){
                        return WidgetApp();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)
                      )
                    ),
                    child: Text("Login", style: TextStyle(fontSize: 20),),
                  ),
                );
              },
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                const SizedBox(width: 10,),
                Text("SignUp", style: TextStyle(color: Colors.red),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 300),
              child: Container(
                height: 70,
                width: 200,
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(35), bottomLeft: Radius.circular(35)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade700,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    )
                  ]
                ),
                
                child: Padding(
                  padding: const EdgeInsets.only(right: 18, bottom: 8),
                  child: CircleAvatar(

                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),

                    child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Color.fromARGB(255, 244, 133, 6),
                      backgroundImage: AssetImage('asset/images/img_4.png'),
                    ),

                  ),
                ),
              ),
            )
          ],
        ),

      ),
    ));
  }
}
