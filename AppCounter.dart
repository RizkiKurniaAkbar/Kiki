import 'package:flutter/material.dart';



class AppCounter extends StatefulWidget {
  const AppCounter ({super.key});

  @override
  State<AppCounter> createState() => _AppCounterState();
}

int count = 0;

class _AppCounterState extends State <AppCounter> {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LEBARAN 2024"),
        ),
        body: Container(
          padding: EdgeInsets.all(55),
          child: Column(
            children: [
              Container(
                width: 1350,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count += 10;
                    });
                  },
                  child: Text ("Tambah")
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 250, 36, 8),
                borderRadius: BorderRadius.all(Radius.circular(100))
              ),
              width: double.infinity,
              height: 200,
              child: Center(
                child: Text(
                count.toString(),
                style: TextStyle(
                  fontSize: 100,
                  color: Color.fromARGB(255, 250, 251, 252)
                ),
              ),
            ),
          ),
          Container(
            width: 1350,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  count -=10;
                });
              },
              child: Text("Kurang"),
            ),
          ),
        ],
       ),
      )
    );
  }
}