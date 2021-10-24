import 'package:counter/model/action.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///body
      body: ListView(
        children: [
          /// card for Anniversary
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
                //color: Colors.pink,
                height: 35.h,
                child: Column(
                  children: [
                    ///for title
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Anniversary",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                      0,
                                      3,
                                    ), // changes position of shadow
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 3, 15, 3),
                              child: Text(
                                "Set",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    ///for card body
                    Expanded(
                      flex: 6,
                      child: Container(
                        child: Column(
                          children: [
                            /// left logo
                            Expanded(
                              flex: 3,
                              child: Center(
                                child: Image.asset(
                                  "assets/cake.png",
                                  //color: Colors.pink,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://www.pngitem.com/pimgs/m/30-307416_profile-icon-png-image-free-download-searchpng-employee.png'),
                                            fit: BoxFit.contain),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://www.pngitem.com/pimgs/m/30-307416_profile-icon-png-image-free-download-searchpng-employee.png'),
                                            fit: BoxFit.contain),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            /// for text
                            Expanded(
                              flex: 2,
                              child: Container(
                                //color: Colors.red,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "we've been together for ",
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "2 Years 91 Days",
                                      style: TextStyle(
                                          fontSize: 30.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                //  color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0.6, 0.4],
                              colors: [
                                Colors.pink,
                                Colors.white,
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),

                        height: 25.h,
                        //width: 10.h,
                      ),
                    )
                  ],
                )),
          ),

          ///card for action
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
                // color: Colors.pink,
                height: 28.h,
                child: Column(
                  children: [
                    ///for title
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Love Counter",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                      0,
                                      3,
                                    ), // changes position of shadow
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 3, 15, 3),
                              child: Text(
                                "Last 7 Days",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    ///for card body
                    Expanded(
                      flex: 6,
                      child: Container(
                        width: double.infinity,
                        height: 28.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: ListView.builder(
                            padding:
                                EdgeInsets.only(top: 10, left: 15, bottom: 10,right: 20),
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: actionList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                EdgeInsets.only( right: 11),
                                child: Container(
                                 // color: Colors.yellow,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width: 12.h,
                                        height: 14.h,
                                        child: Image.asset(
                                          actionList[index].actionImage.toString(),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Color(0xffF9B8BE),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.2),
                                                spreadRadius: 5,
                                                blurRadius: 7,
                                                offset: Offset(
                                                  0,
                                                  3,
                                                ), // changes position of shadow
                                              ),
                                            ],
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        //color: Colors.green,
                                      ),
                                      Text(
                                        actionList[index].actionTitle.toString(),
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        actionList[index].actionCount.toString(),
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),


                      ),
                    )
                  ],
                )),
          ),

          /// card for invite
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
                // color: Colors.pink,
                height: 25.h,
                child: Column(
                  children: [
                    ///for title
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Text(
                            "Invite Your Partner",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                    ///for card body
                    Expanded(
                      flex: 6,
                      child: Container(
                        child: Row(
                          children: [
                            /// left logo
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      "assets/logo.png",
                                      color: Colors.pink,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xffF9B8BE),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(
                                            0,
                                            3,
                                          ), // changes position of shadow
                                        ),
                                      ],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  //color: Colors.green,
                                ),
                              ),
                              flex: 3,
                            ),

                            /// for text and button
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Link with your Better half\n   Enjoy all the features",
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.pink,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.2),
                                              spreadRadius: 5,
                                              blurRadius: 7,
                                              offset: Offset(
                                                0,
                                                3,
                                              ), // changes position of shadow
                                            ),
                                          ],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 8, 15, 8),
                                        child: Text(
                                          "Invite Partner",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.sp),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                //  color: Colors.red,
                              ),
                              flex: 3,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),

                        height: 25.h,
                        //width: 10.h,
                      ),
                    )
                  ],
                )),
          ),

          ///card for Birthday
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
                // color: Colors.pink,
                height: 25.h,
                child: Column(
                  children: [
                    ///for title
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Upcoming Dates",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                      0,
                                      3,
                                    ), // changes position of shadow
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 3, 15, 3),
                              child: Text(
                                "Create",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    ///for card body
                    Expanded(
                      flex: 6,
                      child: Container(
                        child: Row(
                          children: [
                            /// left logo
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        "assets/cake.png",
                                        //color: Colors.pink,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xffF9B8BE),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(
                                            0,
                                            3,
                                          ), // changes position of shadow
                                        ),
                                      ],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  //color: Colors.green,
                                ),
                              ),
                              flex: 3,
                            ),

                            /// for text and button
                            Expanded(
                              child: Container(
                                //color: Colors.red,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      //crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "34",
                                          style: TextStyle(
                                              fontSize: 50.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "   more",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    // SizedBox(
                                    //   height: 5.h,
                                    // ),
                                    Text(
                                      "days until",
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "her birthday",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                //  color: Colors.red,
                              ),
                              flex: 3,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),

                        height: 25.h,
                        //width: 10.h,
                      ),
                    )
                  ],
                )),
          ),

          // Padding(
          //   padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          //   child: Container(
          //       // color: Colors.pink,
          //       height: 25.h,
          //       child: Column(
          //         children: [
          //           ///for title
          //           Expanded(
          //             flex: 1,
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 Text(
          //                   "Upcoming Dates",
          //                   style: TextStyle(
          //                       fontSize: 12.sp, fontWeight: FontWeight.bold),
          //                 ),
          //                 Container(
          //                   decoration: BoxDecoration(
          //                       color: Colors.pink,
          //                       boxShadow: [
          //                         BoxShadow(
          //                           color: Colors.grey.withOpacity(0.2),
          //                           spreadRadius: 5,
          //                           blurRadius: 7,
          //                           offset: Offset(
          //                             0,
          //                             3,
          //                           ), // changes position of shadow
          //                         ),
          //                       ],
          //                       borderRadius:
          //                           BorderRadius.all(Radius.circular(20))),
          //                   child: Padding(
          //                     padding: const EdgeInsets.fromLTRB(15, 3, 15, 3),
          //                     child: Text(
          //                       "Create",
          //                       style: TextStyle(
          //                           fontWeight: FontWeight.bold,
          //                           fontSize: 10.sp),
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //
          //           ///for card body
          //           Expanded(
          //             flex: 6,
          //             child: Container(
          //               child: Row(
          //                 children: [
          //                   /// left logo
          //                   Expanded(
          //                     child: Padding(
          //                       padding: const EdgeInsets.all(20.0),
          //                       child: Container(
          //                         child: Center(
          //                           child: Padding(
          //                             padding: const EdgeInsets.all(8.0),
          //                             child: Image.asset(
          //                               "assets/cake.png",
          //                               //color: Colors.pink,
          //                               fit: BoxFit.cover,
          //                             ),
          //                           ),
          //                         ),
          //                         decoration: BoxDecoration(
          //                             color: Color(0xffF9B8BE),
          //                             boxShadow: [
          //                               BoxShadow(
          //                                 color: Colors.grey.withOpacity(0.2),
          //                                 spreadRadius: 5,
          //                                 blurRadius: 7,
          //                                 offset: Offset(
          //                                   0,
          //                                   3,
          //                                 ), // changes position of shadow
          //                               ),
          //                             ],
          //                             borderRadius: BorderRadius.all(
          //                                 Radius.circular(20))),
          //                         //color: Colors.green,
          //                       ),
          //                     ),
          //                     flex: 3,
          //                   ),
          //
          //                   /// for text and button
          //                   Expanded(
          //                     child: Container(
          //                       //color: Colors.red,
          //                       child: Column(
          //                         crossAxisAlignment: CrossAxisAlignment.center,
          //                         mainAxisAlignment: MainAxisAlignment.center,
          //                         children: [
          //                           Row(
          //                             mainAxisAlignment:
          //                                 MainAxisAlignment.center,
          //                             //crossAxisAlignment: CrossAxisAlignment.center,
          //                             children: [
          //                               Text(
          //                                 "34",
          //                                 style: TextStyle(
          //                                     fontSize: 50.sp,
          //                                     fontWeight: FontWeight.bold),
          //                               ),
          //                               Text(
          //                                 "   more",
          //                                 style: TextStyle(
          //                                     fontSize: 15.sp,
          //                                     fontWeight: FontWeight.bold),
          //                               ),
          //                             ],
          //                           ),
          //                           // SizedBox(
          //                           //   height: 5.h,
          //                           // ),
          //                           Text(
          //                             "days until",
          //                             style: TextStyle(
          //                                 fontSize: 20.sp,
          //                                 fontWeight: FontWeight.bold),
          //                           ),
          //                           Text(
          //                             "her birthday",
          //                             style: TextStyle(
          //                                 fontSize: 12.sp,
          //                                 fontWeight: FontWeight.bold),
          //                           ),
          //                         ],
          //                       ),
          //                       //  color: Colors.red,
          //                     ),
          //                     flex: 3,
          //                   ),
          //                 ],
          //               ),
          //               decoration: BoxDecoration(
          //                   color: Colors.white,
          //                   boxShadow: [
          //                     BoxShadow(
          //                       color: Colors.grey.withOpacity(0.5),
          //                       spreadRadius: 5,
          //                       blurRadius: 7,
          //                       offset:
          //                           Offset(0, 3), // changes position of shadow
          //                     ),
          //                   ],
          //                   borderRadius:
          //                       BorderRadius.all(Radius.circular(20))),
          //
          //               height: 25.h,
          //               //width: 10.h,
          //             ),
          //           )
          //         ],
          //       )),
          // ),
        ],
      ),
    );
  }
}
