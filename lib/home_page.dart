// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:musicplayer_ui/new_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: NewBox(child: Icon(Icons.arrow_back)),
                  ),
                  Text('P L A Y L I S T'),
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: NewBox(child: Icon(Icons.menu)),
                  ),
                ],
              ),
              NewBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('images/image.jpeg'),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kota The Friend',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Birdie',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 32,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('0:00'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('4:22')
                ],
              ),
              SizedBox(
                height: 25,
              ),
              NewBox(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: 0.5,
                  progressColor: Colors.green,
                  backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 80,
                child: Row(
                  children: [
                    Expanded(
                        child: NewBox(
                      child: Icon(Icons.skip_previous),
                    )),
                    Expanded(
                        flex: 2, child: NewBox(child: Icon(Icons.play_arrow))),
                    Expanded(
                        child: NewBox(
                      child: Icon(Icons.skip_next),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
