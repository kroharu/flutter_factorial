import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

int find_factorial(var value) {
  int fact = 1;
  for(var i = 2; i<=value; i++)
  {
    fact *=i;
  }
  return fact;
}

class MyAppState extends State<MyApp> {
  String data = "";
  String data_buf = "";
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Факториал',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Факториал'),
          backgroundColor: Colors.blueAccent,
        ),
        body: new Container(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('ПОИСК ИДЕАЛЬНОГО ФАКТОРИАЛА',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                new Container(
                  width: 250.0,
                  margin: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: textController,
                    decoration: InputDecoration(hintText: 'Введите натуральное число'),
                  ),
                ),
                RaisedButton(
                  child: Text('Факториал'),
                  onPressed: () {
                    setState(() {
                      var value = int.parse(textController.text);
                      data_buf = '${data}\n${data_buf}';
                      data = '${textController.text}! = ${find_factorial(value)}';
                    });
                  },
                ),
                Text(
                  data,
                  style: TextStyle(
                      fontWeight :FontWeight.w900,
                      color: Colors.red
                  ),
                ),
                Expanded(
                  child: Text(
                    data_buf,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.black
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
