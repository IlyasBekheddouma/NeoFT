import 'package:flutter/material.dart';
import 'package:neo_ft/ui/items/GradientText.dart';
import 'package:neo_ft/utils/Ext1.dart';

class SplachScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var dt=MediaQuery.of(context).size;
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

            Positioned.fill(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Card(
                  clipBehavior: Clip.hardEdge,
                  margin: EdgeInsets.zero,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(42)
                    ),
                  ),
                  child: Container(
                    height: dt.height/2,
                    child: Column(
                      children: [

                        Expanded(child: Row(
                          children: [
                            Expanded(child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        ks2+'n5.jpg',
                                      ),
                                      fit: BoxFit.fill
                                  )
                              ),
                            )),
                            Expanded(child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        ks2+'n4.jpg',
                                      ),
                                      fit: BoxFit.fill
                                  )
                              ),
                            )),
                          ],
                        )),

                        Expanded(child: Row(
                          children: [
                            Expanded(child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        ks2+'n7.jpg',
                                      ),
                                      fit: BoxFit.fill
                                  )
                              ),
                            )),
                            Expanded(child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        ks2+'n2.jpg',
                                      ),
                                      fit: BoxFit.fill
                                  )
                              ),
                            )),
                          ],
                        )),

                      ],
                    ),
                  ),
                ),

                Spacer(flex: 3,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Explore,\nCollect & Sell',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28
                  ),),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: GradientText(
                    'NFTs',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    ),
                    gradient: LinearGradient(colors: [
                      kc3,
                      kc4,
                    ]),
                  ),
                ),

                Spacer(flex: 1,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('More then 100+ NFT available for\nCollect & Sell. get your NFT from now.',style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18
                  ),),
                ),

                Spacer(flex: 4,),

                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/main');
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

                        Text('Get Started',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),),

                        SizedBox(width: 2,),

                        Image.asset(ks1+'rf.png',width: 34,fit: BoxFit.fitWidth,),

                        Spacer(),

                      ],
                    ),
                  ),
                )

              ],

            ))

          ],
        ),
      ),
    );
  }
}