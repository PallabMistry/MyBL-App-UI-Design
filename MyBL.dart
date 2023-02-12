import 'package:alluidesign/component.dart';
import 'package:alluidesign/utill.dart';
import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class banglalink extends StatefulWidget {
  const banglalink({Key? key}) : super(key: key);

  @override
  State<banglalink> createState() => _banglalinkState();
}

class _banglalinkState extends State<banglalink> {
  @override
  buildImage(String urlBanner, int index) => ClipRRect( borderRadius: BorderRadius.circular(10),
    child: Container(color: Colors.grey,
      child:Image.asset(urlBanner,fit: BoxFit.cover) ,),
  );

  int activeIndex =0;
  int current = 0;
  // bool click = true;
  // var s1= Colors.deepOrangeAccent;

  // final GlobalKey<ScaffoldState> _key = GlobalKey();


  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
            statusBarColor: Colors.deepPurpleAccent
          //color set to purple or set your own color
        )
    );
    return Scaffold(
      // key: _key,
      backgroundColor: Color(0XFFe6e6e6),
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
       toolbarHeight: 80,
        elevation: 30,
        leading: Badge(
          position:BadgePosition.bottomEnd(bottom: 15,end: -1),
          badgeColor: Colors.white,
            badgeContent: Image.asset('assets/icon/taka.png',height: 10,),
        child: CircleAvatar(radius: 22,backgroundColor: Colors.white,child: CircleAvatar(radius: 20,child: Icon(Icons.person_outline,size: 34,color: Colors.black,),backgroundColor:Color(0Xffe6e6e6)))),

        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text('User'),
          Row(
            children: [
              Text('Basic | 726 Points', style: TextStyle(fontSize: 12)),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios,size: 15,)),
            ],
          ),
        ]),
         actions:  [
           Icon(Icons.search_outlined,),
           Padding(
             padding: EdgeInsets.symmetric(horizontal: 20),
             child: Icon(Icons.add_alert_outlined,),
           ),

           InkWell(onTap:  () {
             // _key.currentState!.openDrawer();
           },child: ImageIcon(AssetImage('assets/icon/bars-filter.png',),)),
           SizedBox(width: 10,)
         ],
        shadowColor: Colors.deepOrangeAccent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                ClipRRect(borderRadius: BorderRadius.circular(10),
                  child: Container(color: Colors.white,child: Padding(padding: const EdgeInsets.fromLTRB(12,15,12,15),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Row(
                              children: [
                                ClipRRect(borderRadius: BorderRadius.circular(10),child: Container(color: const Color(0Xffe6e6e6),child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.account_balance_wallet_outlined,size: 18),
                                ))),
                                SizedBox(width: 15,),
                                Text('Current Balance',style: textStyle1),
                              ],
                            ),
                            Divider(),
                            Text('Tk. 300,00'),
                            const Text('Valid till 21 Feb, 2023', style: TextStyle(color: Color(0Xffa6a6a6))),

                            Divider(),
                            ClipRRect(borderRadius: BorderRadius.circular(16),child: Container(width: 100,color: Color(0Xffff0000),child: Padding(
                              padding: const EdgeInsets.fromLTRB(7,4,7,4),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(Icons.add_task_outlined,color: Colors.white,size: 18),
                                  Text('Recharge',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ))),
                          ],),

                          const VerticalDivider(
                            color: Colors.grey,thickness: 10,width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              ClipRRect(borderRadius: BorderRadius.circular(10),child: Container(color:const Color(0Xffe6e6e6),child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.network_check_outlined,size: 18),
                              ))),
                                SizedBox(width: 15,),
                              Text('25 \nMB'),
                              SizedBox(width: 60,),
                              Icon(Icons.arrow_forward_ios,size: 15)
                            ],),
                              const Divider( color: Colors.black,thickness: 5,),
                            Row(children: [
                              ClipRRect(borderRadius: BorderRadius.circular(10),child: Container(color: Color(0Xffe6e6e6),child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.call,size: 18),))),
                              SizedBox(width: 15,),
                              Text('61 \nMin 20 sec'),
                              SizedBox(width: 15,),
                              Icon(Icons.arrow_forward_ios,size: 15)

                            ],),
                            Divider(),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              ClipRRect(borderRadius: BorderRadius.circular(10),child: Container(color:const Color(0Xffe6e6e6),child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.message_outlined,size: 15),
                              ))),
                                SizedBox(width: 15,),
                              Text('0 \nSMS'),
                                SizedBox(width: 58,),
                              Icon(Icons.arrow_forward_ios,size: 15,)

                            ],),
                          ],)
                        ]),
                        mediumheight,
                        ListTile(
                          leading: Image.asset('assets/icon/alert.png',height: 34),
                          title: Text('Your account balance is low',style: TextStyle(color:Color(0xffbfbfbf), fontSize: 10)),
                          subtitle: Text('Get 20 TK. Advance Loan',style: TextStyle(fontSize:13 ,color: Colors.red,fontWeight: FontWeight.w800)),
                          trailing: CircleAvatar(backgroundColor: Color(0xffffe6e6),child: Icon(Icons.arrow_forward,color: Colors.red,size: 18,),radius: 15),
                        )
                      ],
                    ),

                  ),),
                ),
                mediumheight,

                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: offer.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  current = index;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: const EdgeInsets.all(5),
                                width: 80,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: current == index
                                      ? Colors.deepOrangeAccent
                                      : Colors.white54,
                                  borderRadius: current == index
                                      ? BorderRadius.circular(15)
                                      : BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.deepOrangeAccent, width: 2)

                                ),
                                child: Center(
                                  child: Text(
                                    offer.elementAt(index)['text'],
                                    style: GoogleFonts.laila(
                                        fontWeight: FontWeight.w500,
                                        color: current == index
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            // Visibility(
                            //     visible: current == index,
                            //     child: Container(
                            //       width: 5,
                            //       height: 5,
                            //       decoration: const BoxDecoration(
                            //           color: Colors.deepOrange,
                            //           shape: BoxShape.circle),
                            //     ))
                          ],
                        );
                      }),
                ),
                mediumheight,
                Column(
                  children: [
                    CarouselSlider.builder(
                      itemCount: urlBanners.length,
                      itemBuilder: (context, index,realIndex){
                        final urlBanner = urlBanners[index];
                        return buildImage(urlBanner, index);

                      },
                      options: CarouselOptions(
                        height:120,
                        autoPlay: true,
                        autoPlayCurve: Curves.ease,

                        enlargeCenterPage: true,
                        reverse: true,
                        autoPlayInterval: Duration(seconds:7),

                        onPageChanged: (index,reason)=>
                            setState(()=> activeIndex = index),
                      ),),
                    smallheight,
                    AnimatedSmoothIndicator(
                      activeIndex: activeIndex,
                      count: urlBanners.length,
                      effect:const ColorTransitionEffect(
                        activeDotColor: Colors.deepOrange,
                         dotColor: Colors.grey,
                        dotHeight: 6,dotWidth: 6,
                        radius: 10
                      )
                      // ExpandingDotsEffect(activeDotColor: Colors.amber,
                      //     dotColor: Colors.grey,
                      //     dotHeight: 7,
                      //     dotWidth: 7,
                      //     radius: 10,expansionFactor: 5
                      // ),
                    )
                  ],
                ),
                mediumheight,
                ClipRRect(borderRadius: BorderRadius.circular(16),
                  child: Card(child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton.icon(
                            onPressed: () => {},
                            icon: Column(
                              children: [
                                const CircleAvatar(backgroundColor: Colors.deepOrangeAccent,radius: 23,
                                  child: Icon(
                                    Icons.watch_later_outlined,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                                mediumheight,
                                const Text(
                                  'Usage\nHistory',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            label: const Text(
                              '', //'Label',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),

                          TextButton.icon(
                            onPressed: () => {},
                            icon: Column(
                              children: [
                                CircleAvatar(backgroundColor: Colors.deepOrangeAccent,radius: 23,
                                    child:Image.asset('assets/icon/cash-back.png',height: 40, color: Colors.white,)
                                ),
                                mediumheight,
                                const Text(
                                  'Balance\nTransfer',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            label: const Text(
                              '', //'Label',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),

                          TextButton.icon(
                            onPressed: () => {},
                            icon: Column(
                              children: [
                                CircleAvatar(backgroundColor: Colors.deepOrangeAccent,radius: 23,
                                    child: Image.asset('assets/icon/user-account.png',height: 40, color: Colors.white,)
                                ),
                                mediumheight,
                                const Text(
                                  'Switch\nAccount',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            label: const Text(
                              '', //'Label',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),

                        ],)
                    ],),
                  )),
                ),
                mediumheight,
                Row(children: [
                  const CircleAvatar(
                    backgroundColor: Colors.deepOrangeAccent,
                    radius: 13,
                    child: Icon(Icons.favorite,color: Colors.white,size: 18),),mediumwidth,
                   Text('Popular Packs',style: TextStyle(fontWeight: FontWeight.w800),)
                ],),
                mediumheight,
                SizedBox(
                  height: 140,
                  child: ListView.builder(shrinkWrap: true,

                    scrollDirection: Axis.horizontal,
                    itemCount:banglalinkpp.length ,
                    itemBuilder: (context,index){
                      return Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(borderRadius: BorderRadius.circular(16),
                              child: Container(
                                width: 330,height:120 ,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(children: [
                                    Row(children: [
                                      CircleAvatar(backgroundColor: Colors.white30,radius: 20,child: Image.asset(banglalinkpp.elementAt(index)["icon"], height: 20)),
                                      Text(banglalinkpp.elementAt(index)["mb"],style: TextStyle(fontWeight: FontWeight.w700)),
                                    ],),

                                      Text(banglalinkpp.elementAt(index)["title"],style: TextStyle(fontSize: 14)),
                                      smallheight,
                                      SizedBox(width: 240,
                                        child: Row(
                                          children: [
                                          Image.asset(banglalinkpp.elementAt(index)["icon1"], height: 17,),verysmallwidth,
                                          Text(banglalinkpp.elementAt(index)["t1"],style: TextStyle(fontSize: 12)),mediumwidth,
                                          Image.asset(banglalinkpp.elementAt(index)["icon2"], height: 20,),verysmallwidth,
                                          Text(banglalinkpp.elementAt(index)["t2"],style: TextStyle(fontSize: 12)),mediumwidth,
                                          ClipRRect(borderRadius: BorderRadius.circular(16),child: Container(color: Colors.deepOrange,child: Padding(
                                            padding:  EdgeInsets.fromLTRB(9,6,9,6),
                                            child: Text(banglalinkpp.elementAt(index)["t3"],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500, ), textAlign: TextAlign.center,),
                                          ))),
                                        ],),
                                      )


                                  ]),
                                ),
                              ),
                            ),
                          ), Positioned(
                            right: 0,top: 8,child: ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),topRight: Radius.circular(15)),
                              child: Container(
                                width: 100,height: 30,
                                color: Color(0xff2eb82e),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(banglalinkpp.elementAt(index)['t4'],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white),textAlign: TextAlign.center,),
                              ),
                              ),
                            ),
                          ),
                        ],
                      );

                    },),
                ),
                mediumheight,
                ClipRRect(borderRadius: BorderRadius.circular(12),
                  child: Container(color: Colors.white,child: Padding(
                    padding:  const EdgeInsets.symmetric(vertical: 18,horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Icon(Icons.people_alt_outlined,color: Colors.green,size: 80),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Refer MyBL App & Win Free Data'),
                                  Text('For every successful referral'),
                                  Text('- You win 500MB'),
                                  Text('- Your friend wins 1GB'),
                                  ClipRRect(borderRadius: BorderRadius.circular(16),child: Container(width: 100,color: const Color(0Xffff0000),child: const Padding(
                                    padding: EdgeInsets.fromLTRB(7,7,7,6),
                                    child: Text('Refer Now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500, ), textAlign: TextAlign.center,),
                                  ))),
                                ],)

                            ]),
                      ],
                    ),
                  ),),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
