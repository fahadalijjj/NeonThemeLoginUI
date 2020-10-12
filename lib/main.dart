import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LogScreen(),
  ));
}

class LogScreen extends StatefulWidget {
  @override
  _LogScreenState createState() => _LogScreenState();
}

class _LogScreenState extends State<LogScreen> {
  Color clryellow = Colors.amber;

  Color clrgreen = Color(0xff00FF00);

  Color clrwhite = Colors.white;

  Color clrblack = Colors.black;

  Color clr = Colors.white;

  Color trans = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.opacity,color: clr == clrwhite?Colors.black:Colors.white,),
            onPressed: ()
            {
              setState(() {
               clr == clrwhite ? clr = clrblack : clr = clrwhite;
              });

            },
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Body(),
    );
  }


Widget Body() {
  return FittedBox(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 60),
          child: Container(
            child: RichText(
              text: TextSpan(style: TextStyle(height: 1), children: [
                TextSpan(
                    text: 'Hello\n',
                    style: GoogleFonts.bebasNeue(
                        color:clr==clrwhite?clrblack:clrwhite , fontSize: 110,shadows: [Shadow(color:clr==clrwhite?trans:clrwhite,blurRadius: 10 )])),
                TextSpan(
                    text: 'There',
                    style: GoogleFonts.bebasNeue(
                        color: clr==clrwhite?clrblack:clrwhite, fontSize: 110,shadows: [Shadow(color:clr==clrwhite?trans:clrwhite,blurRadius: 10 )])),
                TextSpan(
                    text: '.',
                    style: GoogleFonts.bebasNeue(
                        color: clr==clrwhite?clrgreen:clryellow, fontSize: 110,shadows: [Shadow(color:clr==clrwhite?trans:clryellow,blurRadius: 10 )]))
              ]),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Email',
                style: GoogleFonts.abel(color: Colors.grey, fontSize: 20,shadows: [Shadow(color:clr==clrwhite?trans:Colors.grey,blurRadius: 1 )]),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'FAHAD@FLUTTER.COM',
                style: GoogleFonts.abel(
                    color: clr==clrwhite?clrblack:clrwhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,shadows: [Shadow(color:clr==clrwhite?trans:clrwhite,blurRadius: 5 )]),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.fastOutSlowIn,
                    width: 382,
                    height: .7,
                    decoration: BoxDecoration(color: clr==clrwhite?clrblack:clrwhite),
                  ),
                  Container(

                    width: 18,
                    height: .7,
                    decoration: BoxDecoration(color: clr==clrwhite?clrwhite:clrblack),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Password',
                style: GoogleFonts.abel(color: Colors.grey, fontSize: 20,shadows: [Shadow(color:clr==clrwhite?trans:Colors.grey,blurRadius: 1 )]),
              ),
              SizedBox(
                height: 10,
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                curve: Curves.fastOutSlowIn,
                width: 382,
                height: .7,
                decoration: BoxDecoration(color: clr==clrwhite?Colors.grey:clrwhite),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 300, top: 20),
          child: Container(
            child: Text(
              'Forget Password',
              style: GoogleFonts.abel(
                color: clr==clrwhite?clrgreen:clryellow,
                fontSize: 16,
                decoration: TextDecoration.underline,
                shadows: [Shadow(color:clr==clrwhite?trans:clryellow,blurRadius: 5 )]
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 55, top: 30),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,
            width: 340,
            height: 65,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color:clr==clrwhite?trans:clryellow,blurRadius: 10 )],
                color: clr==clrwhite?clrgreen:clryellow,
                borderRadius: BorderRadius.circular(50)),
            child: Center(
                child: Text(
              'LOGIN',
              style: GoogleFonts.abel(
                  color: clr==clrwhite?clrwhite:clrblack, fontSize: 25, fontWeight: FontWeight.bold),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 55, top: 15),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,

            width: 340,
            height: 65,
            decoration: BoxDecoration(
                color: clr==clrwhite?clrwhite:clrblack,
                border: Border.all(color: clr==clrwhite?clrblack:clrwhite),
                borderRadius: BorderRadius.circular(50),boxShadow: [BoxShadow(color:clr==clrwhite?trans:clrwhite,blurRadius: 10 )]),

            child: Center(
                child: Text(
              'Log in with Facebook',
              style: GoogleFonts.abel(
                  color: clr==clrwhite?clrblack:clrwhite, fontSize: 20, fontWeight: FontWeight.bold),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 145, top: 40),
          child: Row(
            children: <Widget>[
              Text(
                'New to Spotify?',
                style: GoogleFonts.abel(
                    color: clr==clrwhite?clrblack:clrwhite,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,shadows: [Shadow(color:clr==clrwhite?trans:clrwhite,blurRadius: 5 )]),

              ),
              InkWell(
                onTap: () {
                  print('Registration is in Process');
                },
                child: Text(
                  'Register',
                  style: GoogleFonts.abel(
                      color: clr==clrwhite?clrgreen:clryellow,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                  shadows: [Shadow(color:clr==clrwhite?trans:clryellow,blurRadius: 5 )]),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
}