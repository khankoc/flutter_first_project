import 'package:flutter/material.dart';

class ListViewLayoutProblemleri extends StatelessWidget {
  const ListViewLayoutProblemleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              //scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.orange.shade200,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.orange.shade400,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.orange.shade600,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.orange.shade800,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.orange.shade100,
                ),
              ],
            ),
          ),
        
      
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(width: 4,color: Colors.red)
      ),
    );
  }
}