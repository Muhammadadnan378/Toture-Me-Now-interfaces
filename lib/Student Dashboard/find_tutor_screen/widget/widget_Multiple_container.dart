import 'package:flutter/material.dart';

class FilterMulltipleWidget extends StatefulWidget {
  IconData icon;
  String title;
  List listofWidgets;

  FilterMulltipleWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.listofWidgets});

  @override
  State<FilterMulltipleWidget> createState() => _FilterMulltipleWidgetState();
}

class _FilterMulltipleWidgetState extends State<FilterMulltipleWidget> {
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
          GridView.builder(
            itemCount: widget.listofWidgets.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Two items per row
              crossAxisSpacing: 10.0, // Spacing between items
              mainAxisSpacing: 10.0, // Spacing between rows
            ),
            itemBuilder: (context, index) {
              return Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30)),
                child: Text(widget.listofWidgets[index]),
              ); // Display name for each item
            },
          ),
          const SizedBox(height: 10)
        ],
      ),
    );
  }
}
