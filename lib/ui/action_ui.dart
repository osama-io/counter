import 'package:counter/model/action.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ActionsScreen extends StatefulWidget {
  @override
  _ActionsScreenState createState() => _ActionsScreenState();
}

class _ActionsScreenState extends State<ActionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.only(left: 20,right: 20,top: 20),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              //childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: actionList.length,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(0xffF9B8BE), borderRadius: BorderRadius.circular(15)),
              child: Row(

                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                     //   color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Center(
                                child: Text(
                                  actionList[index].actionTitle.toString(),
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            FloatingActionButton(
                              hoverColor: Colors.black,
                              elevation: 0,
                              onPressed: () {},
                              backgroundColor: Colors.pink,
                              child: Icon(
                                Icons.add,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0))),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              actionList[index].actionImage.toString(),
                              //height: 20.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            );
          }),
    );
  }
}
