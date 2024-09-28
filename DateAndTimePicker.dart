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
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Select Date',
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
                onPressed: () async {
                  DateTime? datePicked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2021),
                      lastDate: DateTime(2025));
                  if (datePicked != null) {
                    print(
                        'Date selected is :${datePicked.day}-${datePicked.month}-${datePicked.year}');
                  }
                  // var datePicked = showDatePicker(
                  //   context: context,
                  //   firstDate: DateTime(2020),
                  //   lastDate: DateTime(2025),
                  // );
                },
                child: const Text('Show')),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Select time',
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? PickedTime = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      initialEntryMode: TimePickerEntryMode.input);
                  if (PickedTime != null) {
                    print(
                      'Picked time is :${PickedTime.hour}:${PickedTime.minute}',
                    );
                  }
                },
                child: const Text('Show')),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
