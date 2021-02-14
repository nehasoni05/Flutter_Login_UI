import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                      "https://media-exp1.licdn.com/dms/image/C4D03AQFrl37ziJX9qQ/profile-displayphoto-shrink_200_200/0/1608296400281?e=1615420800&v=beta&t=FHG2Q0sp9wP69zs3cWYrbtyPg7w8x92_m594xPDpNpM"),
                )),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                top: 50,
                right: 10,
                left: 10,
                bottom: 50,
              ),
              child: TextField(
                readOnly: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                  helperText: "Enter your username",
                  icon: Icon(
                    Icons.account_circle,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                bottom: 50,
                top: 10,
                left: 10,
                right: 10,
              ),
              child: TextField(
                readOnly: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    helperText: "Enter your password",
                    icon: Icon(
                      Icons.lock,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {},
              textColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  18,
                ),
                side: BorderSide(
                  color: Colors.black,
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    18,
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue.withOpacity(1),
                      Colors.blue.withOpacity(1),
                    ],
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  "Submit",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
