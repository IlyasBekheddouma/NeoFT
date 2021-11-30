import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:neo_ft/utils/Ext1.dart';

class ShowScreen extends StatefulWidget {

  @override
  _ShowScreen createState() => _ShowScreen();
}

class _ShowScreen extends State<ShowScreen> {
  int pos;
  var txt="WHAT IS AN NFT? WHAT DOES NFT STAND FOR?\n"+
      "Non-fungible token.\n"+

      "That doesn’t make it any clearer.\n"+

      "Right, sorry. “Non-fungible” more or less means that it’s unique and can’t be replaced with something else. For example, a bitcoin is fungible — trade one for another bitcoin, and you’ll have exactly the same thing. A one-of-a-kind trading card, however, is non-fungible. If you traded it for a different card, you’d have something completely different. You gave up a Squirtle, and got a 1909 T206 Honus Wagner, which StadiumTalk calls “the Mona Lisa of baseball cards.” (I’ll take their word for it.)";

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    pos = ModalRoute.of(context).settings.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [

          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      kc1,
                      kc1,
                      kc2,
                    ],
                  )
              ),

            ),
          ),

          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Colors.transparent,
                      kc2,
                    ],
                  )
              ),

            ),
          ),

          Positioned.fill(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                height: 310,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Card(
                          elevation: 8,
                          shadowColor: kc2,
                          clipBehavior: Clip.hardEdge,
                          margin: EdgeInsets.zero,
                          color: Colors.white.withOpacity(0.25),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(42*0.6)
                            ),
                          ),
                          child: Card(
                            elevation: 8,
                            shadowColor: kc2,
                            clipBehavior: Clip.hardEdge,
                            margin: EdgeInsets.all(0.5),
                            color: Colors.white.withOpacity(0.02),
                            shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(42*0.6)
                              ),
                            ),
                            child: Image.asset(ks2+LIS[pos].pic,fit: BoxFit.cover,),
                          )
                      ),
                    ),
                    Positioned.fill(child: Blur(
                      blur: 3,
                      colorOpacity: 0.04,
                      blurColor: Colors.white,
                      child: Container(),
                    )),

                    Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: SafeArea(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(children: [

                              SizedBox(width: 8,),

                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white.withOpacity(0.25),
                                      width: 1
                                    )
                                  ),
                                  child: Center(
                                    child: Image.asset(ks1+'back.png',color: Colors.white,width: 22,height: 22),
                                  ),
                                ),
                              ),

                              Spacer(),

                              GestureDetector(
                                onTap: () {
                                  //TODO
                                  Fluttertoast.showToast(
                                      msg: "TODO",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.CENTER,
                                      fontSize: 16.0
                                  );
                                },
                                child: Container(
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white.withOpacity(0.25),
                                          width: 1
                                      )
                                  ),
                                  child: Center(
                                    child: Image.asset(ks1+'love.png',color: kc4,width: 22,height: 22,),
                                  ),
                                ),
                              ),

                              SizedBox(width: 8,),

                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),

              SizedBox(height: 95,),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(LIS[pos].st3,style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20
                ),),
              ),

              SizedBox(height: 4,),

              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [

                    SizedBox(width: 8,),

                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              ks2+'ibaa.png',
                            ),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),

                    SizedBox(width: 12,),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Stolen by',style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 14,
                          ),),
                          Text('Ilyas bekheddouma',style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),),
                        ],
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        //TODO
                        Fluttertoast.showToast(
                            msg: "TODO",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            fontSize: 16.0
                        );
                      },
                      child: Card(
                        elevation: 0,
                        clipBehavior: Clip.hardEdge,
                        margin: EdgeInsets.zero,
                        color: Colors.white.withOpacity(0.25),
                        shape: BeveledRectangleBorder(),
                        child: Card(
                          elevation: 0,
                          clipBehavior: Clip.hardEdge,
                          margin: EdgeInsets.all(2),
                          color: kc1.withOpacity(0.8),
                          shape: BeveledRectangleBorder(),
                          child: Container(
                            height: 36,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.04),
                            ),
                            child: Center(
                              child: Text('Follow',style: TextStyle(
                                  color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 8,),

                  ],
                ),
              ),

              SizedBox(height: 24,),

              Row(
                children: [
                  SizedBox(width: 16,),

                  Text('Description',style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),


              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                      child: Text(txt,style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 14,
                      ),),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: () {
                  //TODO
                  Fluttertoast.showToast(
                      msg: "TODO",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      fontSize: 16.0
                  );
                },
                child: Container(
                  height: 48,
                  margin: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      gradient: LinearGradient(
                          colors: [
                            kc3,
                            kc4,
                          ]
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: kc4,
                          spreadRadius: -6,
                          blurRadius: 16,
                          offset: Offset(0,8),
                        )
                      ]
                  ),
                  child: Row(
                    children: [

                      Spacer(),

                      Text('Place a Bid',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),),

                      Spacer(),

                    ],
                  ),
                ),
              )

            ],
          )),

          Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                top: 43
              ),
              child: Center(
                child: Card(
                    elevation: 8,
                    shadowColor: kc2,
                    clipBehavior: Clip.hardEdge,
                    margin: EdgeInsets.zero,
                    color: Colors.white.withOpacity(0.25),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(42*0.6)
                      ),
                    ),
                    child: Card(
                      elevation: 8,
                      shadowColor: kc2,
                      clipBehavior: Clip.hardEdge,
                      margin: EdgeInsets.all(0.5),
                      color: Colors.white.withOpacity(0.02),
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(42*0.6)
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                              height: 290,
                              width: 260,
                              child: Image.asset(ks2+LIS[pos].pic,fit: BoxFit.cover,),
                            ),
                          ),

                          Positioned(
                              bottom: 0,
                              right: 0,
                              left: 0,
                              child: Container(
                                height: 48,
                                child: Blur(
                                  blur: 2,
                                  colorOpacity: 0.04,
                                  blurColor: Colors.white,
                                  child: Container(),
                                ),
                              )),

                          Positioned(
                              bottom: 0,
                              right: 0,
                              left: 0,
                              child: Container(
                                height: 48,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 0.5,
                                      width: double.infinity,
                                      color: Colors.white.withOpacity(0.1),
                                    ),

                                    Spacer(),
                                    Row(
                                      children: [

                                        SizedBox(width: 8,),

                                        Expanded(child: Text('HIGHEST BID',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),)),
                                        Expanded(child: Text('AUCTION END',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),)),
                                        SizedBox(width: 8,),

                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 8,),

                                        Expanded(child: Text(LIS[pos].st1,style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),)),
                                        Expanded(child: Text(LIS[pos].st2,style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),)),
                                        SizedBox(width: 8,),
                                      ],
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    )
                ),
              ),
            ),
          ))

        ],
      ),
    );
  }
}