import 'dart:async';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool enableCircle = false;
  int pageIndex = 0;
  timer()async{
    await Future.delayed(const Duration(milliseconds: 250));
    setState(() {
      enableCircle = true;
    });
    await Future.delayed(const Duration(milliseconds: 1500));
    setState(() {
      pageIndex = 1;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 1000),
              opacity: enableCircle ? 1 : 0,
              child: FlutterLogo(size: 80,),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 800),
            bottom: enableCircle ? (pageIndex > 0 ? -(MediaQuery.of(context).size.height / 1000) : -(MediaQuery.of(context).size.height / 1.22)) : -MediaQuery.of(context).size.height,
            left: -100,
            right: -100,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 800),
              width: MediaQuery.of(context).size.height,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(pageIndex > 0 ? 0.0 : 1000.0),
                  color: Color(0xffCBDDFB)
              ),
              child: Center(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                  child: Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text('Next',style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 600),
            bottom: enableCircle ? (pageIndex > 1 ? -(MediaQuery.of(context).size.height / 1000) : -(MediaQuery.of(context).size.height / 1.18)) : -MediaQuery.of(context).size.height,
            left: -100,
            right: -100,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 600),
              width: MediaQuery.of(context).size.height,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(pageIndex > 1 ? 0.0 : 1000.0),
                  color: Color(0xffD6E0D9)
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          pageIndex = 3;
                        });
                      },
                      child: Container(
                        width: 200,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Text('Next',style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          pageIndex = 1;
                        });
                      },
                      child: Container(
                        width: 200,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Text('Previous',style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 400),
            bottom: enableCircle ? (pageIndex > 2 ? -(MediaQuery.of(context).size.height / 1000) : -(MediaQuery.of(context).size.height / 1.14)) : -MediaQuery.of(context).size.height,
            left: -100,
            right: -100,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 400),
              width: MediaQuery.of(context).size.height,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(pageIndex > 2 ? 0.0 : 1000.0),
                  color: Colors.deepOrange.shade100
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          pageIndex = 4;
                        });
                      },
                      child: Container(
                        width: 200,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Text('Next',style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          pageIndex = 2;
                        });
                      },
                      child: Container(
                        width: 200,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Text('Previous',style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 250),
            bottom: enableCircle ? (pageIndex > 3 ? -(MediaQuery.of(context).size.height / 1000) : -(MediaQuery.of(context).size.height / 1.1)) : -MediaQuery.of(context).size.height,
            left: -100,
            right: -100,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 250),
              width: MediaQuery.of(context).size.height,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(pageIndex > 3 ? 0.0 : 1000.0),
                  color: Color(0xffAD98D4)
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          pageIndex = 5;
                        });
                      },
                      child: Container(
                        width: 200,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Text('Next',style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          pageIndex = 3;
                        });
                      },
                      child: Container(
                        width: 200,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Text('Previous',style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget circle(Color color,h,w,r){
    return AnimatedContainer(
      duration: Duration(milliseconds: 800),
      width: w,
      height: h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(r),
        color: color
      ),
    );
  }
}
