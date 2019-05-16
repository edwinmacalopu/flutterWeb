import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
 
  

void main() => runApp(MyApp(
  
));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Comunidad Flutter',
       debugShowCheckedModeBanner: false,
          /*theme: ThemeData(
        primarySwatch: Colors.blue,
      ),*/
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  
  
  @override
  Widget build(BuildContext context) {
 
        return Scaffold(
          /*appBar: AppBar(
            title: Text(title),
    
          ),*/
          backgroundColor: Colors.white,
          body: 
          
          Center( 
            
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[ 
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child:                           
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Text('Bienvenidos a la Comunidad\n''de Flutter en Español',
                     style: TextStyle(fontSize: 26,color: Colors.black),
                     ),
                     SizedBox(
                       height: 60,
                     ),
                      RaisedButton(                        
                        onPressed: () {
                          
                        },
                        color: Colors.blueAccent,
                        elevation: 0,
                        child: Text(
                          '  Telegram  ',style: TextStyle(fontSize: 15,color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                        ),
                      
                   ],
                 ),
                 Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Container(
                       height: 550,
                       width: 550,
                       child: Image(image: NetworkImage('https://i.imgur.com/NlItqje.png')),
                     )
                   ],
                 )
              ],
            ),
            ) ,
          ],
        ),
        
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
