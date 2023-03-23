import 'package:wattpad/subf/general_model.dart';
import 'package:wattpad/subf/second_page.dart';
import 'package:flutter/material.dart';
import 'package:wattpad/navigation.dart';
import 'package:wattpad/subf/fab_bottom_app_bar.dart';

class HomePageTest extends StatefulWidget {
  @override
  _HomePageTestState createState() => _HomePageTestState();
}


class _HomePageTestState extends State<HomePageTest> {


  Widget _buildBookCategoryList(context,index, List<BookCategory>listImages) {


    return
      Padding(
        padding: const EdgeInsets.only(left:10.0,top: 10.0),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipRRect(

                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset(

                  listImages[index].image,
                  width: 110.0,
                  height: 200.0,

                  fit: BoxFit.fill,)),
            Text(listImages[index].name)
          ],
        ),






      );
  }

  String _lastSelected = 'TAB: 0';

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = 'TAB: $index';
    });
  }

  void _selectedFab(int index) {
    setState(() {
      _lastSelected = 'FAB: $index';
    });
  }

  Widget _buildFab(BuildContext context) {
    final icons = [ Icons.sms, Icons.mail, Icons.phone ];
    return FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondScreen()),
          );
        },
        tooltip: 'wattpad',
       backgroundColor: Colors.white,
        child: Image.asset('assets/images/logo.png',width: 30.0,height: 30.0,),
        elevation: 2.0,

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Home',style: TextStyle(color: Colors.black)),
          backgroundColor:Colors.white,

      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:35.0,left: 10.0,),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Top Picks For You",style: TextStyle(fontSize: 30.0,color: Colors.black,fontWeight: FontWeight.bold),)),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 250.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return _buildBookCategoryList(context,index,BookCategoryList.bookCategory);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top:35.0,left: 10.0,),

            ),
            Container(
              padding: EdgeInsets.only(left: 0.0),
              height: 250.0,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset('assets/images/main.jpeg'),
                    Text('The Class Prince \n \n Known to have behavioral issues \n and a little too much sass,\n he is looked down upon by adults \n and is shadowed by his \n older brothers achievements.\n When he arrives at Ivory High,\n he sits beside Ivan Moonrich,\n the Class Prince. ',
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                  ],

                    ),

            ),

          ],
        ),



      ),
        bottomNavigationBar: FABBottomAppBar(
            null, centerItemText: 'Home',
            color: Colors.black,
            selectedColor: Color(0xFFEC4115),
            notchedShape: CircularNotchedRectangle(),
            backgroundColor: Colors.white,
            onTabSelected: _selectedTab,
            items: [
              FABBottomAppBarItem(iconData: Icons.book, text: 'Library'),
        FABBottomAppBarItem(iconData: Icons.search, text: 'Search'),
        FABBottomAppBarItem(iconData: Icons.edit, text: 'Write'),
        FABBottomAppBarItem(iconData: Icons.settings, text: 'Settings'),],
    ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _buildFab(
            context),


    );
  }
}
