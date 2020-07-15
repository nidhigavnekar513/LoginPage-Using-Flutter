import 'package:flutter/material.dart';

void main(){
  runApp( new MyApp(),
  );
}

class MyApp extends StatelessWidget{
 
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new LoginPage(),
      theme : new ThemeData(
          primarySwatch: Colors.blue,
      )
    );
  }
}


class LoginPage extends StatefulWidget{

  @override 
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>{

  @override 
  Widget build(BuildContext context){
    return new Scaffold(
        backgroundColor: Colors.black,
        body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Image(
              image: new AssetImage("assets/login_background_image.jpg"),
              fit: BoxFit.cover,
              color: Colors.black54,
              colorBlendMode: BlendMode.darken,
              ),

            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new FlutterLogo(
                  size: 120.0, 
                ),

                new Form(
                  child: Theme(
                    data: new ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.cyan,
                      inputDecorationTheme: new InputDecorationTheme(
                        labelStyle: new TextStyle(
                          color: Colors.cyan,
                          fontSize: 20.0
                        )
                      )
                    ),
                    
                  child: Container(
                    padding: const EdgeInsets.all(40.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                              new TextFormField(
                                decoration: new InputDecoration(
                                labelText: 'Enter Email',
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),

                              new TextFormField(
                                decoration: new InputDecoration(
                                labelText: 'Enter Password',
                                ),
                                keyboardType: TextInputType.text,
                                obscureText: true,
                              ),

                              new Padding(
                                padding: const EdgeInsets.only(top: 40.0)
                                ),

                              new MaterialButton(
                                height: 40.0,
                                minWidth: 60.0,
                                color: Colors.cyanAccent,
                                textColor: Colors.black,
                                child: new Text("LOGIN"),
                                onPressed: () => {},
                                splashColor: Colors.indigo
                              ),
                          ],
                      ),
                  ),
                  )
                ) 
              ],
            )  
          ],
        ),
    );

  }
}