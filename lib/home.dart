import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(

        slivers: [

          SliverAppBar(
            backgroundColor: Color.fromARGB(0, 0, 0, 0),
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: false,
            title: const Text('Home',
            style: TextStyle(color: Colors.black),),




            bottom: AppBar(
              title: const Text('Top picks for you',
                style:TextStyle(color: Colors.black),),
              backgroundColor: Colors.white,
            ),
          ),
          // Other Sliver Widgets

          SliverList(
            delegate: SliverChildListDelegate([

            Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Center(
              child: SizedBox(
                width: 300,
                height: 250,
                child: Image.asset(
                  'assets/images/cover.jpg',
                ),
              ),
            ),
          ),
              const SizedBox(
                height: 10,
                child: Center(
                  child: Text(
                    'Stealing From Wizards',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                  ),
                ),
              ),

                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Center(
                    child: SizedBox(
                      width: 300,
                      height: 250,
                      child: Image.asset(
                        'assets/images/main.jpeg',
                      ),
                    ),

                  ),
                ),


            ]),
          ),
        ],

      ),

    );
  }
}

