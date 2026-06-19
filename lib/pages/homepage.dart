import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override

  static const bgcolor=Color(0xFFF0DCCC);

  BarChartGroupData _bar(int x, double y, bool highlighted) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          width: 10,
          borderRadius: BorderRadius.circular(6),
          color: highlighted
              ? Color(0xFFE8632A)      // bright orange
              : Color(0xFFE8C5A8),     // light peach
        ),
      ],
    );
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            //width: double.infinity,
            //height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFF0DCCC),
                  Color(0xFFE8B4A0),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 90,left: 25 ),
              child: Container(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Row(
                      spacing: 12,
                      children: [
                        ShaderMask(
                          shaderCallback: (bounds) => LinearGradient(
                            colors: [
                              Color(0xFFE8632A),
                              Color(0xFF7B5EA7),
                            ],
                          ).createShader(bounds),
                          child: Text(
                            "Hey Abdullah",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.white, // zaroori hai
                            ),
                          ),
                        ),
                        FaIcon(FontAwesomeIcons.handFist,size: 30,color: Color(0XFF7B5EA7),),
                        SizedBox(width: 50,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 12,
                                spreadRadius: 2,
                                offset: Offset(0, 5)
                              )
                            ]
                          ),
                          child: CircleAvatar(
                            radius: 27,
                            backgroundImage: NetworkImage(  "https://randomuser.me/api/portraits/men/1.jpg"),
                          ),
                        ),
                      ],
                    ),
                    Container(child: Text("Ready to glow up ?",style: TextStyle(fontSize: 17,fontWeight:FontWeight.w400,color: Colors.black.withOpacity(0.5)),)),
                    SizedBox(height: MediaQuery.of(context).size.height*0.07,),
                    //PEECENTAGE SECTION
                    Center(
                      child: Container(
                        child: CircularPercentIndicator(
                          radius: 140,
                          lineWidth: 22,
                          backgroundColor: Colors.white,
                          percent: 0.75,
                          progressColor: Color(0XFFE8632A),
                          circularStrokeCap: CircularStrokeCap.round,
                          animation: true,
                          animationDuration: 1000,
                          center: Column(
                            mainAxisAlignment: .center,
                            mainAxisSize: .min,
                            children: [
                              Text("80%",style: TextStyle(fontSize: 40,fontWeight: .bold),),
                              Text("Daily Goal",style: TextStyle(fontSize: 17,fontWeight:.w400,color: Colors.black.withOpacity(0.6)),),


                            ],
                          ),

                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                    // RUN CONTAINER SECTION
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 13,
                                  spreadRadius: 3,
                                  color: Colors.purple.shade100,
                                  offset: Offset(1, 5)
                              )
                            ]
                        ),
                        child: Container(
                          width:MediaQuery.of(context).size.width*1,
                          height: MediaQuery.of(context).size.height*.1,
                          decoration:BoxDecoration(
                            color: Colors.purple.shade300,
                            borderRadius: BorderRadiusGeometry.circular(20),

                          ),
                          child:Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow:[
                                    BoxShadow(
                                      color: Colors.blue.withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 12,
                                      offset:Offset(2, 5),
                                    )
                                  ],
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 35,
                                  child: FaIcon(
                                    FontAwesomeIcons.personWalkingArrowRight,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              title: Text("Run",style: TextStyle(fontWeight:.w700,fontSize: 21,color: Colors.white),),
                              subtitle: Row(
                                children: [
                                  FaIcon(FontAwesomeIcons.clock,size: 16,color: Colors.white.withOpacity(0.7),fontWeight: .bold,),
                                  SizedBox(width: 7,),
                                  Text("1h",style: TextStyle(fontSize: 16,color: Colors.white.withOpacity(0.6),),),
                                  SizedBox(width: 25,),
                                  FaIcon(FontAwesomeIcons.fire,size: 16,color: Colors.white.withOpacity(0.7),),
                                  SizedBox(width: 7,),
                                  Text("530 Kcal",style: TextStyle(fontSize: 16,color: Colors.white.withOpacity(0.6),),)
                                ],
                              ),
                              trailing: IconButton(onPressed: (){}, icon:FaIcon(FontAwesomeIcons.personRunning,color:Colors.orangeAccent,)),
                            ),

                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),


                    //sleep chart section
                    Padding(
                      padding: EdgeInsets.only(right: 25),
                      child: Container(
                        height:MediaQuery.of(context).size.height*0.15,
                        width:MediaQuery.of(context).size.width*1,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius:2,
                                  blurRadius: 12,
                                  offset: Offset(1, 5),
                                  blurStyle:.outer
                              )
                            ]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Row(
                                spacing: 8,
                                children: [
                                  FaIcon(FontAwesomeIcons.moon,color: Colors.deepOrangeAccent,),
                                  Text("Sleep",style: TextStyle(fontSize: 20,fontWeight: .bold),)
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                //mainAxisAlignment: .spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text("7.30",style: TextStyle(fontWeight:.w700,fontSize: 17),),
                                      Text("hrs",style: TextStyle(fontWeight:.w400,fontSize: 17),),
                                    ],
                                  ),
                                  Expanded( // 👈 ye add karo
                                    child: SizedBox(
                                      height: 60,
                                      child: BarChart(
                                        BarChartData(
                                          alignment: BarChartAlignment.spaceAround,
                                          maxY: 10,
                                          barTouchData: BarTouchData(enabled: false),
                                          titlesData: FlTitlesData(show: false),
                                          borderData: FlBorderData(show: false),
                                          gridData: FlGridData(show: false),
                                          barGroups: [
                                            _bar(0, 5, false),
                                            _bar(1, 7, true),
                                            _bar(2, 4, false),
                                            _bar(3, 6, false),
                                            _bar(4, 10, true),
                                            _bar(5, 5, false),
                                            _bar(6, 4, true),
                                            _bar(7, 6, false),
                                            _bar(8, 3, true),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                    //CALORIES AND SLEEPS SECTION
                    Container(
                      padding: EdgeInsets.only(right: 25),

                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(top: 15,left: 15),
                              //width: MediaQuery.of(context).size.width*0.1,
                              height:MediaQuery.of(context).size.height*0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.7),
                                    spreadRadius:3,
                                    blurRadius: 12,
                                    offset: Offset(1, 5),
                                    //blurStyle:.outer
                                    //blurStyle:.outer
                                  )
                                ]
                              ),
                              child: Column(
                                crossAxisAlignment:.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: .start,
                                    children: [
                                      FaIcon(FontAwesomeIcons.fire,color: Colors.red,),
                                      SizedBox(width: 10,),
                                      Text("Calories",style: TextStyle(fontSize: 19,fontWeight: .bold),)
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 50,top: 20),
                                    child: CircularPercentIndicator(
                                        radius: 28,
                                      animation: true,
                                      animationDuration: 1000,
                                      circularStrokeCap: CircularStrokeCap.round,
                                      percent: 0.7,
                                      lineWidth: 9,
                                      progressColor: Colors.red,
                                      backgroundColor:Colors.red.shade100,
                                      center: Text("82%",style: TextStyle(fontWeight: .bold),),


                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Text("5,839",style: TextStyle(fontWeight: .bold,fontSize: 20),),
                                  Text("Kcal",style: TextStyle(fontSize:14,color: Colors.black.withOpacity(0.7)),),

                                ],
                              ),
                            ),
                          ),
                          SizedBox(width:10,),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(top: 15,left: 15),
                              //width: MediaQuery.of(context).size.width*0.1,
                              height:MediaQuery.of(context).size.height*0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius:2,
                                        blurRadius: 12,
                                        offset: Offset(1, 5),
                                        blurStyle:.outer
                                    )
                                  ]
                              ),
                              child: Column(
                                crossAxisAlignment:.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: .start,
                                    children: [
                                      FaIcon(FontAwesomeIcons.personWalkingLuggage,color: Colors.blue,),
                                      SizedBox(width: 10,),
                                      Text("Steps",style: TextStyle(fontSize: 19,fontWeight: .bold),)
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 50,top: 20),
                                    child: CircularPercentIndicator(
                                      radius: 28,
                                      animation: true,
                                      animationDuration: 1000,
                                      circularStrokeCap: CircularStrokeCap.round,
                                      percent: 0.7,
                                      lineWidth: 9,
                                      progressColor: Colors.blue,
                                      backgroundColor:Colors.blue.shade100,
                                      center: Text("69%",style: TextStyle(fontWeight: .bold),),

                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text("8,432",style: TextStyle(fontWeight: .bold,fontSize: 20),),
                                  Text("steps",style: TextStyle(fontSize:14,color: Colors.black.withOpacity(0.7)),),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),


                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 13,
                                  spreadRadius: 3,
                                  color: Colors.purple.shade100,
                                  offset: Offset(1, 5)
                              )
                            ]
                        ),
                        child: Container(
                          width:MediaQuery.of(context).size.width*1,
                          height: MediaQuery.of(context).size.height*.1,
                          decoration:BoxDecoration(
                            color: Colors.purple.shade300,
                            borderRadius: BorderRadiusGeometry.circular(20),

                          ),
                          child:Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow:[
                                    BoxShadow(
                                      color: Colors.blue.withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 12,
                                      offset:Offset(2, 5),
                                    )
                                  ],
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 35,
                                  child: FaIcon(
                                    FontAwesomeIcons.personWalkingArrowRight,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              title: Text("Run",style: TextStyle(fontWeight:.w700,fontSize: 21,color: Colors.white),),
                              subtitle: Row(
                                children: [
                                  FaIcon(FontAwesomeIcons.clock,size: 16,color: Colors.white.withOpacity(0.7),fontWeight: .bold,),
                                  SizedBox(width: 7,),
                                  Text("1h",style: TextStyle(fontSize: 16,color: Colors.white.withOpacity(0.6),),),
                                  SizedBox(width: 25,),
                                  FaIcon(FontAwesomeIcons.fire,size: 16,color: Colors.white.withOpacity(0.7),),
                                  SizedBox(width: 7,),
                                  Text("530 Kcal",style: TextStyle(fontSize: 16,color: Colors.white.withOpacity(0.6),),)
                                ],
                              ),
                              trailing: IconButton(onPressed: (){}, icon:FaIcon(FontAwesomeIcons.personRunning,color:Colors.orangeAccent,)),
                            ),

                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 12,
                                  spreadRadius: 2,
                                  color: Colors.grey.withOpacity(0.3),
                                  offset: Offset(0, 4)
                              )
                            ]
                        ),
                        child: Container(
                          width:MediaQuery.of(context).size.width*1,
                          height: MediaQuery.of(context).size.height*.1,
                          decoration:BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusGeometry.circular(20),

                          ),
                          child:Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow:[
                                    BoxShadow(
                                      color: Colors.blue.withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 12,
                                      offset:Offset(2, 5),
                                    )
                                  ],
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 35,
                                  child: FaIcon(
                                    FontAwesomeIcons.personWalkingArrowRight,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              title: Text("Steps",style: TextStyle(fontWeight:.w700,fontSize: 21),),
                              subtitle: Text("8432 steps",style: TextStyle(color: Colors.grey.withOpacity(1)),),
                              trailing: IconButton(onPressed: (){}, icon:Icon(Icons.add,fontWeight: .w500,size: 30,)),
                            ),

                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 12,
                                  spreadRadius: 2,
                                  color: Colors.grey.withOpacity(0.3),
                                  offset: Offset(0, 4)
                              )
                            ]
                        ),
                        child: Container(
                          width:MediaQuery.of(context).size.width*1,
                          height: MediaQuery.of(context).size.height*.1,
                          decoration:BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusGeometry.circular(20),

                          ),
                          child:Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow:[
                                    BoxShadow(
                                      color: Colors.blue.withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 12,
                                      offset:Offset(2, 5),
                                    )
                                  ],
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 35,
                                  child: FaIcon(
                                    FontAwesomeIcons.personWalkingArrowRight,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              title: Text("Steps",style: TextStyle(fontWeight:.w700,fontSize: 21),),
                              subtitle: Text("8432 steps",style: TextStyle(color: Colors.grey.withOpacity(1)),),
                              trailing: IconButton(onPressed: (){}, icon:Icon(Icons.add,fontWeight: .w500,size: 30,)),
                            ),

                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
        ),
      )

    );
  }
}
