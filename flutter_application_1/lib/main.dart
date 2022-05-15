import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

import 'constants.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo của Huy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: home2(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class home2 extends StatelessWidget {
  const home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size);
    return SingleChildScrollView(
      child: Container(
        height: size.height,
        width: double.infinity,
        // color: Colors.orange,
        child: Stack(
          children: [
            Container(
              height: size.height * 0.7,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment(0, 1),
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/background-image.png"),
                ),
              ),
            ),
            Center(
              child: Lottie.network(
                  'https://assets8.lottiefiles.com/packages/lf20_8puzuzdn.json'),
            ),
            Language_select(
              size: size,
            ),
          ],
        ),
      ),
    );
  }
}

class Language_select extends StatelessWidget {
  const Language_select({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10.0,
      width: size.width,
      child: Column(
        children: [
          //Social Icon
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: Icon(
                  Icons.facebook,
                  size: 30,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
              Icon(
                Icons.near_me_sharp,
                size: 30,
                color: Colors.red,
              ),
              Icon(
                Icons.home,
                size: 30,
                color: Colors.red,
              ),
            ],
          ),
          //Tiger text
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "Tiger",
                  style: spanBoldHead,
                ),
                TextSpan(
                  text: " Bengal ღ",
                  style: spanNormalHead,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: TextButton.icon(
              icon:
                  SvgPicture.asset('assets/svg/vn.svg', height: 30, width: 50),
              label: Text(
                'Việt Nam',
                style: TextStyle(color: Colors.black.withOpacity(1.0)),
              ),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(20)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 243, 143, 218))),
              onPressed: () {},
              //style: styleNormalTextbutton,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: TextButton.icon(
              icon: SvgPicture.asset('assets/svg/gb.svg',
                  height: 30, width: 50, fit: BoxFit.scaleDown),
              label: Text(
                'English',
                style: TextStyle(
                  color: Colors.black.withOpacity(1.0),
                ),
              ),

              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(20)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 243, 143, 218))),
              onPressed: () {},
              //style: styleNormalTextbutton,
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
        ],
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
