import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        onPressed: () {
          print("Click");
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: Text("StrawBerry"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.greenAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.back_hand), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_outlined),
            label: 'Home',
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  style: TextStyle(color: Colors.greenAccent, fontSize: 24),
                  "Strawberry Pavlova",
                ),
                Text(
                  "You control how a row or column aligns its children using the \nmainAxisAlignment and crossAxisAlignment properties. For a row, the main axis runs horizontally and the cross axis runs vertically. For a column, the main axis runs vertically and the cross axis runs horizontally.",
                ),
                SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.blueGrey),
                        Icon(Icons.star, color: Colors.blueGrey),
                        Icon(Icons.star, color: Colors.blueGrey),
                        Icon(Icons.star, color: Colors.blueGrey),
                        Icon(Icons.star, color: Colors.blueGrey),
                      ],
                    ),
                    Text("170 reviews"),
                  ],
                ),
                SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.thumb_up_alt_outlined,
                          color: Colors.greenAccent,
                        ),
                        Text("PREP:"),
                        SizedBox(height: 15.0),
                        Text("25 min"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.alarm, color: Colors.greenAccent),
                        Text("COOK:"),
                        SizedBox(height: 15.0),
                        Text("1 hr"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.fork_right, color: Colors.greenAccent),
                        Text("FEEDS:"),
                        SizedBox(height: 15.0),
                        Text("4-6"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
