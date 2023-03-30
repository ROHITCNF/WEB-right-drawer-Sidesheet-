import 'package:flutter/material.dart';

class SideSheetContentGridView extends StatelessWidget {
  const SideSheetContentGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8),
      itemCount: 25,
      itemBuilder: (context, index) => Container(
        color: Colors.brown,
      ),
      //this only design the dabba  not the content
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
    // Column(
    //   children: [
    //     Expanded(
    //         flex: 2,
    //         child: Container(
    //           color: Colors.white,
    //         )),
    //     Expanded(
    //         child: Container(
    //       color: Colors.greenAccent,
    //     )),
    //     Expanded(
    //         child: Container(
    //       color: Colors.limeAccent,
    //     ))
    //   ],
    // );
  }
}
