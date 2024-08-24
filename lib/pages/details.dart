import 'package:flutter/material.dart';
import 'package:food_delivery/widget/widget_support.dart';

class Details extends StatefulWidget{
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();

}

class _DetailsState extends State<Details> {

  int a =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,)),
          Image.asset("images/salad2.png",
          width: MediaQuery.of(context).size.height/2,
          fit: BoxFit.fill,
            ),

            SizedBox(height: 15.0,),
           
           

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Mediterranean", style: AppWidget.semiBoldTextFeildStyle(),),
                 Text("Chickea Salad", style: AppWidget.HeaderlineTextFeildStyle(),),
              ],
            ),
      //SizedBox(width: 40.0,),

      Spacer(),
               
                GestureDetector(
                  onTap: () {

                    if(a>1)
                    {
                      --a;
                    }
                    
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8.0)),
                    child: 
                    Icon(Icons.remove, color: Colors.white,)
                  ),
                ),

                SizedBox(width: 15.0,),

                Text(a.toString(), style: AppWidget.semiBoldTextFeildStyle(),),

                SizedBox(width: 15.0,),

                 GestureDetector(
                  onTap: () {
                    
                    ++a;
                    setState(() {
                      
                    });
                  },
                   child: Container(
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8.0)),
                    child: 
                    Icon(Icons.add, color: Colors.white,)
                                   ),
                 ),
              ],
            ),

            SizedBox(height: 10.0,),
            Text("Chickpea Salad is loaded with crunchy cucumbers, juicy tomatoes, creamy avocado, and tangy feta cheese.", style: AppWidget.LightTextFeildStyle(),),
         
          SizedBox(height: 20.0,),         
           
            Row(
              children: [
                Text("Delivery Time", style: AppWidget.semiBoldTextFeildStyle(),),
                SizedBox(width: 20.0,),
                Icon(Icons.alarm, color: Colors.black54,),
                SizedBox(width: 5.0,),
                Text("30 min", style: AppWidget.semiBoldTextFeildStyle(),),
              ],
            ),

            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0 ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total Price", style: AppWidget.boldTextFeildStyle(),),
                      Text("\$28", style: AppWidget.HeaderlineTextFeildStyle(),)
                    ],
                  ),

                  SizedBox(width: 42.0,),
                  
                   Container(
                  //  width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Add to cart", 
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 16.0, 
                          fontFamily: 'Poppins'),),

                          SizedBox(width: 10.0,),

                        Container(
                          padding: EdgeInsets.all(3.0),
                          decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10)),
                          child: Icon(Icons.shopping_cart_outlined, color: const Color.fromARGB(255, 238, 236, 236),),
                        ),

                      ],
                    ),
                   )

                ],
              ),
            )

       ],)
       
        
      ),
    );
  }
}

