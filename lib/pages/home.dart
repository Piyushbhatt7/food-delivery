import 'package:flutter/material.dart';
import 'package:food_delivery/pages/details.dart';
import 'package:food_delivery/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool icecream = false, pizza = false, burger = false, salad = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        margin: EdgeInsets.only(top: 50.0, left:20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Row(
    
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Hello Piyush,", style:AppWidget.boldTextFeildStyle()
            ),
             Container(
              margin: EdgeInsets.only(right: 20.0),
              padding: EdgeInsets.all(3),
          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10) ),
          child: Icon(Icons.shopping_cart_outlined, color: Colors.white,),
        ),
          ],
        ),

        SizedBox(height: 20.0,),

         Text(
          "Delicious Food",
           style:AppWidget.HeaderlineTextFeildStyle(),
            ),

          Text(
          "Discover and Get Great Food",
           style:AppWidget.LightTextFeildStyle(),
            ),

            SizedBox(height: 20.0,),

          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: showItem()),
          SizedBox(height: 25.0,),
          
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Details()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                      
                          Image.asset("images/salad2.png", height: 120, width: 120, fit: BoxFit.cover,),
                          Text("Veggies Salad", style: AppWidget.boldTextFeildStyle(),),
                          SizedBox(height: 5.0),
                           Text("Fresh and Healthy", style: AppWidget.LightTextFeildStyle(),),
                           SizedBox(height: 5.0),
                           Text("\$25", style: AppWidget.boldTextFeildStyle(),)
                        ],) ,
                      ),
                    ),
                  ),
                ),

 
                SizedBox(width: 15.0,),

                 Container(
                  margin: EdgeInsets.all(4),
                   child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                    
                        Image.asset("images/salad2.png", height: 120, width: 120, fit: BoxFit.cover,),
                        Text("Mix Veg Salad", style: AppWidget.boldTextFeildStyle(),),
                        SizedBox(height: 5.0),
                         Text("Spicy Onion", style: AppWidget.LightTextFeildStyle(),),
                         SizedBox(height: 5.0),
                         Text("\$28", style: AppWidget.boldTextFeildStyle(),)
                      ],) ,
                    ),
                  ),
                 )
              ],
            ),
          ),

          SizedBox(height: 15.0),

          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.only(right: 20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    Image.asset("images/salad2.png", height: 110, width: 110, fit: BoxFit.cover,),
                  
                  SizedBox(width: 15.0,),
                  Column(
                    children: [
                        Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text(
                          "Mediterranean Chickpea Salad",
                           style: AppWidget.semiBoldTextFeildStyle(), 
                           )),
                            
                        SizedBox(height: 5.0), 
                        Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text(
                          "Honey goat cheeze",
                           style: AppWidget.LightTextFeildStyle(), 
                           )),
                            
                        SizedBox(height: 5.0), 
                        Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text(
                          "\$28",
                           style: AppWidget.boldTextFeildStyle(), 
                           )),
                    ],
                  )
                
                  ],
                ),
              ),
            ),
          )

      ],
      ),
      ),
    );
  }

  Widget showItem()
  {
    return   Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               
                GestureDetector(
                  onTap: () {
                    icecream = true;
                    pizza = false;
                    burger = false;
                    salad = false;
                    setState(() {
                      
                    });
                  },
                 
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(color: icecream? Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                      child: Image.asset('images/ice-cream.png', height: 40, width: 40, fit: BoxFit.cover, color: icecream? Colors.white: Colors.black),
                    ),
                  ),
                ),

                     // for pizza
                
                 GestureDetector(
                  onTap: () {
                    icecream = false;
                    pizza = true;
                    burger = false;
                    salad = false;
                    setState(() {
                      
                    });
                  },
                 
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(color: pizza? Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                      child: Image.asset('images/pizza.png', height: 40, width: 40, fit: BoxFit.cover, color: pizza? Colors.white: Colors.black),
                    ),
                  ),
                ),


                // for salad

                 GestureDetector(
                  onTap: () {
                    icecream = false;
                    pizza = false;
                    burger = false;
                    salad = true;
                    setState(() {
                      
                    });
                  },
                 
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(color: salad? Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                      child: Image.asset('images/salad.png', height: 40, width: 40, fit: BoxFit.cover, color: salad? Colors.white: Colors.black),
                    ),
                  ),
                ),


                 // for burger

                 GestureDetector(
                  onTap: () {
                    icecream = false;
                    pizza = false;
                    burger = true;
                    salad = false;
                    setState(() {
                      
                    });
                  },
                 
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(color: burger? Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                      child: Image.asset('images/burger.png', height: 40, width: 40, fit: BoxFit.cover, color: burger? Colors.white: Colors.black),
                    ),
                  ),
                ),

              ],
            );
  }
}