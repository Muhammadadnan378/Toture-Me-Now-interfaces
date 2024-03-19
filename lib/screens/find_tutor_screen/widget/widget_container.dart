import 'package:flutter/material.dart';

class FilterTuterWidget extends StatefulWidget {
  IconData icon;
  String title, container1, container2;

  FilterTuterWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.container1,
      required this.container2});

  @override
  State<FilterTuterWidget> createState() => _FilterTuterWidgetState();
}

class _FilterTuterWidgetState extends State<FilterTuterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Icon(widget.icon),
              const SizedBox(width: 30),
              Text(
                widget.title,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              )
            ],
          ),
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(30)),
                child: Text(widget.container1),
              ),
              const SizedBox(width: 30),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(30)),
                child: Text(widget.container2),
              )
            ],
          ),
          const SizedBox(height: 10)
        ],
      ),
    );
  }
}
