import 'package:flutter/material.dart';
class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Account Settings",
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        VerticalDivider(
                          color: Colors.transparent,
                          thickness: 1,
                          width: MediaQuery.of(context).size.width * 0.38,
                        ),

                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(

                      children: const
                      [Text(
                          "Profile",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),



                      ),

                        SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                print(
                                  "You pressed Icon Elevated Button",
                                );
                              },
                              icon: const Icon(
                                Icons.settings,
                                color: Colors.white,
                              ), //icon data for elevated button
                              label: const Text(
                                "Wattpad Account",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.fromLTRB(10, 20, 190, 20),
                              ), //label text
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                print(
                                  "You pressed Icon Elevated Button",
                                );
                              },
                              icon: const Icon(
                                Icons.person_add,
                                color: Colors.white,
                              ), //icon data for elevated button
                              label: const Text(
                                "Username",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.fromLTRB(10, 20, 247, 20),
                              ), //label text
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                print(
                                  "You pressed Icon Elevated Button",
                                );
                              },
                              icon: const Icon(
                                Icons.currency_rupee,
                                color: Colors.white,
                              ), //icon data for elevated button
                              label: const Text(
                                "FullName",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.fromLTRB(10, 20, 250, 20),
                              ), //label text
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                print(
                                  "You pressed Icon Elevated Button",
                                );
                              },
                              icon: Icon(
                                Icons.credit_card,
                                color: Colors.white,
                              ), //icon data for elevated button
                              label: const Text(
                                "Pronouns",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.fromLTRB(10, 20, 247, 20),
                              ), //label text
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                print(
                                  "You pressed Icon Elevated Button",
                                );
                              },
                              icon: const Icon(
                                Icons.calendar_month,
                                color: Colors.white,
                              ), //icon data for elevated button
                              label: const Text(
                                "Birthday",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),

                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.fromLTRB(10, 20, 250, 20),

                              ), //label text
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                print(
                                  "You pressed Icon Elevated Button",
                                );
                              },
                              icon: const Icon(
                                Icons.location_on,
                                color: Colors.white,
                              ), //icon data for elevated button
                              label: const Text(
                                "Location",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.fromLTRB(10, 20, 250, 20),
                              ), //label text
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                print(
                                  "You pressed Icon Elevated Button",
                                );
                              },
                              icon: const Icon(
                                Icons.web,
                                color: Colors.white,
                              ), //icon data for elevated button
                              label: const Text(
                                "Website",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.fromLTRB(10, 20, 255, 20),
                              ), //label text
                            ),
                          ),

                          SizedBox(
                            height: 2,
                            child: Container(

                            ),
                          ),
                          SizedBox(
                            height: 3 ,
                          ),
                          Container(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 225, 20),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  children: const [


                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ));
  }}