import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter/widgets.dart';

//the main function is the starting point for all our flutter apps.
void main() {
  runApp(
    // DevicePreview(builder: (context) =>
    MaterialApp(
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('ar', 'AE'), // English, no country code
          // Locale('es', ''), // Spanish, no country code
        ],
        home: Appy()),

    // )
  );
}

//411x823

class Appy extends StatefulWidget {
  @override
  _AppyState createState() => _AppyState();
}

class _AppyState extends State<Appy> {
  final style1 = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
  final style2 = TextStyle(fontSize: 62, fontWeight: FontWeight.bold);
  final style3 = TextStyle(fontSize: 70, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    // final _height = MediaQuery.of (context).size.height -MediaQuery.of(context).padding.top-kToolbarHeight;
    // final _width = MediaQuery.of(context).size.width;

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    // DeviceType getDeviceType(MediaQuery mediaQueryData) {
    //   Orientation oreintation = mediaQueryData.oreintation;
    //   double width = 0;
    //   if (orientation == Orientation.landscape) {
    //     width = mediaQueryData.size.height;
    //   } else {
    //     width = mediaQueryData.size.width;
    //   }
    //   if (width >= 950) {
    //     return DeviceType.Desktop;
    //   }
    //   if (width >= 600) {
    //     return DeviceType.Tablet;
    //   }
    //   return DeviceType.Mobile;
    //
    // }

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Center(
            child: Text(
          'أذكار اليوم',
          style: style1,
        )),
        backgroundColor: Colors.blueGrey[900],
        elevation: 4.0,
      ),
      body: Container(
        // width: screenWidth,
        // height: screenHeight,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Images/7-2-min.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.darken,
                ))),

        child: Center(
          child: Container(
            // builder: (context,constrains) {
            // double localHeight=constrains.maxHeight;
            // double localWidth=constrains.maxWidth;
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // builder : (context,constrains){},
                    Container(
                      // width: screenWidth/2,
                      // height: screenHeight/16,
                      width: 150.0,
                      height: 50.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (Set<MaterialState> states) {
                            return Colors.blueGrey[900].withOpacity(0.7);
                          }),
                        ),
                        child: Text(
                          'تسبيح',
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Page2()),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      width: 150.0,
                      height: 50.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (Set<MaterialState> states) {
                            return Colors.blueGrey[900].withOpacity(0.7);
                          }),
                        ),
                        child: Text('أذكار الصباح و المساء'),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Page3()),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      width: 150.0,
                      height: 50.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (Set<MaterialState> states) {
                            return Colors.blueGrey[900].withOpacity(0.7);
                          }),
                        ),
                        child: Text('إضافه دعاء'),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Page4()),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ],
            ),
            // return Center() ;
          ),
        ),
      ),
    );

    // final _height = MediaQuery.of(context).size.height -

    //
    // final _width = MediaQuery(context).size.width;
  }
}

class Page2 extends StatefulWidget {
  @override
  _Page2 createState() => _Page2();
}

class _Page2 extends State<Page2> {
  final style0 = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final style1 = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
  final style2 = TextStyle(fontSize: 62, fontWeight: FontWeight.bold);
  final style3 = TextStyle(fontSize: 70, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    // MediaQueryData queryData = MediaQuery.of(context);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    var mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
          title: Center(),
          backgroundColor: Colors.blueGrey[900],
          elevation: 4.0,
          actions: []),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Images/ima2.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.darken,
                ))),
// width: screenWidth,
//         height: screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: LayoutBuilder(
                        // var deviceType= getDeviceType (mediaQueryData);
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          double localHeight = constraints.maxHeight;
                          double localWidth = constraints.maxWidth;
                          print('height = $screenHeight');
                          print('width = $screenWidth');
                          // print ('localheight = $localHeight');
                          // print ('localwidth = $localWidth');
                          return Container(
                            width: screenWidth / 2.11,
                            height: screenHeight / 4,
                            //414/200.0
                            //896/200.0
                            // width: 200.0,
                            // height: 200.0,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith(
                                        (Set<MaterialState> states) {
                                  return Colors.blueGrey[900].withOpacity(0.05);
                                }),
                              ),
                              child: Text(
                                'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ',
                                style: style1,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => Page2_1()),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          double localHeight = constraints.maxHeight;
                          double localWidth = constraints.maxWidth;
                          print('height = $screenHeight');
                          print('width = $screenWidth');
                          child:
                          return Container(
                            width: screenWidth / 2.11,
                            height: screenHeight / 4,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith(
                                        (Set<MaterialState> states) {
                                  return Colors.blueGrey[900].withOpacity(0.05);
                                }),
                              ),
                              child: Text(
                                ' أَسْتَغْفِرُ اللَّهَ الْعَظِيم َِ',
                                style: style1,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => Page2_2()),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    double localHeight = constraints.maxHeight;
                    double localWidth = constraints.maxWidth;
                    print('height = $screenHeight');
                    print('width = $screenWidth');
                    child:
                    return Container(
                      width: screenWidth / 2.11,
                      height: screenHeight / 4,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (Set<MaterialState> states) {
                            return Colors.blueGrey[900].withOpacity(0.05);
                          }),
                        ),
                        child: Text(
                          ' الْحَمْدُللّه ِِ',
                          style: style1,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Page2_3()),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     width: 200.0,
              //     height: 200.0,
              //     child:  ElevatedButton(
              //       style: ButtonStyle(backgroundColor:
              //       MaterialStateProperty.resolveWith((Set<MaterialState> states)
              //       {return Colors.blueGrey[900].withOpacity(0.05); }),),
              //       child: Text('الْحَمْدُ للّهِِ'),
              //       onPressed: (){Navigator.of(context)
              //           .push ( MaterialPageRoute(
              //           builder: (context)=> Page2_3()
              //       ),
              //       );
              //
              //       },
              //     ),
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.all(4.0),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    double localHeight = constraints.maxHeight;
                    double localWidth = constraints.maxWidth;
                    print('height = $screenHeight');
                    print('width = $screenWidth');
                    child:
                    return Container(
                      width: screenWidth / 2.11,
                      height: screenHeight / 4,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (Set<MaterialState> states) {
                            return Colors.blueGrey[900].withOpacity(0.05);
                          }),
                        ),
                        child: Text(
                          ' اللَّهـُمَّ صَلِّ عَلَى  سَيِّدِنَا مُحَمَّد  ٍٍ',
                          style: style1,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Page2_4()),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

