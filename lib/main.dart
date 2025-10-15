import 'package:demo_project/DatePicker_TimePicker_ImagePicker/datePickerExample.dart';
import 'package:demo_project/PageView_NavigationBar_TabBar/navigation.dart';
import 'package:demo_project/PageView_NavigationBar_TabBar/pageViewExample.dart';
import 'package:demo_project/PageView_NavigationBar_TabBar/pageViewExample2.dart';
import 'package:demo_project/PageView_NavigationBar_TabBar/tabNavigation.dart';
import 'package:demo_project/RefreshIndicator_Snackbar/refreshIndicatorExample.dart';
import 'package:demo_project/RefreshIndicator_Snackbar/snackbarExample.dart';
import 'package:demo_project/RefreshIndicator_Snackbar/toastExamplePage.dart';
import 'package:demo_project/StreamBuilder/timeStamp.dart';
import 'package:demo_project/TextTile_bottomSheet_alretbar/alertBarExample.dart';
import 'package:demo_project/TextTile_bottomSheet_alretbar/bottomSheetExample.dart';
import 'package:demo_project/TextTile_bottomSheet_alretbar/persistentBottomSheetExample.dart';
import 'package:demo_project/TextTile_bottomSheet_alretbar/textTileExample.dart';
import 'package:demo_project/buttons/popupBtn.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

void main() {
  runApp(OKToast(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Learning",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      // home: const AlertBarExample(title: "Alert Bar"),
      home: const DatePickerExample(title: "Date Picker"),

      // initialRoute: '/',
      // routes: {
      //   '/': (context) =>
      //       const PopupBtnExample(title: "PopupMenu button  Example"),
      //   '/about': (context) =>
      //       const TimeStampExample(title: "Stream Builder Example"),
      // },

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
      // home: const RowExamples(title: "Row Examples "),
      // home: const BoxDemoPage(title: "Box Demo Page "),
      // home: const ScrollBarPage(title: "Scroll bar Page  "),
      // home: const ListViewScrollBarPage(title: "ListView Scroll bar Page  "),
      // home: const ImagesExample(title: "Images Page  "),
      // home: const FileImageExample(title: "File Image  Page  "),
      // home: const MyStatelessPage(),
      // home: const MyStatefulExample(),
      // home:  const MyStreamBuilderPage(title: "Stream Builder Example"),
      // home:  const TimeStampExample(title: "Stream Builder Example"),
      
      // home: const RefreshIndicatorExample(title: "Refresh Indicator Example"),
      // home: const SnackbarExample(title: "Snackbar  Example"),
     // home: const ToastPage(title: "Toast Page Example"),
     //  home: const PageViewExample(title: "PageView Widget Example"),
     //  home: const PageViewExample2(title: "PageView 2 Example"),
     //  home: const TabNavigationExample(title: "PageView 2 Example"),
     // home: const TextTileExample(title: "Text Tile Example"),
     //  home: const BottomSheetPage(title: "Bottom Sheet Example"),
     //  home: const PersistentBottomExample(title: "Persistent Bottom Sheet"),
    );
  }
}
