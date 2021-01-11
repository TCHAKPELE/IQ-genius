
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:iq_genius/Pages/login_page.dart';
import 'Pages/add_account.dart';

void main(){

  runApp(MyApp());


}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'IQ-GENIUS-APP',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
        home: const MyHomePage()

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
   // _counter = 40;
    //_user = widget.user;
   //_controller = AnimationController(
     // duration: Duration(seconds: 4),
     // vsync: this
   // );
    super.initState();

  }

  //_opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
    //  CurvedAnimation(
         // parent: _controller,
         // curve: Interval(0.0, 1.0)
        //  )
     // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(


                decoration: BoxDecoration(
              gradient:  LinearGradient(
                colors:  [Colors.white,Colors.black]
              ),

            ), child: CircleAvatar(

              backgroundImage: AssetImage('./assets/image1.jpg'),
            ),)

                  ,
            ListTile(
              title: const Text('Authentification',style: TextStyle(fontSize: 18),),
              leading: const Icon(Icons.home),
              trailing: const Icon(Icons.arrow_right),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context,
                // ignore: inference_failure_on_instance_creation
                MaterialPageRoute(builder: (context)=>LoginPage())
                );

              },
            ),

            ListTile(
              title: const Text('Créer un nouveau compte',style: TextStyle(fontSize: 18),),
              leading: const Icon(Icons.add),
              trailing: const Icon(Icons.arrow_right),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context,
                    // ignore: inference_failure_on_instance_creation
                    MaterialPageRoute(builder: (context)=>const AddAccount())
                );

              },
            ),
            ListTile(
              title: const Text('Quitter',style: TextStyle(fontSize: 18),),
              leading: const Icon(Icons.exit_to_app),
              trailing: const Icon(Icons.arrow_right),
              onTap: (){

              },
            ),



          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(' <== Menu '),
      ),
      body: Center(
        child: Center(
          child:Container(

          ),

        ),



      ), // This trailing comma makes auto-formatting nicer for build methods.
    );

  }

  @override
  void dispose(){
    Hive.box('users').close();
    super.dispose();
  }
}