class Page2_1 extends StatefulWidget {
  @override
  _Page2_1 createState() => _Page2_1();
}

class _Page2_1 extends State<Page2_1> {
  @override
  int counter = 0;
  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  Widget build(BuildContext context) {
    // MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 4.0,
        title: Center(
            // child: Text('Azkar El Yom'),

            ),
        backgroundColor: Colors.blueGrey[900],
      ),
      floatingActionButton: SizedBox.fromSize(
        size: Size.square(70),
        child: FloatingActionButton(
          onPressed: _incrementCounter,
          // tooltip: 'Increment',
          backgroundColor: Colors.blueGrey[600],
          child: Icon(Icons.add),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey[900],
        child: Container(
          height: 50,
        ),
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Images/ima4.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.darken,
                ))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height: 400.0,
                        width: 600.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith(
                                (Set<MaterialState> states) {
                              return Colors.blueGrey[900].withOpacity(0.05);
                            }),
                          ),
                          child: Center(
                            child: Text(
                              '       سُبْحَانَ اللَّهِ وَبِحَمْدِهِ،سُبْحَانَ اللَّهِ        الْعَظِيمِ',
                              style: TextStyle(
                                fontSize: 50.0,
                                // fontWeight:  FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          onPressed: _incrementCounter,
                        ),
                      ),
                      Container(
                        // decoration: new BoxDecoration(
                        //     shape: BoxShape.circle,
                        //     color: Colors.white.withOpacity(0.05),
                        // ),
                        child: Text(
                          '$counter',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Amiri',
                              fontSize: 70),
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2_2 extends StatefulWidget {
  @override
  _Page2_2 createState() => _Page2_2();
}

class _Page2_2 extends State<Page2_2> {
  @override
  int counter2_2 = 0;
  void _incrementCounter() {
    setState(() {
      counter2_2++;
    });
  }

  Widget build(BuildContext context) {
    // MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 4.0,
        title: Center(
            // child: Text('Azkar El Yom'),

            ),
        backgroundColor: Colors.blueGrey[900],
      ),
      floatingActionButton: SizedBox.fromSize(
        size: Size.square(70),
        child: FloatingActionButton(
          onPressed: _incrementCounter,
          // tooltip: 'Increment',
          backgroundColor: Colors.blueGrey[600],
          child: Icon(Icons.add),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey[900],
        child: Container(
          height: 50,
        ),
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Images/ima2_2.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.darken,
                ))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //   Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Container(
              //       width: 90.0,
              //       height: 50.0,
              //       child:  ElevatedButton(
              //         style: ButtonStyle(backgroundColor:
              //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
              //         {return Colors.deepPurpleAccent; }),),
              //         child: Text('عوده'),
              //         onPressed: () {
              //           Navigator.of(context)
              //               .pop (
              //           );
              //
              //         },
              //       ),
              //     ),
              //   ],
              // ),
              Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: 400.0,
                        height: 400.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith(
                                (Set<MaterialState> states) {
                              return Colors.blueGrey[900].withOpacity(0.05);
                            }),
                          ),
                          child: Center(
                            child: Text(
                              '  أَسْتَغْفِرُ اللَّهَ الْعَظِيمَِ ',
                              style: TextStyle(
                                fontSize: 80.0,
                                // fontWeight:  FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          onPressed: _incrementCounter,
                        ),
                      ),
                      Text(
                        '$counter2_2',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Amiri',
                            fontSize: 70),
                      ),
                    ]),
              ),

              // Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children:[
              //       Container(
              //
              //         height: 50,
              //         width: 200,
              //         child:  ElevatedButton(
              //
              //           style: ButtonStyle(backgroundColor:
              //           MaterialStateProperty.resolveWith((Set<MaterialState> states)
              //           {return Colors.blueGrey[900]; }),),
              //
              //           child: Text('سبحان الله العظيم',
              //             style: TextStyle(
              //               fontSize: 20.0,
              //               // fontWeight:  FontWeight.bold,
              //               color: Colors.white,
              //
              //               // backgroundColor: Colors.white,
              //             ),
              //           ),
              //
              //
              //
              //         ),
              //       ),
              //       SizedBox(
              //         width: 50,
              //
              //       ),
              //       Container(
              //
              //         height: 50,
              //         width: 200,
              //         child:  ElevatedButton(
              //
              //           style: ButtonStyle(backgroundColor:
              //           MaterialStateProperty.resolveWith((Set<MaterialState> states)
              //           {return Colors.blueGrey[900]; }),),
              //
              //           child: Text('سبحان الله وبحمده',
              //             style: TextStyle(
              //               fontSize: 20.0,
              //               // fontWeight:  FontWeight.bold,
              //               color: Colors.white,
              //
              //               // backgroundColor: Colors.white,
              //             ),
              //           ),
              //
              //
              //
              //         ),
              //       ),
              //     ]
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page2_3 extends StatefulWidget {
  @override
  _Page2_3 createState() => _Page2_3();
}

