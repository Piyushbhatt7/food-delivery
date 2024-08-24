import 'package:flutter/material.dart';
import 'package:food_delivery/pages/signup.dart';
import 'package:food_delivery/widget/widget_support.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
    Widget build(BuildContext context) {
      return Scaffold(
      
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/2.5,
                    decoration: BoxDecoration(gradient: LinearGradient(
                  
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                      Color(0xFFff5c30),
                      Color(0xFFe74b1a),
                    ])),
                  ),
                  
               Container(
                 margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3,),
                 height: MediaQuery.of(context).size.height/2,
                 width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))),
                child: Text(""),
               ),
                  
               Container(
                padding: EdgeInsets.symmetric(vertical: 40.0),
                margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
              
                 child: Column(
                   children: [
                    Center(child: Image.asset("images/logo.png",  width: MediaQuery.of(context).size.width/1.5, fit: BoxFit.cover,)),
                  
                   SizedBox(height: 50.0,),
                    Material(
                      elevation: 5.0,
                       borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        width: MediaQuery.of(context).size.width,
                         height: MediaQuery.of(context).size.height/2.1,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
                        child: Column(
                          children: [
                            SizedBox(height: 30.0,),
                            Text("Login", style: AppWidget.HeaderlineTextFeildStyle()),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'E-mail', hintStyle: AppWidget.LightTextFeildStyle(), suffixIcon: Icon(Icons.email_outlined)
                              ),
                            ),
                  
                             SizedBox(height: 20.0,),
                  
                           TextField(
                            obscureText: true,
                           decoration: InputDecoration(
                           hintText: 'Password', hintStyle: AppWidget.LightTextFeildStyle(), suffixIcon: Icon(Icons.password_outlined)
                              ),
                            ),
                  
                            SizedBox(height: 20.0,),
                            
                            Container(
                              // height: MediaQuery.of(context).size.height/20,
                             // padding: EdgeInsets.symmetric(vertical: 5.0),
                              alignment: Alignment.topRight,
                              child: Text(
                                "Forget Password?", style: AppWidget.semiBoldTextFeildStyle(),)),
                               SizedBox(height: 40,),
                  
                                Material(
                                  elevation: 5.0,
                                   borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                     padding: EdgeInsets.symmetric(vertical: 15.0),
                                    width: 500,
                                    decoration: BoxDecoration(color: Color(0xffff5722), borderRadius: BorderRadius.circular(20)),
                                   
                                    child: Center(
                                      child: Text(
                                        "LOGIN", 
                                        style: TextStyle(
                                          color: Colors.white, 
                                          fontSize: 18.0, fontFamily: 
                                          "Poopins", 
                                          fontWeight: FontWeight.bold),)),
                                  ),
                                ), 
                          ],
                        ),
                      ),
                    ),

                     SizedBox(height: 70.0,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        "Don't have an account? Sign Up",
                         style: AppWidget.semiBoldTextFeildStyle(),))
                   ],
                 ),
               ) 
                ],
              ),
            ),
          ),
        ),
      );
    }

}