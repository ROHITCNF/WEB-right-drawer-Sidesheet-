import 'package:flutter/material.dart';

class SideSheetContentScreener extends StatelessWidget {
  const SideSheetContentScreener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Help',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.arrow_right_alt_sharp)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'What is screener',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 20),
            // ignore: prefer_const_constructors
            child: Text(
                style: TextStyle(color: Colors.grey),
                'A stock screener is a set of tools that allow investors to quickly sort through the myriad of available stocks and increasing exchange-traded funds according to the investor\'s own criteria.Screener is a stock analysis tool. It gives information to the investor about various details of the listed companies on the Indian Stock Exchange. In fact, the Website uses modern technology to research stocks.'),
          )
        ],
      ),
    );
  }
}
