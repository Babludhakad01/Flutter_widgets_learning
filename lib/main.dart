
import 'package:demo_project/Drawer_BottomNavBar_Floating_Widgets/BottomNavigationBar/bottomNavigation.dart';
import 'package:demo_project/Drawer_BottomNavBar_Floating_Widgets/BottomNavigationBar/customNavigation.dart';
import 'package:demo_project/Drawer_BottomNavBar_Floating_Widgets/Drawer/drawer.dart';
import 'package:demo_project/Drawer_BottomNavBar_Floating_Widgets/floatingAction.dart';
import 'package:demo_project/ListView_GridView_Wrap_Widget/GridView/gridViewCount.dart';
import 'package:demo_project/ListView_GridView_Wrap_Widget/ListView/listView.dart';
import 'package:demo_project/ListView_GridView_Wrap_Widget/ListView/listViewBuilder.dart';
import 'package:demo_project/ListView_GridView_Wrap_Widget/ListView/listViewSepareted.dart';
import 'package:demo_project/ListView_GridView_Wrap_Widget/ListView/protoType.dart';
import 'package:demo_project/ListView_GridView_Wrap_Widget/ListView/scrollController.dart';
import 'package:demo_project/ListView_GridView_Wrap_Widget/WrapWidget/wrapWidgetExample.dart';
import 'package:demo_project/Practice/inkWell.dart';
import 'package:demo_project/Practice/signupPage.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Learning",
      debugShowCheckedModeBanner:  false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple ),
      ),
      /*
      home: const SignupPage(title: "Signup Page"),
      home: const ButtonPractice(title: "Button Practice"),
      home: const ListViewPage(title: "List View Practice"),
      home: const ListViewSeparted(title: "List View Practice"),
      home: const UserListPage(title: "List View Practice"),
      home: const PrototypeExample(title: "Scroll Controller or ProtoTypeItem"),
      home: const GridViewPage(title: "Grid view Page "),
      home: const KeepAliveExample(title: "Grid view Page "),
      home: const GridViewPageCount(title: "Grid view Count Page "),
     home: const WrapWidgetExample(title: "Grid view Count Page "),

       */
      // home: const DrawerExample(title: "Drawer Examples "),
      //home: const BottomNavbarExample(title: "Bottom Navbar Examples "),
      home: const FloatingActionBtnExample(title: "Floating Action Button Examples "),

    );
  }
}

