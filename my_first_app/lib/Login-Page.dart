import 'package:flutter/material.dart';
import 'package:my_first_app/main.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
class WidgetApp extends StatefulWidget {
  const WidgetApp({Key? key}) : super(key: key);
  @override
  State<WidgetApp> createState() => _WidgetAppState();}

class _WidgetAppState extends State<WidgetApp>{
  String dropdownvalue = 'Select College';

  // List of items in our dropdown menu
  var items = [
    'Select College',
    'ABC College',
    'PQR College',
    'XYZ College',
  ];
  bool? isChecked = false;
  final myDecorateField = InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade700),
        borderRadius: BorderRadius.circular(10)
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red)
      )
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: SingleChildScrollView(
              child: Column(
                  children: [
                    SizedBox(height: 80,),
                    Container(
                      height: 100,
                      width: 100,
                      child: CircleAvatar(

                        backgroundImage: AssetImage('asset/images/img_5.png'),
                      ),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                      height: 50,
                      child: TextField(
                          decoration: myDecorateField.copyWith(
                            hintText: 'First Name',
                            prefixIcon: Icon(Icons.person)
                          ),
                        ),
                    ),

                    SizedBox(height: 20,),
                     SizedBox(
                       height: 50,
                       child: TextField(
                          decoration: myDecorateField.copyWith(
                            hintText: 'Second Name',
                            prefixIcon: Icon(Icons.person)
                          ),
                        ),
                     ),

                    SizedBox(height: 20,),
                    SizedBox(
                      height: 50,
                      child: TextField(
                          decoration: myDecorateField.copyWith(
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.email)
                          ),
                        ),
                    ),

                    SizedBox(height: 20,),
                    Container(
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                          color: Colors.grey.shade700,
                      ),
                      ),
                      child: Row(
                        children: [
                           SizedBox(width: 10,),
                          Icon(Icons.school_rounded, color: Colors.grey.shade600,),
                          SizedBox(width: 10,),
                          DropdownButton(
                            value: dropdownvalue,
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            isExpanded: true,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },

                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20,),
                    SizedBox(height: 50,
                      child: TextField(
                        obscureText: true,
                          decoration: myDecorateField.copyWith(
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.key)
                          ),
                        ),
                    ),

                    SizedBox(height: 20,),
                    SizedBox(height: 50,
                      child: TextField(
                        obscureText: true,
                          decoration: myDecorateField.copyWith(
                            hintText: 'Confirm Password',
                            prefixIcon: Icon(Icons.key)
                          ),
                        ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 70),
                          child: Text('Accept Newsletter', style: TextStyle(fontSize: 17, color: Colors.black),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Checkbox(value: isChecked,
                            activeColor: Colors.red,
                            tristate: true,
                            onChanged: (newBool){
                            setState((){
                              isChecked = newBool;
                            });
                          },),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    SizedBox(
                      height: 50,
                      width: 330,
                      child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                      },
                       style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100))
                       ),
                       child: Text('Sign Up', style: TextStyle(fontSize: 20),)),
                    ),
                  ],
                ),
            ),
          ),
          )
    );}}