class _Page2_3 extends State<Page2_3> {
  @override
  int counter2_2 = 0;
  void _incrementCounter() {
    setState(() {
      counter2_2++;
    });
  }

  Widget build(BuildContext context) {
    // MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 4.0,
        title: Center(
            // child: Text('Azkar El Yom'),

            ),
        backgroundColor: Colors.blueGrey[900],
      ),
      floatingActionButton: SizedBox.fromSize(
        size: Size.square(70),
        child: FloatingActionButton(
          onPressed: _incrementCounter,
          // tooltip: 'Increment',
          backgroundColor: Colors.blueGrey[600],
          child: Icon(Icons.add),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey[900],
        child: Container(
          height: 50,
        ),
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Images/ima6.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.darken,
                ))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Container(
            //       width: 90.0,
            //       height: 50.0,
            //       child:  ElevatedButton(
            //         style: ButtonStyle(backgroundColor:
            //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            //         {return Colors.deepPurpleAccent; }),),
            //         child: Text('عوده'),
            //         onPressed: () {
            //           Navigator.of(context)
            //               .pop (
            //           );
            //
            //         },
            //       ),
            //     ),
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: 400.0,
                        height: 400.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith(
                                (Set<MaterialState> states) {
                              return Colors.blueGrey[900].withOpacity(0.05);
                            }),
                          ),
                          child: Center(
                            child: Text(
                              ' الْحَمْدُللّه ',
                              style: TextStyle(
                                fontSize: 80.0,
                                // fontWeight:  FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          onPressed: _incrementCounter,
                        ),
                      ),
                      Text(
                        '$counter2_2',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Amiri',
                            fontSize: 70),
                      ),
                    ]),
              ),
            ),

            // Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children:[
            //       Container(
            //
            //         height: 50,
            //         width: 200,
            //         child:  ElevatedButton(
            //
            //           style: ButtonStyle(backgroundColor:
            //           MaterialStateProperty.resolveWith((Set<MaterialState> states)
            //           {return Colors.blueGrey[900]; }),),
            //
            //           child: Text('سبحان الله العظيم',
            //             style: TextStyle(
            //               fontSize: 20.0,
            //               // fontWeight:  FontWeight.bold,
            //               color: Colors.white,
            //
            //               // backgroundColor: Colors.white,
            //             ),
            //           ),
            //
            //
            //
            //         ),
            //       ),
            //       SizedBox(
            //         width: 50,
            //
            //       ),
            //       Container(
            //
            //         height: 50,
            //         width: 200,
            //         child:  ElevatedButton(
            //
            //           style: ButtonStyle(backgroundColor:
            //           MaterialStateProperty.resolveWith((Set<MaterialState> states)
            //           {return Colors.blueGrey[900]; }),),
            //
            //           child: Text('سبحان الله وبحمده',
            //             style: TextStyle(
            //               fontSize: 20.0,
            //               // fontWeight:  FontWeight.bold,
            //               color: Colors.white,
            //
            //               // backgroundColor: Colors.white,
            //             ),
            //           ),
            //
            //
            //
            //         ),
            //       ),
            //     ]
            // ),
          ],
        ),
      ),
    );
  }
}

class Page2_4 extends StatefulWidget {
  @override
  _Page2_4 createState() => _Page2_4();
}

class _Page2_4 extends State<Page2_4> {
  @override
  int counter2_2 = 0;
  void _incrementCounter() {
    setState(() {
      counter2_2++;
    });
  }

