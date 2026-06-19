import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class taskpage extends StatefulWidget {
  const taskpage({super.key});
  @override
  State<taskpage> createState() => _taskpageState();
}

class _taskpageState extends State<taskpage> {
  @override
  static const bgcolor=Color(0xFFF0DCCC);
  // static const bgcolor=Color(0xFFF0DCCC);
  // static const bgcolor=Color(0xFFF0DCCC);
  // static const bgcolor=Color(0xFFF0DCCC);

  Widget build(BuildContext context) {
    return Scaffold(

      //backgroundColor:Colors.transparent ,
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
          padding: const EdgeInsets.only(top: 90,left: 30),
          child: Container(

            child: Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  spacing: 15,
                  children: [
                // Orange → Purple (1st wala)
                ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
              colors: [Color(0xFFE8632A), Color(0xFF7B5EA7)],
        ).createShader(bounds),
        child: Text(
          "Track Your Glow",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
            ),
                    FaIcon(FontAwesomeIcons.personBiking,size: 30,color: Color(0XFF7B5EA7),),

                  ],
                ),
                Container(child: Text("What did you do today ?",style: TextStyle(fontSize: 17,fontWeight:FontWeight.w400,color: Colors.black.withOpacity(0.5)),)),
                SizedBox(height: 30,),
                Column(
                  children: [
                    //steps section
                    Container(
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
                      width:MediaQuery.of(context).size.width*.85,
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
                    SizedBox(height: 20,),
                    //steps section
                    Container(
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
                        width:MediaQuery.of(context).size.width*.85,
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
                                backgroundColor: Color(0XFF3CB8C4),
                                radius: 35,
                                child: FaIcon(
                                  FontAwesomeIcons.droplet,
                                  color:Colors.white,
                                ),
                              ),
                            ),
                            title: Text("Water",style: TextStyle(fontWeight:.w700,fontSize: 21),),
                            subtitle: Text("2.5 L",style: TextStyle(color: Colors.grey.withOpacity(1)),),
                            trailing: IconButton(onPressed: (){}, icon:Icon(Icons.add,fontWeight: .w500,size: 30,)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    //steps section
                    Container(
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
                        width:MediaQuery.of(context).size.width*.85,
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
                                    color: Color(0XFFF5A623).withOpacity(0.3),
                                    spreadRadius: 4,
                                    blurRadius: 15,
                                    offset:Offset(3, 6),
                                  )
                                ],
                              ),
                              child: CircleAvatar(
                                backgroundColor: Color(0XFFF5A623),
                                radius: 35,
                                child: FaIcon(
                                    FontAwesomeIcons.dumbbell,
                                  color: Colors.white,

                                ),
                              ),
                            ),
                            title: Text("Workout",style: TextStyle(fontWeight:.w700,fontSize: 21),),
                            subtitle: Text("45 mins",style: TextStyle(color: Colors.grey.withOpacity(1)),),
                            trailing: IconButton(onPressed: (){}, icon:Icon(Icons.add,fontWeight: .w500,size: 30,)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    //steps section
                    Container(
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
                        width:MediaQuery.of(context).size.width*.85,
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
                                    color: Color(0XFF7B5EA7).withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 12,
                                    offset:Offset(2, 5),
                                  )
                                ],
                              ),
                              child: CircleAvatar(
                                backgroundColor: Color(0XFF7B5EA7),
                                radius: 35,
                                child:FaIcon(
                                  FontAwesomeIcons.bed,
                                  color: Colors.white,
                                  fontWeight: .bold,
                                ),
                              ),
                            ),
                            title: Text("Sleep",style: TextStyle(fontWeight:.w700,fontSize: 21),),
                            subtitle: Text("7.5 hrs",style: TextStyle(color: Colors.grey.withOpacity(1)),),
                            trailing: IconButton(onPressed: (){}, icon:Icon(Icons.add,fontWeight: .w500,size: 30,)),
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
    );
  }
}
