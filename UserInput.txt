import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(headlineLarge: TextStyle(fontSize: 21)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var emailText = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              controller: emailText,
              //enabled: false,
              decoration: InputDecoration(
                hintText: 'name',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  // borderSide: const BorderSide(
                  //     //color: Colors.green,
                  //     ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  // borderSide: const BorderSide(
                  //   color: Colors.green,
                  // )
                ),
                suffixText: 'Username exist',
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.remove_red_eye,
                    color: Colors.green,
                  ),
                  onPressed: () {},
                ),
                prefixIcon: const Icon(
                  Icons.email,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: password,
              obscureText: true,
              obscuringCharacter: '#',
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  String uemail = emailText.text.toString();
                  String upass = password.text;
                  print('email:$uemail,pass:$upass');
                },
                child: Text('login'))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
