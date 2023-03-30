import 'package:flutter/material.dart';

class SideSheetContentScriptDetails extends StatelessWidget {
  const SideSheetContentScriptDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_literals_to_create_immutables
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: const Text(
                    'Symbol Details',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(Icons.launch),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      child: const Icon(Icons.arrow_right_alt_sharp),
                      onTap: () => {Navigator.pop(context)},
                    )
                  ],
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.trending_up),
            title: const Text('Trend Chart'),
            trailing: const Icon(Icons.arrow_drop_down_sharp),
            onTap: () {
              // do something when the tile is tapped
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_moderator_sharp),
            title: const Text('Overview'),
            trailing: const Icon(Icons.arrow_drop_down_sharp),
            onTap: () {
              // do something when the tile is tapped
            },
          ),
          ListTile(
            leading: const Icon(Icons.data_thresholding),
            title: const Text('Market depth'),
            trailing: const Icon(Icons.arrow_drop_down_sharp),
            onTap: () {
              // do something when the tile is tapped
            },
          ),
          ListTile(
            leading: const Icon(Icons.check_box),
            title: const Text('Scores'),
            trailing: const Icon(Icons.arrow_drop_down_sharp),
            onTap: () {
              // do something when the tile is tapped
            },
          ),
          ListTile(
            leading: const Icon(Icons.analytics),
            title: const Text('Technical Analysis'),
            trailing: const Icon(Icons.arrow_drop_down_sharp),
            onTap: () {
              // do something when the tile is tapped
            },
          ),
          ListTile(
            leading: const Icon(Icons.foundation),
            title: const Text('Fundamentals'),
            trailing: const Icon(Icons.arrow_drop_down_sharp),
            onTap: () {
              // do something when the tile is tapped
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('About'),
            trailing: const Icon(Icons.arrow_drop_down_sharp),
            onTap: () {
              // do something when the tile is tapped
            },
          ),
          ListTile(
            leading: const Icon(Icons.stream_outlined),
            title: const Text('Peers'),
            trailing: const Icon(Icons.arrow_drop_down_sharp),
            onTap: () {
              // do something when the tile is tapped
            },
          ),
          ListTile(
            leading: const Icon(Icons.data_object_rounded),
            title: const Text('Option Chain'),
            trailing: const Icon(Icons.arrow_drop_down_sharp),
            onTap: () {
              // do something when the tile is tapped
            },
          ),
        ],
      ),
    );
  }
}