  Widget build(BuildContext context) {
    // MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 4.0,
        title: Center(
            // child: Text('Azkar El Yom'),

            ),
        backgroundColor: Colors.blueGrey[900],
      ),
      floatingActionButton: SizedBox.fromSize(
        size: Size.square(70),
        child: FloatingActionButton(
          onPressed: _incrementCounter,
          // tooltip: 'Increment',
          backgroundColor: Colors.blueGrey[600],
          child: Icon(Icons.add),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey[900],
        child: Container(
          height: 50,
        ),
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Images/ima3.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.darken,
                ))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   width: 90.0,
                  //   height: 50.0,
                  //   child:  ElevatedButton(
                  //     style: ButtonStyle(backgroundColor:
                  //     MaterialStateProperty.resolveWith((Set<MaterialState> states)
                  //     {return Colors.deepPurpleAccent; }),),
                  //     child: Text('عوده'),
                  //     onPressed: () {
                  //       Navigator.of(context)
                  //           .pop (
                  //       );
                  //
                  //     },
                  //   ),
                  // ),
                ],
              ),
              Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: 400.0,
                        height: 400.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith(
                                (Set<MaterialState> states) {
                              return Colors.blueGrey[900].withOpacity(0.05);
                            }),
                          ),
                          child: Center(
                            child: Text(
                              ' اللَّهـُمَّ صَلِّ عَلَى سَيِّدِنَا مُحَمَّد ٍ',
                              style: TextStyle(
                                fontSize: 70.0,
                                // fontWeight:  FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          onPressed: _incrementCounter,
                        ),
                      ),
                      Text(
                        '$counter2_2',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Amiri',
                            fontSize: 70),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  ScrollController _rrectController = ScrollController();
  @override
  Widget build(BuildContext context) {
    // MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Colors.blueGrey[900],
        title: Center(
            // child: Text('Azkar El Yom'),
            ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Images/ima7.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.darken,
                ))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child: Text(
                        'باسم الله الذي لايضر مع اسمه شيء في الأرض ولا في السماء وهو السميع العليم   ( ۳ مرات )'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child: Text(
                        'اللهم إنا نعوذ بك من أن نشرك بك شيئًا نعلمه، ونستغفرك لما لا نعلمه  ( ۳ مرات )'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       width:300.0,
            //       height: 50.0,
            //       child:  ElevatedButton(
            //         style: ButtonStyle(backgroundColor:
            //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            //         {return Colors.blueGrey[900]; }),),
            //         child: Text('اللهم إنا نعوذ بك من أن نشرك بك شيئًا نعلمه، ونستغفرك لما لا نعلمه  ( ۳ مرات )'),
            //         onPressed: () {},
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 20,
            //
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child:
                        Text('نعوذ بكلمات الله التامات من شر ماخلق ( ۳ مرات )'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child: Text(
                        'رضيت بالله ربا وبالاسلام دينا وبمحمد صلى الله عليه وسلم نبيا ورسولا ( ۳ مرات )'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 80.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child: Text(
                        'اللهم أنت ربي لا إله إلا أنت، خلقتني وأنا عبدك، وأنا على عهدك ووعدك ما استطعت، أعوذ بك من شر ما صنعت، أبوء لك بنعمتك علي، وأبوء بذنبي فاغفر لي فإنه لا يغفر الذنوب إلا أنت ( ۳ مرات )'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child: Text(
                        'اللهم عافنا في ابداننا - اللهم عافنا في اسماعنا - اللهم عافنا في ابصارنا - اللهم عافنا في قوتنا ( ۳ مرات )'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 83.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child: Text(
                        'اللهم إنا نعوذ بك من الكفر و الفقر - اللهم إنا نعوذ بك من عذاب القبر - اللهم إنا نعوذ بك من شتات الامر - اللهم نعوذ بك من ضيق الصدر لا إله إلا أنت(۳ مرات)'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 90.0,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.cyan;
                      }),
                    ),
                    child: Text('التالي'),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Page3_1()),
                      );
                    },
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: 20,
            //
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     Container(
            //       width:600.0,
            //       height: 50.0,
            //       child:  ElevatedButton(
            //         style: ButtonStyle(backgroundColor:
            //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            //         {return Colors.blueGrey[900]; }),),
            //         child: Text('أصبحنا واصبح الملك لله والحمدلله - أصبحنا على فطرة الإسلام ، وعلى كلمة الإخلاص، وعلى دين نبينا محمد ﷺ وعلى ملة أبينا إبراهيم حنيفًا مسلمًا وما كان من المشركين ( ۳ مرات )'),
            //         onPressed: () {},
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

class Page3_1 extends StatefulWidget {
  @override
  _Page3_1 createState() => _Page3_1();
}

class _Page3_1 extends State<Page3_1> {
  @override
  int counter2_2 = 0;
  void _incrementCounter() {
    setState(() {
      counter2_2++;
    });
  }

  Widget build(BuildContext context) {
    // MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Colors.blueGrey[900],
        title: Center(
            // child: Text('Azkar El Yom'),
            ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Images/ima7.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.darken,
                ))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     // crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Container(
            //         width: 90.0,
            //         height: 50.0,
            //         child:  ElevatedButton(
            //           style: ButtonStyle(backgroundColor:
            //           MaterialStateProperty.resolveWith((Set<MaterialState> states)
            //           {return Colors.deepPurpleAccent; }),),
            //           child: Text('عوده'),
            //           onPressed: () {
            //             Navigator.of(context)
            //                 .pop ();
            //           },
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 70.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child: Text(
                        'اللهم إنا نعوذ بك من الهم و الحزن - ونعوذ بك من العجز والكسل - ونعوذ بك من الجبن والبخل - ونعوذ بك من غلبه الدين وقهر الرجال ( ۳ مرات )'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child: Text(
                        'سبحان الله وبحمده عدد خلقه ورضا نفسه وزنة عرشه ومداد كلماته ( ۳ مرات )'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child: Text(
                        'نعوذ بكلمات الله التامة من كل شيطان وهامة ومن كل عين لامة ( ۳ مرات )'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 63.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child: Text(
                        'اللهم إنا أصبحنا منك في نعمة وعافية وستر فأتم علينا نعمتك وعافيتك وسترك في الدنيا والآخرة ( ۳ مرات )'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 63.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child: Text(
                        'اللهم ما أصبح بنا من نعمة أو بأحد من خلقك فمنك وحدك لاشريك لك، فلك الحمد و لك الشكر ( ۳ مرات )'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 83.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child: Text(
                        'أصبحنا و أصبح الملك لله و الحمدلله - أصبحنا على فطرة الإسلام ، وعلى كلمة الإخلاص، وعلى دين نبينا محمد ﷺ وعلى ملة أبينا إبراهيم حنيفًا مسلمًا وما كان من المشركين   ( ۳ مرات )'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 70.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child: Text(
                        'اللهم إني أصبحت أشهدك وأشهد حملة عرشك وملائكتك وجميع خلقك، أنك أنت الله لا إله إلا أنت، وأن محمداً عبدك ورسولك ﷺ  ( ۳ مرات )'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 90.0,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.cyan;
                      }),
                    ),
                    child: Text('التالي'),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Page3_2()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Page3_2 extends StatefulWidget {
  @override
  _Page3_2 createState() => _Page3_2();
}

class _Page3_2 extends State<Page3_2> {
  @override
  int counter2_2 = 0;
  void _incrementCounter() {
    setState(() {
      counter2_2++;
    });
  }

  Widget build(BuildContext context) {
    // MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Colors.blueGrey[900],
        title: Center(
            // child: Text('Azkar El Yom'),
            ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Images/ima7.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.darken,
                ))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 63.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child: Text(
                        'آمنت بالله العظيم وكفرت بالجبت والطاغوت واستمسكت بالعروة الوثقى لا انفصام لها والله سميع عليم ( ۳ مرات )'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child: Text(
                        'اللهم أنا نسالك العفو والعافيه والمعافاة في الدين و الدنيا و الآخره ( ۳ مرات )'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 103.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child: Text(
                        'اللهم فاطر السموات والارض عالم الغيب والشهادة رب كل شيئا ومليكه انت تحكم بين عبادك فيما كانو فيه يختلفون نسألك من خير هذا اليوم ومن خير ما بعده ونعوذ بك من شر هذا اليوم ومن شر ما بعده ( ۳ مرات )'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child: Text(
                        'حسبي الله لااله إلاهو عليه توكلت وهو رب العرش العظيم ( ۳ مرات )'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 80.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child: Text(
                        'اللهم صلي علي نبينا محمد في الأولين - اللهم صلي علي نبينا محمد في الأخرين - اللهم صلي علي نبينا محمد في كل وقت وحين - اللهم صلي علي نبينا محمد في الملأ الاعلي الي يوم الدين ( ۳ مرات )'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0,
                  height: 90.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        return Colors.blueGrey[900];
                      }),
                    ),
                    child: Text(
                        'اللهم صلي علي محمد وعلي ال محمد كما صليت علي ابراهيم وعلي ال ابراهيم وبارك علي محمد وعلي ال محمد كما باركت علي إبراهيم في العالمين أنك حميد مجيد         ( ۳ مرات )'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       width:300.0,
            //       height: 50.0,
            //       child:  ElevatedButton(
            //         style: ButtonStyle(backgroundColor:
            //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            //         {return Colors.blueGrey[900]; }),),
            //         child: Text('سبحان الله وبحمده عدد خلقه ورضا نفسه وزنة عرشه ومداد كلماته ( ۳ مرات )'),
            //         onPressed: () {},
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 20,
            //
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       width:300.0,
            //       height: 50.0,
            //       child:  ElevatedButton(
            //         style: ButtonStyle(backgroundColor:
            //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            //         {return Colors.blueGrey[900]; }),),
            //         child: Text('نعوذ بكلمات الله التامة من كل شيطان وهامة ومن كل عين لامة ( ۳ مرات )'),
            //         onPressed: () {},
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 20,
            //
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       width:300.0,
            //       height: 50.0,
            //       child:  ElevatedButton(
            //         style: ButtonStyle(backgroundColor:
            //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            //         {return Colors.blueGrey[900]; }),),
            //         child: Text('اللهم إنا أصبحنا منك في نعمة وعافية وستر فأتم علينا نعمتك وعافيتك وسترك في الدنيا والآخرة ( ۳ مرات )'),
            //         onPressed: () {},
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 20,
            //
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       width:300.0,
            //       height: 50.0,
            //       child:  ElevatedButton(
            //         style: ButtonStyle(backgroundColor:
            //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            //         {return Colors.blueGrey[900]; }),),
            //         child: Text('اللهم إنا أصبحنا منك في نعمة وعافية وستر فأتم علينا نعمتك وعافيتك وسترك في الدنيا والآخرة ( ۳ مرات )'),
            //         onPressed: () {},
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 20,
            //
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       width:300.0,
            //       height: 50.0,
            //       child:  ElevatedButton(
            //         style: ButtonStyle(backgroundColor:
            //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            //         {return Colors.blueGrey[900]; }),),
            //         child: Text('اللهم ما أصبح بنا من نعمة أو بأحد من خلقك فمنك وحدك لاشريك لك، فلك الحمد و لك الشكر ( ۳ مرات )'),
            //         onPressed: () {},
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 50,
            //
            // ),
            // // Column(
            // //   mainAxisAlignment: MainAxisAlignment.end,
            // //   children: [
            // //     Row(
            // //       mainAxisAlignment: MainAxisAlignment.end,
            // //       crossAxisAlignment: CrossAxisAlignment.start,
            // //       children: [
            // //         Container(
            // //           width: 90.0,
            // //           height: 50.0,
            // //           child:  ElevatedButton(
            // //             style: ButtonStyle(backgroundColor:
            // //             MaterialStateProperty.resolveWith((Set<MaterialState> states)
            // //             {return Colors.cyan; }),),
            // //             child: Text('التالي'),
            // //             onPressed: () {
            // //               Navigator.of(context)
            // //                   .push (MaterialPageRoute(
            // //                   builder: (context)=> Page3_1()
            // //               ),
            // //               );
            // //             },
            // //           ),
            // //         ),
            // //       ],
            // //     ),
            // //   ],
            // // ),
            //
            //
            //
            // // Row(
            // //   mainAxisAlignment: MainAxisAlignment.end,
            // //   children: [
            // //     Container(
            // //       width:600.0,
            // //       height: 50.0,
            // //       child:  ElevatedButton(
            // //         style: ButtonStyle(backgroundColor:
            // //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            // //         {return Colors.greenAccent; }),),
            // //         child: Text('اللهم إنا نعوذ بك من أن نشرك بك شيئًا نعلمه، ونستغفرك لما لا نعلمه  ( ۳ مرات )'),
            // //         onPressed: () {},
            // //       ),
            // //     ),
            // //   ],
            // // ),
            // // SizedBox(
            // //   height: 20,
            // //
            // // ),
            // // Row(
            // //   mainAxisAlignment: MainAxisAlignment.end,
            // //   children: [
            // //     Container(
            // //       width:600.0,
            // //       height: 50.0,
            // //       child:  ElevatedButton(
            // //         style: ButtonStyle(backgroundColor:
            // //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            // //         {return Colors.blueGrey[900]; }),),
            // //         child: Text('اللهم إنا نعوذ بك من أن نشرك بك شيئًا نعلمه، ونستغفرك لما لا نعلمه  ( ۳ مرات )'),
            // //         onPressed: () {},
            // //       ),
            // //     ),
            // //   ],
            // // ),
            // // SizedBox(
            // //   height: 20,
            // //
            // // ),
            // // Row(
            // //   mainAxisAlignment: MainAxisAlignment.end,
            // //   children: [
            // //     Container(
            // //       width:600.0,
            // //       height: 50.0,
            // //       child:  ElevatedButton(
            // //         style: ButtonStyle(backgroundColor:
            // //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            // //         {return Colors.blueGrey[900]; }),),
            // //         child: Text('نعوذ بكلمات الله التامات من شر ماخلق ( ۳ مرات )'),
            // //         onPressed: () {},
            // //       ),
            // //     ),
            // //   ],
            // // ),
            // // SizedBox(
            // //   height: 20,
            // //
            // // ),
            // // Row(
            // //   mainAxisAlignment: MainAxisAlignment.end,
            // //   children: [
            // //     Container(
            // //       width:600.0,
            // //       height: 50.0,
            // //       child:  ElevatedButton(
            // //         style: ButtonStyle(backgroundColor:
            // //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            // //         {return Colors.blueGrey[900]; }),),
            // //         child: Text('رضيت بالله ربا وبالاسلام دينا وبمحمد صلى الله عليه وسلم نبيا ورسولا ( ۳ مرات )'),
            // //         onPressed: () {},
            // //       ),
            // //     ),
            // //   ],
            // // ),
            // // SizedBox(
            // //   height: 20,
            // //
            // // ),
            // // Row(
            // //   mainAxisAlignment: MainAxisAlignment.end,
            // //   children: [
            // //     Container(
            // //       width:600.0,
            // //       height: 50.0,
            // //       child:  ElevatedButton(
            // //         style: ButtonStyle(backgroundColor:
            // //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            // //         {return Colors.blueGrey[900]; }),),
            // //         child: Text('اللهم أنت ربي لا إله إلا أنت، خلقتني وأنا عبدك، وأنا على عهدك ووعدك ما استطعت، أعوذ بك من شر ما صنعت، أبوء لك بنعمتك علي، وأبوء بذنبي فاغفر لي فإنه لا يغفر الذنوب إلا أنت ( ۳ مرات )'),
            // //         onPressed: () {},
            // //       ),
            // //     ),
            // //   ],
            // // ),
            // // SizedBox(
            // //   height: 20,
            // //
            // // ),
            // // Row(
            // //   mainAxisAlignment: MainAxisAlignment.end,
            // //   children: [
            // //     Container(
            // //       width:600.0,
            // //       height: 50.0,
            // //       child:  ElevatedButton(
            // //         style: ButtonStyle(backgroundColor:
            // //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            // //         {return Colors.blueGrey[900]; }),),
            // //         child: Text('اللهم عافنا في ابداننا - اللهم عافنا في اسماعنا - اللهم عافنا في ابصارنا - اللهم عافنا في قوتنا ( ۳ مرات )'),
            // //         onPressed: () {},
            // //       ),
            // //     ),
            // //   ],
            // // ),
            // // SizedBox(
            // //   height: 20,
            // //
            // // ),
            // // Row(
            // //   mainAxisAlignment: MainAxisAlignment.end,
            // //   children: [
            // //     Container(
            // //       width:600.0,
            // //       height: 50.0,
            // //       child:  ElevatedButton(
            // //         style: ButtonStyle(backgroundColor:
            // //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            // //         {return Colors.blueGrey[900]; }),),
            // //         child: Text('اللهم إنا نعوذ بك من الكفر و الفقر - اللهم إنا نعوذ بك من عذاب القبر - اللهم إنا نعوذ بك من شتات الامر - اللهم نعوذ بك من ضيق الصدر لا إله إلا أنت ( ۳ مرات )'),
            // //         onPressed: () {},
            // //       ),
            // //     ),
            // //   ],
            // // ),
            // // SizedBox(
            // //   height: 20,
            // //
            // // ),
            // // Row(
            // //   mainAxisAlignment: MainAxisAlignment.end,
            // //   children: [
            // //     Container(
            // //       width:600.0,
            // //       height: 50.0,
            // //       child:  ElevatedButton(
            // //         style: ButtonStyle(backgroundColor:
            // //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            // //         {return Colors.blueGrey[900]; }),),
            // //         child: Text('اللهم إنا نعوذ بك من الهم و الحزن - ونعوذ بك من العجز والكسل - ونعوذ بك من الجبن والبخل - ونعوذ بك من غلبه الدين وقهر الرجال ( ۳ مرات )'),
            // //         onPressed: () {},
            // //       ),
            // //     ),
            // //   ],
            // // ),
            // // SizedBox(
            // //   height: 20,
            // //
            // // ),
            // // Row(
            // //   mainAxisAlignment: MainAxisAlignment.end,
            // //   children: [
            // //     Container(
            // //       width:600.0,
            // //       height: 50.0,
            // //       child:  ElevatedButton(
            // //         style: ButtonStyle(backgroundColor:
            // //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            // //         {return Colors.blueGrey[900]; }),),
            // //         child: Text('سبحان الله وبحمده عدد خلقه ورضا نفسه وزنة عرشه ومداد كلماته ( ۳ مرات )'),
            // //         onPressed: () {},
            // //       ),
            // //     ),
            // //   ],
            // // ),
            // // SizedBox(
            // //   height: 20,
            // //
            // // ),
            // // Row(
            // //   mainAxisAlignment: MainAxisAlignment.end,
            // //   children: [
            // //     Container(
            // //       width:600.0,
            // //       height: 50.0,
            // //       child:  ElevatedButton(
            // //         style: ButtonStyle(backgroundColor:
            // //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            // //         {return Colors.blueGrey[900]; }),),
            // //         child: Text('نعوذ بكلمات الله التامة من كل شيطان وهامة ومن كل عين لامة ( ۳ مرات )'),
            // //         onPressed: () {},
            // //       ),
            // //     ),
            // //   ],
            // // ),
            // // SizedBox(
            // //   height: 20,
            // //
            // // ),
            // // Row(
            // //   mainAxisAlignment: MainAxisAlignment.end,
            // //   children: [
            // //     Container(
            // //       width:600.0,
            // //       height: 50.0,
            // //       child:  ElevatedButton(
            // //         style: ButtonStyle(backgroundColor:
            // //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            // //         {return Colors.blueGrey[900]; }),),
            // //         child: Text('اللهم إنا أصبحنا منك في نعمة وعافية وستر فأتم علينا نعمتك وعافيتك وسترك في الدنيا والآخرة ( ۳ مرات )'),
            // //         onPressed: () {},
            // //       ),
            // //     ),
            // //   ],
            // // ),
            // // SizedBox(
            // //   height: 20,
            // //
            // // ),
            // // Row(
            // //   mainAxisAlignment: MainAxisAlignment.end,
            // //   children: [
            // //     Container(
            // //       width:600.0,
            // //       height: 50.0,
            // //       child:  ElevatedButton(
            // //         style: ButtonStyle(backgroundColor:
            // //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            // //         {return Colors.blueGrey[900]; }),),
            // //         child: Text('اللهم إنا أصبحنا منك في نعمة وعافية وستر فأتم علينا نعمتك وعافيتك وسترك في الدنيا والآخرة ( ۳ مرات )'),
            // //         onPressed: () {},
            // //       ),
            // //     ),
            // //   ],
            // // ),
            // // SizedBox(
            // //   height: 20,
            // //
            // // ),
            // // Row(
            // //   mainAxisAlignment: MainAxisAlignment.end,
            // //   children: [
            // //     Container(
            // //       width:600.0,
            // //       height: 50.0,
            // //       child:  ElevatedButton(
            // //         style: ButtonStyle(backgroundColor:
            // //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            // //         {return Colors.blueGrey[900]; }),),
            // //         child: Text('اللهم ما أصبح بنا من نعمة أو بأحد من خلقك فمنك وحدك لاشريك لك، فلك الحمد و لك الشكر ( ۳ مرات )'),
            // //         onPressed: () {},
            // //       ),
            // //     ),
            // //   ],
            // // ),
            // // SizedBox(
            // //   height: 20,
            // //
            // // ),
            // // Row(
            // //   mainAxisAlignment: MainAxisAlignment.end,
            // //   crossAxisAlignment: CrossAxisAlignment.start,
            // //   children: [
            // //     Container(
            // //       width: 90.0,
            // //       height: 50.0,
            // //       child:  ElevatedButton(
            // //         style: ButtonStyle(backgroundColor:
            // //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            // //         {return Colors.deepPurpleAccent; }),),
            // //         child: Text('التالي'),
            // //         onPressed: () {
            // //           Navigator.of(context)
            // //               .push (MaterialPageRoute(
            // //               builder: (context)=> Page3_1()
            // //           ),
            // //           );
            // //         },
            // //       ),
            // //     ),
            // //   ],
            // // ),
            // // SizedBox(
            // //   height: 20,
            // //
            // // ),
            // // Row(
            // //   mainAxisAlignment: MainAxisAlignment.end,
            // //   children: [
            // //     Container(
            // //       width:600.0,
            // //       height: 50.0,
            // //       child:  ElevatedButton(
            // //         style: ButtonStyle(backgroundColor:
            // //         MaterialStateProperty.resolveWith((Set<MaterialState> states)
            // //         {return Colors.blueGrey[900]; }),),
            // //         child: Text('أصبحنا واصبح الملك لله والحمدلله - أصبحنا على فطرة الإسلام ، وعلى كلمة الإخلاص، وعلى دين نبينا محمد ﷺ وعلى ملة أبينا إبراهيم حنيفًا مسلمًا وما كان من المشركين ( ۳ مرات )'),
            // //         onPressed: () {},
            // //       ),
            // //     ),
            // //   ],
            // // ),
          ],
        ),
      ),
    );
  }
}

class Page4 extends StatefulWidget {
  @override
  _Page4 createState() => _Page4();
}

class _Page4 extends State<Page4> {
  @override
  int counter2_2 = 0;
  void _incrementCounter() {
    setState(() {
      counter2_2++;
    });
  }

  Widget build(BuildContext context) {
    // MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Colors.blueGrey[900],
        title: Center(
            // child: Text('Azkar El Yom'),
            ),
      ),
      floatingActionButton: SizedBox.fromSize(
        size: Size.square(70),
        child: FloatingActionButton(
          onPressed: _incrementCounter,
          // tooltip: 'Increment',
          backgroundColor: Colors.blueGrey[600],
          child: Icon(Icons.add),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey[900],
        child: Container(
          height: 50,
        ),
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Images/ima8.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.darken,
                ))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    return Colors.blueGrey[900].withOpacity(.7);
                  }),
                ),
                child: TextFormField(
                  style: TextStyle(color: Colors.white, fontSize: 40),
                  decoration: InputDecoration(
                    hintText: "",
                    // hint:TextStyle(
                    //   fontSize: 40,
                    // ),

                    labelText: "->",
                    labelStyle: TextStyle(
                      fontSize: 40,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  maxLines: 3,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Text(
                  '$counter2_2',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Amiri', fontSize: 70),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

enum DeviceType {
  Mobile,
  Tablet,
  Desktop,
}
