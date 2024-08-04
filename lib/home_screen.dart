import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int count = 0;
  Counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 99, 126),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 29, 41),
        centerTitle: true,
        title: Text(
          ' فَسَبِّحْ بِحَمْدِ رَبِّكَ وَكُن مِّنَ السَّاجِدِينَ',
          style: TextStyle(
              fontSize: 29, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.50,
                  height: MediaQuery.of(context).size.height / 3.50,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                          topLeft: Radius.circular(60),
                        ),

                    color: Color.fromARGB(255, 75, 158, 190),
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 9),
                        blurRadius: 30,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 60, vertical: 45),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 255, 255, 255)),
                      child: Text(
                        count.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold,fontSize: 40),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Transform.translate(
                  offset: Offset(1, 9),
                  child: Container(
                    width: 200,
                    height: 190,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                          topLeft: Radius.circular(60),
                        ),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1, 9),
                              blurRadius: 20,
                              color: Colors.black),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () => Counter(),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 4, 84, 121),
                              shape: BoxShape.circle,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              maximumSize: Size(80, 80)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () => reset(),
                              child: Icon(Icons.wifi_protected_setup),
                              style: ElevatedButton.styleFrom(
                                  foregroundColor: Color.fromARGB(255, 199, 16, 16)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}