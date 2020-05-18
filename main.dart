import "package:flutter/material.dart";
import 'package:nssmcetlogin/signup.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String,WidgetBuilder>{
        '/signup':(BuildContext context)=>new SignupPage()
      },
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,


      body: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(

                  padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),

                  child: Text(
                    'NSS',
                        style: TextStyle(
                          fontSize: 60.0,fontWeight: FontWeight.bold)
                        ),




                    ),
                     Container(
                    padding: EdgeInsets.fromLTRB(15.0, 180.0, 0.0, 0.0),
                    child: Text(
                     'MCET',
                    style: TextStyle(
                     fontSize: 60.0,fontWeight: FontWeight.bold)
                     ),


                       ),


                       Container(
                        padding: EdgeInsets.fromLTRB(145.0, 122.0, 0.0, 0.0),
                         child :new CircleAvatar(
                           backgroundColor:Colors.transparent,
                           radius:22.0,
                           child: Image.asset('images/nn.png'),
                         ),


                       ),



    ]
                )

            ),



                 Container(
                   padding: EdgeInsets.only(top:30.0,left: 20.0,right: 20.0),
                   child:Column(
                     children: <Widget>[
                       TextField(
                         decoration: InputDecoration(
                           labelText: 'EMAIL',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontWeight: FontWeight.bold,
                             color: Colors.grey
                           ),
                             focusedBorder: UnderlineInputBorder(
                               borderSide: BorderSide(color:Colors.indigo)
                             )
                         ),
                       ),

                       SizedBox(height: 20.0,),
                       TextField(
                         decoration: InputDecoration(
                             labelText: 'PASSWORD',
                             labelStyle: TextStyle(
                                 fontFamily: 'Montserrat',
                                 fontWeight: FontWeight.bold,
                                 color: Colors.grey
                             ),
                             focusedBorder: UnderlineInputBorder(
                                 borderSide: BorderSide(color:Colors.indigo)
                             )
                         ),
                         obscureText: true,
                       ),
                       SizedBox(height: 5.0),
                       Container(
                         alignment: Alignment(1.0,0.0),
                         padding: EdgeInsets.only(top:15.0,left: 20.0),
                         child: InkWell(
                           child: Text('Forget Password',
                           style:TextStyle(
                             color:Colors.indigo,
                             fontWeight: FontWeight.bold,
                             fontFamily:'Montserrat',
                             decoration: TextDecoration.underline

                           ),
                           ),
                         ),
                       ),
                      SizedBox(height: 40.0),
                       Container(


                         height: 50.0,
                         child: Material(
                           borderRadius: BorderRadius.circular(20.0),

                           shadowColor: Colors.indigoAccent,
                           color: Colors.indigo,
                           elevation: 7.0,
                             child: GestureDetector(

                               onTap:()
                                   {},

                               child:  Center
                                 (child: Text(
                                 'LOGIN',textAlign: TextAlign.center,

                                 style: TextStyle(

                                   color: Colors.white,
                                   fontWeight: FontWeight.bold,
                                   fontFamily: 'Montserrat',


                                 ),


                               ),

                              ),


                             ),
                         ),
    ),

                       SizedBox(height: 25.0),
                       Container(
                         height: 40.0,
                           color:Colors.transparent,
                         child:Container(
                           decoration: BoxDecoration(
                             border: Border.all(
                               color: Colors.black,
                               style: BorderStyle.solid,
                               width: 1.0
    ),
                             color: Colors.transparent,
                             borderRadius: BorderRadius.circular(20.0)
                             ),
                                 child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                   children: <Widget>[
                                     Center(child:ImageIcon(AssetImage('assets/facebook.png'))
                                     ),
                                     SizedBox(width: 10.0),
                                     Center(
                                       child: Text('Login in With facebook',
                                      style: TextStyle(
                                       fontFamily: 'Montserrat',
                                       fontWeight: FontWeight.bold,
                                        ),
                                     ),

                                     )

                                   ],

                           ),
                         )
                       )

                     ],
                   )
                 ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Doesnt have an account?',
                    style:TextStyle(
                fontFamily: 'Montserrat'),

                ),
               SizedBox(width:5.0),
               InkWell(
                onTap: ()
                {
                  Navigator.of(context).pushNamed('/signup');

                },
      child:Text('Register',
      style:TextStyle(
        color:Colors.indigo,
        fontFamily:'Montserrat',
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline
      ),
      ),
              )
            ],
          )
        ],
      )

    );
  }
}

