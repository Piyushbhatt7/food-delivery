import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home.dart';
import 'package:food_delivery/pages/order.dart';
import 'package:food_delivery/pages/profile.dart';
import 'package:food_delivery/pages/wallet.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex=0;

  late List<Widget> pages;
  late Widget curentPage;
  late Home MyHomePage;
  late Profile profile;
  late Wallet wallet;
  late Order order;

  @override
  void initState() {

    MyHomePage = Home();
    order = Order();
    profile = Profile();
    wallet = Wallet();
    pages = [MyHomePage, order, profile, wallet];

    super.initState();
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index){

          currentTabIndex = index;
        },

        items: [
        Icon(
          Icons.home_outlined,
          color: Colors.white,
        ),
          
           Icon(
          Icons.shopping_bag_outlined,
          color: Colors.white,
        ),


         Icon(
          Icons.wallet_outlined,
          color: Colors.white,
        ),


         Icon(
          Icons.person_outline,
          color: Colors.white,
        ),

       
        
      ]),
   
    body: pages[currentTabIndex],
    
    );
  }
}