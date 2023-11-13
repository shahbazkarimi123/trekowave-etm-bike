import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> details = [
    "User id",
    "MOB",
    "Device Detail",
    "Package Detail(Km)",
    "Package Start Date",
    "Package End Date",
    "Vehical Detail",
    "Customer Detail",
    "Insurance Sorf Copy",


  ];
  // List<Color> color = const [
  //   Color(0xFFFFCF2F),
  //   Color(0xFF6FE08D),
  //   Color(0xFF618DFD),
  //   Color(0xFFfc7f7f),
  //   Color(0xFFCB84FB),
  //   Color(0xFF78E667),
  //   Color(0xFFfc7f7f),
  //   Color(0xFFCB84FB),
  //   Color(0xFF78E667),


  // ];
  List<Icon> icon = const [
    Icon(Icons.verified_user,color: Color(0xFFC81D1D),size: 30,),
    Icon(Icons.phone,color: Color(0xFFC81D1D),size: 30,),
    Icon(Icons.perm_device_info,color: Color(0xFFC81D1D),size: 30,),
    Icon(Icons.shopping_cart,color: Color(0xFFC81D1D),size: 30,),
    Icon(Icons.date_range,color: Color(0xFFC81D1D),size: 30,),
    Icon(Icons.send_to_mobile,color: Color(0xFFC81D1D),size: 30,),
    Icon(Icons.directions_car,color: Color(0xFFC81D1D),size: 30,),
    Icon(Icons.man,color: Color(0xFFC81D1D),size: 30,),
    Icon(Icons.document_scanner,color: Color(0xFFC81D1D),size: 30,),
  ];
    return Scaffold(
      backgroundColor: Color(0xFFDAD8D8),
      body: ListView(
        children: <Widget>[
          Container(
            padding:const EdgeInsets.only(top: 15,left:15,right: 15,bottom: 15),
            decoration: const BoxDecoration(
              boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 8.0,
                                offset: Offset(0.0,0.75),
                                
                              )
                            ],
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget>[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.dashboard,
                    size: 30,
                    color: Color(0xFFC81D1D),),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Color(0xFFC81D1D),

                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3,bottom: 15),
                  child: Image.asset('assets/images/etmbikes.png'),
                ),
                // Container(
                  
                //   margin: const EdgeInsets.only(top:5,bottom: 20),
                //   width: MediaQuery.of(context).size.width,
                //   height: 55,
                //   alignment: Alignment.center,
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(10)
                //   ),
                // ),
                Padding(
                  padding:const  EdgeInsets.all(2),
                  child: Column(children: <Widget>[
                    GridView.builder(
                      itemCount: details.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3
                        ,
                        childAspectRatio: MediaQuery.of(context).size.width /
                            (MediaQuery.of(context).size.height /2),
                            crossAxisSpacing: 1,
                            
                      ),
                      itemBuilder: (context,index){
                        return InkWell(
                        onTap: () {
                          print(details[index]);
                        },
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            // boxShadow: const <BoxShadow>[
                            //   BoxShadow(
                            //     color: Colors.white,
                            //     blurRadius: 7.0,
                            //     offset: Offset(0.0,0.7),
                                
                            //   )
                            // ],
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15),
                              ),
                              color: Colors.white),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                icon[index],
                                Text(
                                  details[index],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                
                              ]),
                        ),
                      );
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.stretch,
                        //   children: <Widget>[
                          
                        //   Container(
                        //     height: MediaQuery.of(context).size.height/10,
                        //     width: MediaQuery.of(context).size.width/4,
                        //     margin:const EdgeInsets.all(5),
                        //     decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(15),
                        //       color: Colors.white,
                        //     shape: BoxShape.rectangle),
                        //     child: Center(child: Column(children: <Widget>[
                        //       _icon[index],
                        //       Text(details[index].toString())
                        //     ],)),
                        //   )
                        // ],);
                      }
                    )
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


