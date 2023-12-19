import 'package:flutter/material.dart';
import 'package:stone_wallet_main/UI/Constants/text_styles.dart';

import '../Constants/colors.dart';
import 'new_trip.dart';


class TripsNextPage extends StatefulWidget {
  const TripsNextPage({super.key});

  @override
  State<TripsNextPage> createState() => _TripsNextPageState();
}

class _TripsNextPageState extends State<TripsNextPage> {


  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor:  appBarBackgroundColor,
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios, color: whiteColor,),
          ),
          // title: const Text("Trips",  style: TextStyle(
          //     color: whiteColor, fontSize: 20, fontWeight: FontWeight.w500
          // )
          // ),
        ),        body: SingleChildScrollView(
          child: Container(
              width: width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/background_new_wallet.png"),
                    fit: BoxFit.fill,
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: height*0.04,),
                  Container(
                    width: width,
                    height: height,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.00, -1.00),
                          end: Alignment(0, 1),
                          colors: [
                            newGradient5,
                            newGradient6
                          ],
                        ),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: height*0.03,),
                         Text("Trips",
                          style: LargeTextStyle.large20700(whiteColor)),
                        const SizedBox(height: 8,),
                        Container(width: width*0.15, height: 2, color:  lineColor,),
                        Container(width: width*0.9, height: 1, color:  lineColor2,),
                        SizedBox(height: height*0.1,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            const SizedBox(height: 30,),

                            SizedBox(
                              height: 65,
                              width: width * 0.75,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: buttonColor2,
                                      surfaceTintColor: blackColor,
                                      shadowColor: whiteColor,
                                      elevation: 4
                                  ),
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context)
                                      => const NewTripPage()),
                                    );
                                  },
                                  child:  Text("Trip A",
                                      textAlign: TextAlign.center,
                                      style: LargeTextStyle.large20700(whiteColor))
                              ),
                            ),
                            const SizedBox(height: 30,),
                            SizedBox(
                              height: 65,
                              width: width * 0.75,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: buttonColor2,
                                      surfaceTintColor: blackColor,
                                      shadowColor: whiteColor,
                                      elevation: 4
                                  ),
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context)
                                      => const NewTripPage()),
                                    );
                                  },
                                  child:  Text("Trip B",
                                      textAlign: TextAlign.center,
                                      style: LargeTextStyle.large20700(whiteColor) )
                              ),
                            ),
                            const SizedBox(height: 30,),
                            SizedBox(
                              height: 65,
                              width: width * 0.75,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: buttonColor2,
                                      surfaceTintColor: blackColor,
                                      shadowColor: whiteColor,
                                      elevation: 4
                                  ),
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context)
                                      => const NewTripPage()),
                                    );
                                  },
                                  child:  Text("Trip C",
                                      textAlign: TextAlign.center,
                                      style: LargeTextStyle.large20700(whiteColor))
                              ),
                            ),
                            const SizedBox(height: 50,),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 45,
                                    width: width * 0.43,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: buttonColor2,
                                            surfaceTintColor: blackColor,
                                            shadowColor: whiteColor,
                                            elevation: 4
                                        ),
                                        onPressed: (){
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(builder: (context)
                                          //   => const CreateNewWalletPage()),
                                          // );
                                        },
                                        child:  Text("Join Existing trip",
                                            textAlign: TextAlign.center,
                                            style: RegularTextStyle.regular14600(whiteColor) )
                                    ),
                                  ),
                                  SizedBox(
                                    height: 45,
                                    width: width * 0.43,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: buttonColor2,
                                            surfaceTintColor: blackColor,
                                            shadowColor: whiteColor,
                                            elevation: 4
                                        ),
                                        onPressed: (){
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(builder: (context)
                                          //   => const CreateNewWalletPage()),
                                          // );
                                        },
                                        child:  Text("Create new trip",
                                            textAlign: TextAlign.center,
                                            style: RegularTextStyle.regular14600(whiteColor) )
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
          ),
        )
    );
  }
}
