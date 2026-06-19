import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class accountpage extends StatefulWidget {
  const accountpage({super.key});

  @override
  State<accountpage> createState() => _accountpageState();
}

class _accountpageState extends State<accountpage> {
  @override

  final List iconsData = [
    FaIcon(FontAwesomeIcons.award, color: Colors.blue),
    FaIcon(FontAwesomeIcons.bolt, color: Colors.orangeAccent),
    FaIcon(FontAwesomeIcons.shield, color: Colors.purple),
    FaIcon(FontAwesomeIcons.moon, color: Colors.black),
    FaIcon(FontAwesomeIcons.circlePlus, color: Colors.green),

  ];

  final List<Color> iconColors = [
    Colors.blue.shade100, // blue
    Colors.orangeAccent.shade100, // peach
    Colors.purpleAccent.shade100, // purple
    Colors.white, // light purple
    Colors.greenAccent.shade100, // light purple
  ];

  bool isOn = false; // state mein declare karo

  Widget build(BuildContext context) {
    return Scaffold(
      body: // Scaffold ke andar
      Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFF0DCCC), // start color
                  Color(0xFFE8B4A0), // end color
                ],
              ),
            ),
            child: Container(
              padding: EdgeInsets.only(top: 90,left: 25,right: 25 ),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    mainAxisAlignment:.spaceBetween,
                    children: [
                      ShaderMask(
                        shaderCallback: (bounds) => LinearGradient(
                          colors: [
                            Color(0xFFE8632A), // orange
                            Color(0xFF7B5EA7), // purple
                          ],
                        ).createShader(bounds),
                        child: Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 33,
                            fontWeight: FontWeight.w700,
                            color: Colors.white, // ye zaroori hai
                          ),
                        ),
                      ),
                      FaIcon(FontAwesomeIcons.gear,color: Color(0XFF7B5EA7),size: 30,)
                    ],
                  ),
                  Text("Ready to glow up ?",style: TextStyle(fontSize: 17,fontWeight:FontWeight.w400,color: Colors.black.withOpacity(0.5)),),
                  SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        //borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color:Colors.grey.withOpacity(0.6),
                            spreadRadius:3,
                            blurRadius:15,
                            offset: Offset(2, 5),
                            //blurStyle: BlurStyle.outer
                          )
                        ]
                      ),
                      child: CircleAvatar(
                        radius: 45 ,
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(  "https://randomuser.me/api/portraits/men/1.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Center(child: Text("ABDULLAH",style: TextStyle(fontSize: 20,fontWeight: .bold),)),
                  SizedBox(height: 5,),
                  Center(
                    child: Container(
                      width: 140,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Color(0xFFFFF0E0) ,
                      ),

                     child: Row(
                       mainAxisAlignment: .center,
                       spacing: 10,
                       children: [
                         FaIcon(FontAwesomeIcons.bolt,color: Color(0xFFE8632A),size: 17,),
                         Text("12 Day Streak",style: TextStyle(color: Color(0xFFE8632A),fontWeight: .w700),),

                       ],
                     ),
                    ),
                  ),

                  //CHART DATA HERE
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.03,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15,left: 15,right: 15),
                    height: MediaQuery.of(context).size.height*0.2,
                    width: MediaQuery.of(context).size.width*1,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 3,
                          // blurRadius: 13,
                          // color: Colors.grey.withOpacity(0.5),
                          // offset: Offset(0, 6),
                          // blurStyle: BlurStyle.outer

                            blurRadius: 13,
                            //blurStyle: BlurStyle.outer,
                            spreadRadius: 2,
                            color: Colors.white.withOpacity(0.5),
                            offset: Offset(0,4)
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text("Total Activity",style: TextStyle(color: Colors.black.withOpacity(0.5),fontWeight: .w600,fontSize: 12),),
                        Text("24,390 Kcal ",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 17,),),
                        //SizedBox(height: 10,),
                        SizedBox(
                          height: 125,
                          child: LineChart(
                            LineChartData(
                              gridData: FlGridData(show: false),
                              titlesData: FlTitlesData(show: false),
                              borderData: FlBorderData(show: false),
                              lineBarsData: [
                                LineChartBarData(
                                  spots: [
                                    FlSpot(0, 8),
                                    FlSpot(1, 5),
                                    FlSpot(2, 6),
                                    FlSpot(3, 3),
                                    FlSpot(4, 5),
                                    FlSpot(5, 7),
                                    FlSpot(6, 9),
                                  ],
                                  isCurved: true, // 👈 smooth curve
                                  color: Color(0xFFE8632A), // orange line
                                  barWidth: 2,
                                  dotData: FlDotData(show: false), // dots hide
                                  belowBarData: BarAreaData( // 👈 gradient fill
                                    show: true,
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xFFE8632A).withOpacity(0.6), // top
                                        Color(0xFFE8632A).withOpacity(0.1), // bottom transparent
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Achievements",style: TextStyle(fontSize: 21,fontWeight: .bold),),
                  SizedBox(height: 10,),

                  // ACHIEVEMENT SECTION
                  Container(
                    height: 50,
                    child: ListView.builder(
                      itemCount: iconsData.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color:iconColors[index],
                                      blurRadius: 13,
                                      spreadRadius:3,
                                      offset: Offset(1, 5),
                                    )
                                  ]
                              ),
                              child: CircleAvatar(
                                child: iconsData[index],backgroundColor: iconColors[index],radius: 25,

                              ),
                            ),
                            SizedBox(width: 10,)
                          ],
                        );

                      },),
                  ),

                  SizedBox(height: 36,),
                  //NOTIFICATION CENTER
                  Container(
                    width: MediaQuery.of(context).size.width*1,
                    height: MediaQuery.of(context).size.height*.08,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 13,
                          //blurStyle: BlurStyle.outer,
                          spreadRadius: 2,
                          color: Colors.white.withOpacity(0.5),
                          offset: Offset(0,4)
                          
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: FaIcon(FontAwesomeIcons.bellConcierge),
                        title: Text("Notifications",style: TextStyle(fontWeight: .bold,color: Colors.black.withOpacity(0.7)),),
                        trailing: CupertinoSwitch(
                          value: isOn,
                          onChanged: (val) {
                            setState(() {
                              isOn = val;
                            });
                          },
                          activeColor: Color(0xFF4A90D9),
                        ),
                      ),
                    ),

                  )
                ],
              ),
            ),
        ),
      ),
    );
  }
}
