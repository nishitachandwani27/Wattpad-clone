import 'package:flutter/material.dart';


class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back)),


            flexibleSpace: FlexibleSpaceBar(
                background: Container(
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center ,
                    child:Image.asset('assets/images/cover.jpg'),
                  )


                ],

              ),
            )),

            // Extruding edge from the sliver appbar, may need to fix expanded height
            expandedHeight: MediaQuery.of(context).size.height /2.5,
            backgroundColor: const Color(0xFFE3C9C5),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 10.0, bottom: 10.0),
              child: Center(
                child:Text(
                "Stealing From wizards",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              ),

            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: CircleAvatar(
                          radius: 15.0,
                          backgroundImage:
                          AssetImage('assets/images/cover.jpg'),
                        ),

                        ),

                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Text(
                                "",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),

                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 3.0),
                                child: Row(
                                  children: <Widget>[
                                    Center(
                                      child:Text(
                                        "raconsell",
                                        style: TextStyle(color: Colors.black),
                                      ),

                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 3.0),
                                      child: Text(
                                        "",
                                        style:
                                            TextStyle(color: Color(0xFFFB7592)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      "",
                                      style:
                                          TextStyle(color: Color(0xFFFB7592)),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        Icons.remove_red_eye,
                        color: Color(0xFFFB7592),
                        size: 40.0,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xFFFB7592),
                        size: 40.0,
                      ),
                      Icon(
                        Icons.list,
                        color: Color(0xFFFB7592),
                        size: 40.0,
                      ),

                    ],
                  ),
    Container(
    decoration: BoxDecoration(
        borderRadius: new BorderRadius.circular(20.0),
    //   shape: BoxShape.circle,
    gradient: LinearGradient(colors: [
    const Color(0xFF000000),
    const Color(0xFF000000),

    ],
    begin: const FractionalOffset(0.0, 0.0),
    end: const FractionalOffset(0.9, 0.0),
    stops: [0.0, 0.9],
    tileMode: TileMode.clamp

    )
    ),
                  child: new MaterialButton(
                    onPressed: () {
                      //  saveMoist();
                    },

                    child: new Padding(
                      padding: const EdgeInsets.all(24.0),
                      child:new Text("Read",
                          style: new TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Volume 1: Pickpocketing",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Living in secret and stealing to eat is a hard life, but it's all Kuro has ever known.  Fear and necessity forged him into the finest young thief in the wizard kingdoms. Nobody can hide forever, though, and a run of poor luck lands Kuro in a place where his quick hands and quiet feet count for nothing: Avalon Academy, school of magic.",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            "Read More..",
                            style: TextStyle(fontWeight:FontWeight.bold,color: Color(0xFF131212)),
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
