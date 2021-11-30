import 'package:blur/blur.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:neo_ft/models/NFT.dart';
import 'package:neo_ft/ui/items/GradientText.dart';
import 'package:neo_ft/utils/Ext1.dart';

class MainScreen extends StatefulWidget {

  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State {
  var vp=PageController(
    initialPage: 1,
    viewportFraction: 0.7,
  );
  var winrak=1;

  @override
  void dispose() {
    super.dispose();
    vp.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        onWillPopExit();
      },
      child: Material(
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

            Positioned.fill(child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [

                        SizedBox(width: 8,),

                        GradientText(
                          'NF',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700, // light
                              fontStyle: FontStyle.italic, // italic
                              fontSize: 28
                          ),
                          gradient: LinearGradient(colors: [
                            kc3,
                            kc4,
                          ]),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Text(' NeoFT',style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic, // italic
                            color: Colors.white,
                          ),),
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
                          child: Stack(
                            children: [
                              Positioned(child: Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Image.asset(ks1+'clo.png',width: 24,height: 24,color: Colors.white.withOpacity(0.75),)
                              )),

                              Positioned(
                                  top: 4,
                                  right: 0,
                                  child: Container(
                                height: 6,
                                width: 6,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kc4,
                                ),
                              ))
                            ],
                          ),
                        ),

                        SizedBox(width: 20,),

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
                            width: 38,
                            height: 38,
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
                        ),

                        SizedBox(width: 8,),

                      ],
                    ),
                  ),

                  SizedBox(height: 24,),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Text('Discover & Collect',style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 20
                        ),),

                        Text(' NFTs.',style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                      ],
                    ),
                  ),

                  SizedBox(height: 16,),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Card(
                      elevation: 0,
                      clipBehavior: Clip.hardEdge,
                      margin: EdgeInsets.zero,
                      color: Colors.white.withOpacity(0.25),
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20)
                        ),
                      ),
                      child: Card(
                        elevation: 0,
                        clipBehavior: Clip.hardEdge,
                        margin: EdgeInsets.all(2),
                        color: kc1.withOpacity(0.8),
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20)
                          ),
                        ),
                        child: Container(
                          height: 42,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.04),
                          ),
                          child: Row(
                            children: [

                              SizedBox(width: 8,),

                              Image.asset(ks1+'seh.png',width: 24,height: 24,color: Colors.white.withOpacity(0.75),),

                              SizedBox(width: 8,),

                              Text('Search nft...',style: TextStyle(
                                  color: Colors.white.withOpacity(0.5)
                              ),),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 32,),

                  Row(
                    children: [
                      SizedBox(width: 16,),
                      Text('Categories',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),),
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
                        child: Text('See all',style: TextStyle(
                          color: kc4
                        ),),
                      ),
                      SizedBox(width: 16,),
                    ],
                  ),

                  SizedBox(height: 12,),

                  Container(
                    height: 36,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      physics: BouncingScrollPhysics(),
                      children: [

                        getWID(true,'Trending'),
                        getWID(false,'Top'),
                        getWID(false,'Art'),
                        getWID(false,'Music'),
                        getWID(false,'Collectibles'),
                        getWID(false,'Sports'),
                        getWID(false,'Utility'),

                      ],
                    ),
                  ),

                  SizedBox(height: 8,),

                  Expanded(
                    child: Container(
                      child: PageView.builder(
                        controller: vp,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: LIS.length,
                        itemBuilder: (context, index) {

                        return getWID2(LIS[index],index);

                      },
                        onPageChanged: (e) {

                          setState(() {

                          });
                        },
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 24),
                    child: Row(
                      children: [

                        SizedBox(width: 8,),

                        Expanded(child: GestureDetector(
                          child: Stack(
                            children: [
                              Positioned(child: Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: kc4.withOpacity(0.75),
                                          spreadRadius: 0,
                                          blurRadius: 16,
                                        )
                                      ],
                                    shape: BoxShape.circle,
                                  ),
                                  height: 30,
                                  width: 30,
                                ),
                              )),
                              Positioned(child: Center(child: Image.asset(ks1+'home.png',color:kc4,width: 28,height: 28,))),
                            ],
                          ),
                        )),
                        Expanded(child: GestureDetector(
                          onTap: () {
                            //TODO
                            Fluttertoast.showToast(
                                msg: "TODO",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                fontSize: 16.0
                            );
                          },
                          child: Center(child: Image.asset(ks1+'dia.png',color:Colors.white.withOpacity(0.5),width: 28,height: 28,)),
                        )),
                        Expanded(child: GestureDetector(
                          onTap: () {
                            //TODO
                            Fluttertoast.showToast(
                                msg: "TODO",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                fontSize: 16.0
                            );
                          },
                          child: Center(child: Image.asset(ks1+'cri.png',color:Colors.white.withOpacity(0.5),width: 28,height: 28,)),
                        )),
                        Expanded(child: GestureDetector(
                          onTap: () {
                            //TODO
                            Fluttertoast.showToast(
                                msg: "TODO",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                fontSize: 16.0
                            );
                          },
                          child: Center(child: Image.asset(ks1+'wal.png',color:Colors.white.withOpacity(0.5),width: 28,height: 28,)),
                        )),

                        SizedBox(width: 8,),

                      ],
                    ),
                  ),

                ],
              ),
            )),

          ],
        ),
      ),
    );
  }

  Widget getWID(bl,st) {
    return GestureDetector(
      onTap: () {

        if(!bl) {
          //TODO
          Fluttertoast.showToast(
              msg: "TODO",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              fontSize: 16.0
          );
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(st,style: TextStyle(
              color: bl?Colors.white:Colors.white.withOpacity(0.5),
              fontWeight: FontWeight.w500,
            ),),
            SizedBox(height: 4,),
            Container(
              height: 4,
              width: bl?40:0,
              color: bl?kc4:Colors.transparent,
            )
          ],
        ),
      ),
    );
  }

  Widget getWID2(NFT nft,index) {
    var open=false;

    try {
      open=index==vp.page.round();
    } catch (e) {
      open=index==1;
    }
    return AnimatedOpacity(
      duration: Duration(milliseconds: 200),
      opacity: open?1:0.5,
      child: Padding(
        padding: EdgeInsets.only(
          top: open?0:78,
          bottom: open?0:42,
          left: open?0:20,
          right: open?0:20,
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/show',arguments: index);
            },
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    margin: EdgeInsets.only(top: 36),
                    height: 300,
                    width: 260,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.04),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.25),
                        width: 2,
                      )
                    ),
                    child: Column(
                      children: [

                        Spacer(),

                        Container(
                          height: 42,
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
                          child: Center(
                            child: Text('Place a Bid',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),),
                          ),
                        )

                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: 0,
                  right: 16,left: 16,
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
                                height: 260,
                                width: 260,
                                child: Image.asset(ks2+nft.pic,fit: BoxFit.cover,),
                              ),
                            ),

                            Positioned(
                                bottom: 0,
                                right: 0,
                                left: 0,
                                child: nft.st1!=''?Container(
                                  height: 48,
                                  child: Blur(
                                    blur: 2,
                                    colorOpacity: 0.04,
                                    blurColor: Colors.white,
                                    child: Container(),
                                  ),
                                ):Container()),

                            Positioned(
                              bottom: 0,
                              right: 0,
                              left: 0,
                              child: nft.st1!=''?Container(
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

                                      Expanded(child: Text(nft.st1,style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),)),
                                      Expanded(child: Text(nft.st2,style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),)),
                                      SizedBox(width: 8,),
                                    ],
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ):Container()),
                          ],
                        ),
                      )
                    ),
                  )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}