import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text("IJ Tracker"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        leading: const Icon(
          Icons.help,
          color: Colors.white,
        ),
        actions: [Icon(Icons.notifications), const Icon(Icons.settings)],
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/pic1.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Bereket Asnake",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.local_taxi,
                            color: Colors.blue,
                            size: 40,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              "B 2445 UJD | 701887875",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const Text(
                "Log out",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(height: 40),
          Container(
            child: const Text(
              "Online | battery : 90%",
              textAlign: TextAlign.center,
            ),
            width: double.infinity,
            color: Colors.blue,
          ),
          const SizedBox(height: 40),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
            children: List.generate(
              9,
              (index) => Container(
                color: Colors.grey[200],
                child: Column(
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: Colors.blue,
                      size: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Live Locations",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ));
}
